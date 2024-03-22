/// @description Insert description here
if (health <= 0) {
	show_debug_message("goblin killed from parent");	
}

// Create a list to store instances
var _targets = ds_list_create();

// Loop through instances of obj_Building
with (obj_Building) {
    ds_list_add(_targets, id);
}

// Loop through instances of obj_Towers
with (obj_Tower) {
    ds_list_add(_targets, id);
}

// Initialize variables for closest target and distance
var _closest_target = noone;
var _shortest_distance = -1;

// Loop through all targets in the list
for (var i = 0; i < ds_list_size(_targets); i++) {
    var _target = ds_list_find_value(_targets, i);
    var _distance = point_distance(x, y, _target.x, _target.y);
    
    if (_shortest_distance == -1 || _distance < _shortest_distance) {
        _shortest_distance = _distance;
        _closest_target = _target; // Assign the entire object
    }
}

// Move towards the closest target
if (_closest_target != noone) {
	var _distance_to_target = point_distance(x, y, _closest_target.x, _closest_target.y);
	 
	if (_distance_to_target > attack_range) {
	    // Use _closest_target directly for further operations
	    var _direction = point_direction(x, y, _closest_target.x, _closest_target.y);
	
		// Use mp_potential_step to move towards the closest target while avoiding obstacles
		mp_potential_step(_closest_target.x, _closest_target.y, move_speed, true);
		attacking = false;
		initial_attack = true;
	}
	else {
		attacking = true;
	}
}

if (attacking) {
	if (initial_attack) {
		show_debug_message("parent initial attacking! " + string(current_time));
		show_debug_message(string(name));
		initial_attack = false;
	}
	else if (current_time - last_attack_timer >= attack_speed) {
		show_debug_message("parent object attacking! " + string(current_time));
		show_debug_message(string(attack_speed));
		last_attack_timer = current_time;
	}
}