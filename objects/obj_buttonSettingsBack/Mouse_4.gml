audio_sound_gain(global.current_music, global.volume_level, 0);
audio_play_sound(snd_Button_Press, 0, false);

room_goto(global.last_room);