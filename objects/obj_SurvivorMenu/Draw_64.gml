/// @description Insert description here
draw_set_color(c_white);

// Draw survivor's details
draw_text(x + 10, y + 10, "Name: " + string(_name));
draw_text(x + 10, y + 30, "Health: " + string(_health));
draw_text(x + 10, y + 50, "Level: " + string(level));
draw_text(x + 10, y + 70, "XP: " + string(xp));
draw_text(x + 10, y + 90, "Hunger: " + string(hunger));
draw_text(x + 10, y + 110, "Fatigue: " + string(fatigue));
draw_text(x + 10, y + 130, "Damage: " + string(damage));
draw_text(x + 10, y + 150, "current_job: " + string(current_job));

// Job Priorities
draw_text(x + 10, y + 170, "Gathering: " + string(ds_map_find_value(job_priority_map, "Gathering")));

// Buttons
var _button_width = 15;
draw_rectangle(x + 150, y + 172, x + 150 + _button_width, y + 172 + _button_width, true);
draw_text(x + 153, y + 169, "+");
draw_rectangle(x + 180, y + 172, x + 180 + _button_width, y + 172 + _button_width, true);
draw_text(x + 183, y + 169, "-");
