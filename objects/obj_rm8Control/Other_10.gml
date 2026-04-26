//TRANSLATE HEX TO ASCII

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_array = _cam_w/2 + 220;
y_array = _cam_h - 100;

x_input = x_array - 8;
y_input = y_array + 60;


//visual set up
puzzleView();
//change camera & view
setCamera();

//------------spawn puzzle------------
// spawn screen
instance_create_depth(x_array, y_array, -999, obj_asciiMsg);

// spawn user input screen
instance_create_depth(x_input, y_input, -999, obj_asciiInput);
