if (obj_newgameconfirmation.visible == true) {
	exit;	
}

if (global.levels_completed == 0) {
	room_goto(rm_lvl1);
	//exit;	
} else {
	room_goto(global.target_room);
}