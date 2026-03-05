accept_key = keyboard_check_pressed(vk_space);

var _camwidth = camera_get_view_x(view_camera[0]);
var _camheight = camera_get_view_y(view_camera[0]);
textbox_x = _camwidth + 20; 
textbox_y = _camheight + 110;

//------------setup------------
if setup == false {
	
	setup = true; //change value so setup only runs for one frame
	draw_set_font(global.font_textb);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through pages
	page_number = array_length(text);
	for(var p = 0; p < page_number; p++) {
		//find number of characters on each page and store in text_length array
		text_length[p] = string_length(text[p]);
		
		//get x position for textbox
			//no character (center)
			text_x_offset[p] = 44;
	}
	
}
	
//------------typing the text------------
if draw_char < text_length[page] {
	draw_char += text_spd
	
	draw_char = clamp(draw_char, 0, text_length[page]); //makes sure draw_char stays between 0 and text_length
}

//------------flip through pages------------
if accept_key {
	
	//if typing is done
	if draw_char == text_length[page] {
		//next page
		if page < page_number - 1 {
			page++;
			draw_char = 0;
		}
		//on last page 
		else {
			if (is_callable(callback)) callback(); //call function if preceding event
			instance_destroy();
		}
	}
	//if not done typing
	else {
		draw_char = text_length[page];
		
	}
	
}
	
//------------draw the textbox------------
textb_spr_w = sprite_get_width(textb_spr);
textb_spr_h = sprite_get_height(textb_spr);
//back of textbox
draw_sprite_ext(textb_spr, textb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/textb_spr_w, textbox_height/textb_spr_h, 0, c_white, 1);

//------------draw the text------------
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border,textbox_y + border, _drawtext, vert_line_sep, line_width);
