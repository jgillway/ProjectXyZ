/// @description Insert description here
var _menu = instance_find(obj_SurvivorMenu, 0);

_menu.visible = true;	
	
variable_instance_set(_menu, "_name", _name);
variable_instance_set(_menu, "level", level);
variable_instance_set(_menu, "xp", xp);
variable_instance_set(_menu, "_health", _health);
variable_instance_set(_menu, "damage", damage);
variable_instance_set(_menu, "hunger", hunger);
variable_instance_set(_menu, "fatigue", fatigue);
variable_instance_set(_menu, "current_job", current_job);
variable_instance_set(_menu, "job_priority_map", job_priority_map);

