var width = display_get_gui_width();
var height = display_get_gui_height();
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


draw_set_font(f_comicSans)
draw_sprite_ext(current_sprite, 0, width / 2 - 40, height / 3, 5, 5, 0, c_white, 1);
draw_rectangle(width / 2 - 50, height / 3 - 10, width / 2 + (sprite_get_width(object_get_sprite(obj_character))*5) - 32, height / 3 + (sprite_get_width(object_get_sprite(obj_character))*5), true)

draw_text_ext(width / 2, height / 2, "Current Character", 25, 500);

draw_sprite_ext(spr_alienChar1, 0, width / 3, height / 3*2 - 40, 4, 4, 0, c_white, 1);
draw_rectangle(width / 3, height / 3*2 - 40,  width / 3 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, true)
draw_sprite_ext(spr_alienChar2, 0, width / 3*1.25, height / 3*2 - 40, 4, 4, 0, c_white, 1);
draw_rectangle(width / 3*1.25, height / 3*2 - 40,  width / 3*1.25 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, true)
draw_sprite_ext(spr_alienChar3, 0, width / 3*1.5, height / 3*2 - 40, 4, 4, 0, c_white, 1);
draw_rectangle(width / 3*1.5, height / 3*2 - 40,  width / 3*1.5 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, true)
draw_sprite_ext(spr_alienChar4, 0, width / 3*1.75, height / 3*2 - 40, 4, 4, 0, c_white, 1);
draw_rectangle(width / 3*1.75, height / 3*2 - 40,  width / 3*1.75 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, true)

if(point_in_rectangle(mx, my, width / 3, height / 3*2 - 40,  width / 3 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4)) {
	draw_set_colour(c_green);
	draw_set_alpha(0.25);
	draw_rectangle(width / 3, height / 3*2 - 40,  width / 3 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, false)
	draw_set_colour(c_white);
	draw_set_alpha(1);
	if (mouse_check_button_pressed(mb_left) && current_sprite != spr_alienChar1) {
		current_sprite = spr_alienChar1;
	}
}
if(point_in_rectangle(mx, my, width / 3*1.25, height / 3*2 - 40,  width / 3*1.25 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4)) {
	draw_set_colour(c_green);
	draw_set_alpha(0.25);
	draw_rectangle(width / 3*1.25, height / 3*2 - 40,  width / 3*1.25 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, false)
	draw_set_colour(c_white);
	draw_set_alpha(1);
	if (mouse_check_button_pressed(mb_left) && current_sprite != spr_alienChar2) {
		current_sprite = spr_alienChar2;
	}
}
if(point_in_rectangle(mx, my, width / 3*1.5, height / 3*2 - 40,  width / 3*1.5 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4)) {
	draw_set_colour(c_green);
	draw_set_alpha(0.25);
	draw_rectangle(width / 3*1.5, height / 3*2 - 40,  width / 3*1.5 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, false)
	draw_set_colour(c_white);
	draw_set_alpha(1);
	if (mouse_check_button_pressed(mb_left) && current_sprite != spr_alienChar3) {
		current_sprite = spr_alienChar3;
	}
}
if(point_in_rectangle(mx, my, width / 3*1.75, height / 3*2 - 40,  width / 3*1.75 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4)) {
	draw_set_colour(c_green);
	draw_set_alpha(0.25);
	draw_rectangle(width / 3*1.75, height / 3*2 - 40,  width / 3*1.75 + sprite_get_height(spr_alienChar1)*4, height / 3*2 - 40 + sprite_get_height(spr_alienChar1)*4, false)
	draw_set_colour(c_white);
	draw_set_alpha(1);
	if (mouse_check_button_pressed(mb_left) && current_sprite != spr_alienChar4) {
		current_sprite = spr_alienChar4;
	}
}