draw_set_colour(c_black);
draw_set_alpha(.75);
draw_rectangle(0, 0, room_width, room_height, false);

// get measurements of notes
var spr_w = sprite_get_width(spr_noteHint);
var spr_h = sprite_get_height(spr_noteHint);

// get x and y positions of mouse
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// get gui width and height
var width = display_get_gui_width();
var height = display_get_gui_height();


draw_set_alpha(1);

// draw rectangle to place notes in
draw_rectangle_colour(width / 2, height / 4, width /4 * 3.5, height / 4 * 3, c_gray, c_gray, c_gray, c_gray, false);
	
// for each item stored in the grid
for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
	
	// x pos depends on width of gui and position in ds_grid
	var itemX = width / 2 + 160 + (i * spacing);
	// y pos depends on height of gui
	var itemY = height / 4 - 25;
	
	// sprite equal to sprite attribute of item
	var sprite = global.AllItems[# i, Item.Sprite];
	
	// if item is greater than menu width AND item is greater than menu width times 2
	if (i >= menuWidth && i < menuWidth * 2) {
		// (guessing) move to next line?
		itemX = width / 2 + 160 + ((i-3) * spacing);
		itemY = height / 4 * 2 - 25 + 20;
	}
	
	// draw the sprite based on the item
	draw_sprite_ext(sprite, 0, itemX, itemY, scale, scale, 0, c_white, 1);
	
	// set point of contact box
	var left   = itemX - 140;
	var right  = itemX + spr_w - 100;
	var top    = itemY + spr_h;
	var bottom = itemY + spr_h + 90;

	// if mouse in point of contact box
	if (point_in_rectangle(mx, my, left, top, right, bottom)) {
		
		// draw a rectangle around the item
		draw_set_colour(c_blue);
		draw_set_alpha(0.25);
		draw_rectangle(left, top, right, bottom, false);
		draw_set_colour(c_black);
		draw_set_alpha(1);
		
		// and if clicked
		if (mouse_check_button_pressed(mb_left) && visible == true) {
			// set note content visibility to true
			obj_displaynotes.visible = true;
			obj_displaynotes.current_title = global.AllItems[# i, Item.title];
			obj_displaynotes.current_text = global.AllItems[# i, Item.Text];
		}
	}
}

// reset color settings
draw_set_colour(c_white);