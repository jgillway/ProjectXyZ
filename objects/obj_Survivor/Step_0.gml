/// @description Insert description here

// Job Priority
job_timer += delta_time / 1000000;

if(job_timer >= 10 && !job_in_progress) {
	// Review priority - pick job - pick activity
	if(ds_map_find_value(job_priority_map, "Gathering") == 1) {
		show_debug_message("working gathering");	
	}
	// Reset timer
	job_timer = 0;
}

