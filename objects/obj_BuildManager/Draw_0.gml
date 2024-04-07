if (build_mode_enabled && build_object_name != "" && build_object_sprite_name != "") {
    // Get sprite
    var _sprite = asset_get_index(build_object_sprite_name);

    // Position
    var _sprite_width = sprite_get_width(_sprite);
    var _sprite_height = sprite_get_height(_sprite);
    var _draw_x = mouse_x - _sprite_width / 2;
    var _draw_y = mouse_y - _sprite_height / 2;
    
    // Check for collisions within the rectangle area
    collision_detected = (collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Building, false, false)
                             || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Tower, false, false)
							 || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_Enemy, false, false)
							 || collision_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, obj_EnemySpawner, false, false));

    
    draw_set_color(collision_detected ? c_red : c_green);
    // Draw rectangle for visualization
    draw_rectangle(_draw_x, _draw_y, _draw_x + _sprite_width, _draw_y + _sprite_height, true);
    draw_set_color(c_white); // Reset color for other drawings

    // Draw sprite with alpha based on collision detection
    draw_sprite_ext(_sprite, 0, _draw_x, _draw_y, 1, 1, 0, collision_detected ? c_red : c_green, 0.5);
}

if (!build_mode_enabled) {
    draw_set_alpha(1);
    draw_set_color(c_white);
}