/// @description Insert description here
_name = "Steve";
level = 1
xp = 0;
_health = 100;
max_health = 100;
damage = 10;
ranged = false;
attack_range = ranged ? 50 : 10;
move_speed = 5;
hunger = 100;
fatigue = 0;
current_job = "None";
job_priority_map = ds_map_create();
job_priority_map[? "stone"] = 2;
job_priority_map[? "wood"] = 0;