// requires ds_map
function scr_drop_item(_drops){
	var total_chance = 0;
	
	// Calc total_chance
	var keys = ds_map_keys_to_array(_drops);
	for (var i = 0; i < array_length(keys); i++) {
		var key = keys[i];
		total_chance += ds_map_find_value(_drops, key);
	}
	
	// Generate random from total chance
	var random_number = irandom(total_chance);
	
	// Determine drop item
	var current_chance = 0;
	for (var j = 0; j < array_length(keys); j++) {
		var item = keys[j];
		current_chance += ds_map_find_value(_drops, item);
		
		// if the random is less then current select item
		if (random_number < current_chance) {
			return item;
		}
	}
}