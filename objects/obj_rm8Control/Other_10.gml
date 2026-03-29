//TRANSLATE HEX TO ASCII

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_array = _cam_w/2 - (sprite_get_width(spr_arrayBorder)/2) + 550;
y_array = _cam_h - 200;

x_input = _cam_w + 180;
y_input = y_array - 80;

//------------spawn puzzle------------
//creat state matrix so matrix tiles can be called
stateMatrix(0, 0);
obj_matrixBorder.visible = false;

instance_create_depth(x_array, y_array, -999, obj_arrayBorder);

//create input text box
instance_create_depth(x_input, y_input, -999, obj_aesInputBox);

//------------recreate progress------------
global.repopulate = true;