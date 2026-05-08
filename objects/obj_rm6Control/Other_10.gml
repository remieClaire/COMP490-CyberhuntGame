//SUBSTITUTION

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_matrix = _cam_w + 130;
y_matrix = _cam_h + 100;

x_screen = x_matrix - 4;
//+ sprite_get_width(spr_matrixBorder) + 10;
y_screen = y_matrix - sprite_get_height(spr_subScreen);

x_dial = x_screen + sprite_get_width(spr_subBytesDial) - 5;
y_dial = y_screen + sprite_get_height(spr_subScreen) - sprite_get_height(spr_subBytesDial) - 5;

//------------spawn puzzle------------
stateMatrix(x_matrix, y_matrix);
instance_create_depth(x_screen, y_screen, -998, obj_subScreen);

rad_dial1 = instance_create_depth(x_dial, y_dial, -999, obj_radioDial);
rad_dial2 = instance_create_depth(x_dial + 173, y_dial, -999, obj_radioDial);


//------------recreate progress------------
global.repopulate = true;