function music(_track)
{
	if (global.current_music != _track)
	{
		if (global.music_id != -1)
		{
			audio_stop_sound(global.music_id);
		}
		global.music_id = audio_play_sound(_track, 10, true);
		global.current_music = _track;
		audio_sound_gain(global.current_music, global.volume_level, 0);
	}
}