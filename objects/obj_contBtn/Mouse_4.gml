if (global.levels_completed == 0) {
	//DELETE 
	room_goto(rm_lvl2NEW);
	//exit;	
} else {
	room_goto(global.target_room);
}