/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 792E531C
event_inherited();
audio_play_sound(snd_Button_Press, 0, false);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 5A26D227
/// @DnDArgument : "room" "rm_introScene_1"
/// @DnDSaveInfo : "room" "rm_introScene_1"
room_goto(rm_charSelect);