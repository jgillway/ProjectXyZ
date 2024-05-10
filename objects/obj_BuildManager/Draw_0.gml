if (build_mode_enabled && build_object_name != "" && build_object_sprite_name != "") {
	// Get Base
	var _base = asset_get_index("obj_Base");

	// Calculate the position for the rectangle for base ZOI
	var _base_rect_width = _base.sprite_width + (2 * _base.ZOI);
	var _base_rect_height = _base.sprite_height + (2 * _base.ZOI);
	var _base_rect_x = _base.x - (_base_rect_width / 2) + (_base_rect_width / 2) - _base.ZOI;
	var _base_rect_y = _base.y - (_base_rect_height / 2) + (_base_rect_height / 2) - _base.ZOI;

	
	// Draw the outlined rectangle for base ZOI
	draw_rectangle(_base_rect_x, _base_rect_y, _base_rect_x + _base_rect_width, _base_rect_y + _base_rect_height, true);

	// Get sprite
	var _sprite = asset_get_index(build_object_sprite_name);

	// Position
	var _sprite_width = sprite_get_width(_sprite);
	var _sprite_height = sprite_get_height(_sprite);
	var _draw_x = mouse_x - _sprite_width / 2;
	var _draw_y = mouse_y - _sprite_height / 2;

	// Draw building object rectangle for visualization
	draw_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, true);
	draw_set_color(c_white); // Reset color for other drawings

	// Check if the entire sprite's rectangle is within ZOI
	within_ZOI = rectangle_in_rectangle(
	    _draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height,
	    _base_rect_x, _base_rect_y, _base_rect_x + _base_rect_width, _base_rect_y + _base_rect_height
	);

	// Check for collisions with other objects
	collision_detected = (collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Building, false, false)
	                         || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Tower, false, false)
	                         || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Enemy, false, false)
	                         || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_EnemySpawner, false, false)
							 || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Resource, false, false)
							);

	// Set building object color based on collision and within ZOI
	draw_set_color(within_ZOI == 1 && !collision_detected ? c_green : c_red);

	// Draw building object sprite with alpha based on within ZOI and collision
	draw_sprite_ext(_sprite, 0, _draw_x, _draw_y, 1, 1, 0, within_ZOI == 1 && !collision_detected ? c_green : c_red, 0.5);
}
else {
	draw_set_alpha(1);
	draw_set_color(c_white);

}