// Inherit the parent event
event_inherited();
audio_play_sound(snd_Hologram_Interact, 0, false);

//initText();

//------------setup------------
var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

//just change these values :)
x_input = _cam_x + (_cam_w / 2) - 78;
y_input = _cam_y + (_cam_h / 2) - 74;

instance_create_depth(x_input, y_input, -999, obj_userInputBox);
