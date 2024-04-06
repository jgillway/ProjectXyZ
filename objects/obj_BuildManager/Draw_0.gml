/// @description Insert description here
if(build_mode_enabled && build_object_name != "" && build_object_sprite_name != "") {
	// Get object and sprite
	var _obj = asset_get_index(build_object_name);
	var _sprite = asset_get_index(build_object_sprite_name);
	
	// Position
	var _sprite_width = sprite_get_width(_sprite);
	var _sprite_height = sprite_get_height(_sprite);
	var collisionX
	var _draw_x = mouse_x - _sprite_width / 2;
	var _draw_y = mouse_y - _sprite_height / 2;
	
	// Draw sprite
	if(place_meeting(_draw_x, _draw_y, obj_Building) || place_meeting(_draw_x, _draw_y, obj_Tower)) {
		draw_sprite_ext(_sprite, 0, _draw_x, _draw_y, 1, 1, 0, c_red, 0.5);
		show_debug_message("collision");
	}
	else {
		draw_sprite_ext(_sprite, 0, _draw_x, _draw_y, 1, 1, 0, c_green, 0.5);
	}
	
}

if(!build_mode_enabled) {
	draw_set_alpha(1);	
}
