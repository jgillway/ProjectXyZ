/// @description Insert description here
if(build_mode_enabled && (build_object_name == "" || build_object_sprite_name == "")) {
	build_mode_enabled = false;
	build_object_name = "";
	build_object_sprite_name = "";
	collision_detected = false;
}

if (build_mode_enabled) {
	if(mouse_check_button_pressed(mb_right)) {
		build_mode_enabled = false;
		build_object_name = "";
		build_object_sprite_name = "";
		collision_detected = false;
	}
	
	if(mouse_check_button_pressed(mb_left)) {
		if(!collision_detected) {
			// Get object and sprite
			var _object = asset_get_index(build_object_name);
		    var _sprite = asset_get_index(build_object_sprite_name);

		    // Position
		    var _sprite_width = sprite_get_width(_sprite);
		    var _sprite_height = sprite_get_height(_sprite);
		    var _object_x = mouse_x - _sprite_width / 2;
		    var _object_y = mouse_y - _sprite_height / 2;
			
			// Create the object at mouse position
            var inst = instance_create_layer(_object_x, _object_y, "Instances", _object);
			build_mode_enabled = false;
			build_object_name = "";
			build_object_sprite_name = "";
			collision_detected = false;
		}
		else {
			show_debug_message("Unable to place object here");
		}
	}
}


