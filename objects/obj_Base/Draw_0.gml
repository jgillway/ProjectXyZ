// Draw event of your base object (resource or obj_tree)
draw_self(); 

// Calculate the position for the rectangle to be centered on the sprite
var draw_x = x - (sprite_width / 2) + (sprite_width / 2) - ZOI;
var draw_y = y - (sprite_height / 2) + (sprite_height / 2) - ZOI;

// Calculate the width and height of the rectangle including the zone of influence
var rect_width = sprite_width + (2 * ZOI);
var rect_height = sprite_height + (2 * ZOI);

// Draw the outlined rectangle
draw_rectangle(draw_x, draw_y, draw_x + rect_width, draw_y + rect_height, true);
