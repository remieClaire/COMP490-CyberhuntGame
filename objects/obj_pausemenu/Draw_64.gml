var _prev_colour = draw_get_colour();
var _prev_alpha  = draw_get_alpha();
var _prev_halign = draw_get_halign();
var _prev_valign = draw_get_valign();
var _prev_font   = draw_get_font();

if (instance_exists(obj_pausemenu)) {
	draw_set_colour(c_black);
	draw_set_alpha(.75);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	draw_set_alpha(1);
	
	width = display_get_gui_width();
	height = display_get_gui_height();
	
	draw_set_colour(c_green)
	draw_rectangle(width/3, height/3 - 100, (width/3)*2, height/3, false);
	draw_rectangle(width/3, height/2 - 50, (width/3)*2, height/2 + 50, false);
	draw_rectangle(width/3, (height/3)*2, (width/3)*2, (height/3)*2 + 100, false);
	
	//**edits made by remie: for aligning text------------------------------
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle)
	
	draw_set_font(f_pauseSilver);
	draw_set_alpha(0.25);
	
	//**changed widths to width/2 now that text is aligned
	draw_text_ext_transformed_colour(width/2, height/3 - 90, "Return", 10, 100, 4, 2, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_ext_transformed_colour(width/2, height/2 - 45, "settings", 10, 100, 4, 2, 0, c_black, c_black, c_black, c_black, 1);
	draw_text_ext_transformed_colour(width/2, height/3*2 + 10, "Quit", 10, 100, 4, 2, 0, c_black, c_black, c_black, c_black, 1);
	//-----------------------------------------------------------------------
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), width/3, height/3 - 100, (width/3)*2, height/3)) {
		draw_set_colour(c_blue);
		draw_rectangle(width/3, height/3 - 100, (width/3)*2, height/3, false);
		if (mouse_check_button_pressed(mb_left) && visible == true) {
			visible = false;
			obj_character.my_speed = 1;
			global.item_currently_active = "game";
			draw_set_colour(c_white);
			draw_set_alpha(1);
		}
	}
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), width/3, height/2 - 50, (width/3)*2, height/2 + 50)) {
		draw_set_colour(c_blue);
		draw_rectangle(width/3, height/2 - 50, (width/3)*2, height/2 + 50, false);
		if (mouse_check_button_pressed(mb_left) && visible == true) {
			draw_set_colour(c_white);
			draw_set_alpha(1);
			global.last_room = room;
			room_goto(rm_settings);
		}
	}
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), width/3, (height/3)*2, (width/3)*2, (height/3)*2 + 100)) {
		draw_set_colour(c_blue);
		draw_rectangle(width/3, (height/3)*2, (width/3)*2, (height/3)*2 + 100, false);
		if (mouse_check_button_pressed(mb_left) && visible == true) {
			draw_set_colour(c_white);
			draw_set_alpha(1);
			global.last_room = room;
			room_goto(rm_levelSelect);
		}
	}
}

draw_set_colour(_prev_colour);
draw_set_alpha(_prev_alpha);
draw_set_halign(_prev_halign);
draw_set_valign(_prev_valign);
draw_set_font(_prev_font);
