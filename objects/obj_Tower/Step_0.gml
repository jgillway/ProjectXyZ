/// @description Insert description here
if (_health <= 0) {
	show_debug_message("Tower " + string(name) + " is dead");
	instance_destroy();
}

// Initialize variables
var _closest_enemy = noone;
var _shortest_enemy_distance = -1;

// Find the closest enemy within attack range
with (obj_Enemy) {
    var _distance = point_distance(x, y, other.x, other.y);
    if (_shortest_enemy_distance == -1 || _distance < _shortest_enemy_distance) {
        _shortest_enemy_distance = _distance;
        _closest_enemy = obj_Enemy;
    }
}

// Check if there's a valid target within range
if (_closest_enemy != noone && _shortest_enemy_distance <= attack_range) {
    // Attack the target based on attack speed
    if (initial_attack) {	
        // Call the attack function
        scr_attack(_closest_enemy, damage);
        initial_attack = false;
		last_attack_timer = current_time;
    }
	else if (current_time - last_attack_timer >= attack_speed) {
		scr_attack(_closest_enemy, damage);
        last_attack_timer = current_time;
	}
}
else {
	initial_attack = true;
}
