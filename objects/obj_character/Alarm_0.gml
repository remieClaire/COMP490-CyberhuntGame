if (room == rm_introScene_1) {
	exit;	
}
s_saveGame();

// reset alarm so it keeps looping
alarm[0] = room_speed * 30;
show_debug_message("game auto saved");