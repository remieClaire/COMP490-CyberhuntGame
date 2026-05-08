// Inherit the parent event
event_inherited();

//audio
var inst = audio_play_sound(snd_Hologram_Interact, 0, false);
audio_sound_pitch(inst, random_range(0.7, 1.3));

// call the sequence manager script to trigger puzzle
if (room == rm_lvl2_1) {
	seqManager();
}
else {
	initText();
}
