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

var _offset = 0;

foreach(key, value, job_priority_map) {
	
	//lets do some bullshit here with job prio add a + - button and somehow add a listner 
	
	_offset += 20;
}