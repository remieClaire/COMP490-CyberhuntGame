hover_m = 0;
selected = 0;
firstOptionChosen = false;

//set gui size so that box scales according to camera size
display_set_gui_size(
	camera_get_view_width(view_camera[0]), 
	camera_get_view_height(view_camera[0]));

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();