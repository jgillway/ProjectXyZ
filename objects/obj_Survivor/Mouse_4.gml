/// @description Insert description here
var data = ds_map_create();

data[? "_name"] = _name;
data[? "level"] = level;
data[? "xp"] = xp;
data[? "_health"] = _health;
data[? "damage"] = damage;
data[? "hunger"] = hunger;
data[? "fatigue"] = fatigue;
data[? "current_job"] = current_job;
data[? "job_priority_map"] = job_priority_map;

scr_survivor_menu(data);
