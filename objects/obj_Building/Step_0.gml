/// @description Insert description here
if (_health <= 0) {
	show_debug_message("Building " + string(name) + " is dead");
	instance_destroy();
}