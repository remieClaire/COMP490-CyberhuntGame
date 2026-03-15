var width = display_get_gui_width();
var height = display_get_gui_height();

draw_rectangle_colour(10, 10, width / 3, height - 10, c_gray, c_gray, c_gray, c_gray, false)

draw_set_colour(c_lime)


draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text_ext(width / 6, 
			  60,
			  current_title, 
			  15, 
			  textWidth + 10);
			 
draw_text_ext(width / 6, 
			  height / 2,
			  current_text,
			  25, 
			  textWidth + 5);
			  
if (obj_Inventory.visible == false) {
	visible = false;
}