//INPUT VALUES 
/*
if (instance_exists(obj_matrixBorder)) {
    exit;
}

//setting x & y positions of matrix
*/
var _cam_w = camera_get_view_width(view_camera[0]);
var _cam_h = camera_get_view_height(view_camera[0])

x_matrix = _cam_w * 0.8;
y_matrix = _cam_h * 0.6;

x_msgBox = _cam_w + (sprite_get_width(spr_messageBox)/2);
y_msgBox = y_matrix;
	
//spawn puzzle components
stateMatrix(x_matrix, y_matrix, x_msgBox, y_msgBox);