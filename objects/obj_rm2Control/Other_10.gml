//INPUT VALUES 

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0])

x_matrix = _cam_w + 50;
y_matrix = _cam_h + 25;

x_msgBox = x_matrix + 4;
y_msgBox = y_matrix - sprite_get_height(spr_messageBox);
	
//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix);
instance_create_depth(x_msgBox, y_msgBox, -998, obj_messageBox);