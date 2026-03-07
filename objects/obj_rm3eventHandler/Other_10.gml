//ADD KEY (FIRST XOR)
/*TO ADD:
*pull up key inserts on side
*player must drag and drop key in
*/

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0])

x_matrix = _cam_w + 45;
y_matrix = _cam_h + 5;

x_matrixOp = x_matrix + sprite_get_width(spr_matrixBorder) + 10;
y_matrixOp = y_matrix;


//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix);
instance_create_depth(x_matrixOp, y_matrixOp, -999, obj_matrixOpBorder);


//------------recreate progress------------
global.repopulate = true;
/*
if (!instance_exists(obj_matrixBorder)) {
	global.repopulate = true;
	x_matrix = x_center-150;
	y_matrix = y_center+150;
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
}
*/