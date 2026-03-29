//ADD KEY (FIRST XOR)

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_matrix = _cam_w + 60;
y_matrix = _cam_h + 75;

x_key = x_matrix + 4;
y_key = y_matrix - sprite_get_height(spr_aes1Key);


//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix);
instance_create_depth(x_key, y_key, -999, obj_aes1Key);


//------------recreate progress------------
global.repopulate = true;