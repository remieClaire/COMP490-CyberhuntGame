//SUBSTITUTION

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_matrix = _cam_w + 45;
y_matrix = _cam_h - 45;

x_dial = x_matrix;
y_dial = y_matrix;

//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix);

rad_dial1 = instance_create_depth(x_dial, y_dial, -999, obj_radioDial);
rad_dial2 = instance_create_depth(x_dial + 15, y_dial, -999, obj_radioDial);

//------------recreate progress------------
global.repopulate = true;


//creating inv. sub. matrix
/*
//bring up machine screen 
instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
*/
