//SHIFT ROWS

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_matrix = _cam_w + 45;
y_matrix = _cam_h - 45;

x_arrow = x_matrix + sprite_get_width(spr_matrixBorder) + sprite_get_width(spr_rightArrow)/2;
y_arrow = y_matrix + sprite_get_width(spr_rightArrow)/2;

//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix);

for (var m = 0; m < 4; m++) { 
	instance_create_depth(x_arrow, y_arrow, -999, obj_rightArrow);
	y_arrow += sprite_get_width(spr_matrixTile);
}

//------------recreate progress------------
global.repopulate = true;