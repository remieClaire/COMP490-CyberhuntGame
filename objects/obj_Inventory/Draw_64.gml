draw_set_colour(c_black);
draw_set_alpha(.75);
draw_rectangle(0, 0, room_width, room_height, false);
var spr_w = sprite_get_width(spr_noteHint);
var spr_h = sprite_get_height(spr_noteHint);
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


draw_set_alpha(1);
draw_sprite_ext(spr_objParent, 0, room_x + 100, room_y + 25, 16, 11, 0, c_red, 1);
	
for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
	var itemX = room_x + (i * spacing);
	var itemY = room_y - 150;
	var sprite = global.AllItems[# i, Item.Sprite];
	
	if (i >= menuWidth && i < menuWidth * 2) {
		itemX = room_x + ((i-3) * spacing);
		itemY = room_y + 20;
	}
		
	draw_sprite_ext(sprite, 0, itemX, itemY, scale, scale, 0, c_white, 1);
	
	var left   = itemX - 140;
	var right  = itemX + spr_w - 100;
	var top    = itemY + spr_h;
	var bottom = itemY + spr_h + 90;

	
	if (point_in_rectangle(mx, my, left, top, right, bottom)) {
		draw_set_colour(c_blue);
		draw_set_alpha(0.25);
		draw_rectangle(left, top, right, bottom, false);
		draw_set_colour(c_black);
		draw_set_alpha(1);
		
		if (mouse_check_button_pressed(mb_left) && visible == true) {
			obj_displaynotes.visible = true;
			obj_displaynotes.current_title = global.AllItems[# i, Item.title];
			obj_displaynotes.current_text = global.AllItems[# i, Item.Text];
		}
	}
}