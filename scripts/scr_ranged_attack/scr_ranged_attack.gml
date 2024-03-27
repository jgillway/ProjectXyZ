// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ranged_attack(_shooter, _target, _projectile, _damage, _speed){
	var _proj = instance_create_layer(_shooter.x, _shooter.y, "Instances", asset_get_index(_projectile));
	_proj.damage = _damage;
	_proj.target = _target;
	_proj.move_speed = _speed;
}