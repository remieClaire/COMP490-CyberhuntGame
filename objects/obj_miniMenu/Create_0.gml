hover_m = 0;
selected = 0;
firstOptionChosen = false;

cam_width = camera_get_view_width(view_camera[0]);
cam_height = camera_get_view_height(view_camera[0]);
//set gui size so that box scales according to camera size
display_set_gui_size(cam_width, cam_height);

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();