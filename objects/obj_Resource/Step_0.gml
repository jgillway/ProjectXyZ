/// @description Insert description here
if (quantity <= 0) {
		active = false;
		image_index = 1; // Sets sprite to inactive
		// Start respawn timer
		respawn_timer += delta_time / 1000000;
		
		// Check if respawn timer is equal to respawn rate
		if (respawn_timer >= respawn_rate) {
			// Reset resource
			active = true;
			quantity = max_quantity;
			image_index = 0; // Set sprite to active
			
			// Reset Timer
			respawn_timer = 0;
		}
}
