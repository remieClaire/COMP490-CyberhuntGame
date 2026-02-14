draw_set_colour(c_black);
draw_set_alpha(.75);
draw_rectangle(0, 0, room_width, room_height, false);

draw_set_alpha(1);
draw_sprite_ext(spr_objParent, 0, camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, 6, 4, 0, c_red, 1);
	
for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
	var itemX = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - 25 + (i * spacing);
	var itemY = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 3 - 30;
	var sprite = global.AllItems[# i, Item.Sprite];
	
	if (i >= menuWidth && i < menuWidth * 2) {
		itemX = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - 25 + ((i-3) * spacing);
		itemY = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - 30;
	}
		
	draw_sprite_ext(sprite, 0, itemX, itemY, scale, scale, 0, c_white, 1);
	
	if (point_in_rectangle(mouse_x, mouse_y, itemX - 48 * 3, itemY + 48, itemX - 48, itemY + 48 * 3)) {
		draw_set_colour(c_blue);
		draw_set_alpha(0.25);
		draw_rectangle(itemX - 48*3, itemY + 48, itemX - 48, itemY + 48 * 3, false);
		draw_set_colour(c_black);
		draw_set_alpha(1);
		
		if (mouse_check_button_pressed(mb_left) && visible == true) {
			obj_displaynotes.visible = true;
			obj_displaynotes.current_title = global.AllItems[# i, Item.title];
			obj_displaynotes.current_text = global.AllItems[# i, Item.Text];
		}
	}
}