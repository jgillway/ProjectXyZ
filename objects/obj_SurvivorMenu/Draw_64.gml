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

// Job Priority buttons

// Gathering
draw_text(x + 10, y + 170, "Gathering: " + string(ds_map_find_value(job_priority_map, "Gathering")));

if (mouse_check_button_pressed(mb_left) && mouse_x >= x + 10 && mouse_x <= x + 150 && mouse_y > y + 170 && mouse_y < y + 190) {
    var current_gathering_value = ds_map_find_value(job_priority_map, "Gathering");

    if (current_gathering_value) {
		current_gathering_value = 0;
    }
    else {
		current_gathering_value = 1;
		obj_Survivor.job_timer = 10;
	}

	job_priority_map[? "Gathering"] = current_gathering_value;
}
