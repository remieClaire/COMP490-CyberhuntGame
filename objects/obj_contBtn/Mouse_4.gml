audio_play_sound(snd_Button_Press, 0, false);

if (obj_newgameconfirmation.visible == true) {
	exit;	
}

show_debug_message(global.levels_completed)
if (global.levels_completed == 0) {
	room_goto(rm_lvl1);	

} else {
	room_goto(global.target_room);
}
