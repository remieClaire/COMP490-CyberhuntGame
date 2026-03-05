//INPUT VALUES 

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0])

x_matrix = _cam_w + 45;
y_matrix = _cam_h - 45;

x_msgBox = _cam_w + (sprite_get_width(spr_messageBox)) + 70;
y_msgBox = y_matrix;
	
//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix, x_msgBox, y_msgBox);