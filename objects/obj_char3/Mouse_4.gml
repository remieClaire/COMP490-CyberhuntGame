event_inherited();
audio_play_sound(snd_Button_Press, 0, false);

//set char sprite
global.currentcharasprite = spr_alienChar3;
//go to start room
fadeToRoom(rm_introScene_1, 60, c_black)