// Inherit the parent event
event_inherited();

//object interaction text
initText();

// audio
var inst = audio_play_sound(snd_Aquarium_Interact, 0, false);
audio_sound_pitch(inst, random_range(0.7, 1.3));