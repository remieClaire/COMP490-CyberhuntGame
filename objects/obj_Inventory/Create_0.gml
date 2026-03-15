visible = false;

global.AllItems = ds_grid_create(0, Item.Height);

menuWidth = 3;
menuHeight = 48;
spacing = 180;
scale = 4;

depth = -10;

var cam = view_camera[0];

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

room_x = cam_x + cam_w / 2;
room_y = cam_y + cam_h / 2;