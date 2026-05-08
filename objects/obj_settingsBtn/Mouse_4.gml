event_inherited();

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 5A26D227
/// @DnDArgument : "room" "rm_settings"
/// @DnDSaveInfo : "room" "rm_settings"
room_goto(rm_settings);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 25F991DF
/// @DnDArgument : "soundid" "snd_Button_Press"
/// @DnDSaveInfo : "soundid" "snd_Button_Press"
audio_play_sound(snd_Button_Press, 0, 0, 1.0, undefined, 1.0);
if (obj_newgameconfirmation.visible == true) {
	exit;	
}

room_goto(rm_settings);
