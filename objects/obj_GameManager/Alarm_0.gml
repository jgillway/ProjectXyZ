// @Day/Night Alarm
is_day = !is_day;

if (is_day) {
    // alarm[0] = game_get_speed(gamespeed_fps) * 60 * 5;
	alarm[0] = game_get_speed(gamespeed_fps) * 60 * .25;
}
else {
    // alarm[0] = game_get_speed(gamespeed_fps) * 60 * 2;
	alarm[0] = game_get_speed(gamespeed_fps) * 60 * .25;
}