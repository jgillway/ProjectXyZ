/// @description Insert description here
if (target != noone) {
    var _direction = point_direction(x, y, target.x, target.y);
    motion_set(_direction, move_speed);
}
else {
	instance_destroy();	
}
