// Requires object shooting, target, projectile spr name, damage value and projectile speed 
function scr_ranged_attack(_shooter, _target, _projectile, _speed, _damage){
	var _proj = instance_create_layer(_shooter.x, _shooter.y, "Instances", asset_get_index(_projectile));
	_proj.damage = _damage;
	_proj.target = _target;
	_proj.move_speed = _speed;
}