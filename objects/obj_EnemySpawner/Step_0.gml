/// @description Insert description here
if (!obj_GameManager.is_day && night_spawner) {
	// Convert microseconds to seconds
	spawn_timer += delta_time / 1000000; 
	
	// Check if the spawn timer hits the spawn interaval 
	if (spawn_timer >= spawn_interaval) {
		// spawn the enemy
		instance_create_layer(x, y, "Instances", obj_Goblin);
		
		// Reset the timer
		spawn_timer = 0;
	}
}
else if (!night_spawner) {
	// Convert microseconds to seconds
	spawn_timer += delta_time / 1000000; 
	
	// Check if the spawn timer hits the spawn interaval 
	if (spawn_timer >= spawn_interaval) {
		// spawn the enemy
		instance_create_layer(x, y, "Instances", obj_Goblin);
		
		// Reset the timer
		spawn_timer = 0;
	}
}
else {
	spawn_timer = 0;	
}
