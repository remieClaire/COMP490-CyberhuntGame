audio_play_sound(snd_Button_Press, 0, false);
if (global.levels_completed < 3) {
	exit;	
} else {
	room_goto(rm_lvl3);	
}
