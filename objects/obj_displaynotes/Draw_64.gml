draw_sprite_ext(spr_objParent, 0, 200, 400, scalex, 9, 0, c_red, 1);

draw_set_colour(c_lime)

draw_text_ext(sprite_get_width(spr_objParent)*2.5, 
			  sprite_get_height(spr_objParent)+50,
			  current_title, 
			  15, 
			  textWidth + 10);
			  
draw_text_ext(sprite_get_width(spr_objParent), 
			  sprite_get_height(spr_objParent)+100,
			  current_text,
			  25, 
			  textWidth + 5);
			  
if (obj_Inventory.visible == false) {
	visible = false;
}