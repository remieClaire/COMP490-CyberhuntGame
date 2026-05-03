var width = display_get_gui_width();
var height = display_get_gui_height();

var btn_w = 100;
var btn_h = 40;
var btn_y = (height / 2) + 30;       // box_y + 130, where box_y = (sh - 200) / 2
var btn_yes_x = (width / 2) - btn_w - 20;
var btn_no_x  = (width / 2) + 20;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(mx, my, btn_yes_x, btn_y, btn_yes_x + btn_w, btn_y + btn_h) && visible == true && mouse_check_button_pressed(mb_left)) {
    file_delete("save.json");
	room_goto(rm_charSelect);
}

if (point_in_rectangle(mx, my, btn_no_x, btn_y, btn_no_x + btn_w, btn_y + btn_h) && visible == true && mouse_check_button_pressed(mb_left)) {
    visible = false;
}