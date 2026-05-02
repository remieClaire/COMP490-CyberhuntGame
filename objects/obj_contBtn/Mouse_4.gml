audio_play_sound(snd_Button_Press, 0, false);
if (global.levels_completed == 0) {
	//DELETE 
	room_goto(rm_levelSelect);
	//exit;	
/*
} else {
	room_goto(global.target_room);
}
*/
}