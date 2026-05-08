// Inherit the parent event
event_inherited();

initText();

audio_play_sound(snd_Computer_Interact, 0, false);
//audio_sound_pitch(inst, random_range(0.7, 1.3));
show_debug_message(string(instance_number(obj_character)))