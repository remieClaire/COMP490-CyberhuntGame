// Inherit the parent event
event_inherited();

initText();

var inst = audio_play_sound(snd_Plant_Interact, 0, false);
audio_sound_pitch(inst, random_range(0.9, 1.1));