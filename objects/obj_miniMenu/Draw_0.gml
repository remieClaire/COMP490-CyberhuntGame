draw_sprite_stretched(spr_miniMenu, 0, x-margin, y-margin, fullWidth, fullHeight);

draw_set_colour(c_white);
draw_set_font(f_comicSans);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//draw menu options one at a time
var _desc = !(description == -1); //check if description exists
for (l = 0; l < (optionsCount + _desc); l++) { //loop through options +1 if description, +1 if footer
	draw_set_colour(c_white);
	
	//if there's a description, draw the text
	if (l == 0) && (_desc) {
		draw_text(x, y, description);
	}
	
	else {
		var _str = options[l-_desc][0]; //str equals option chosen
		if (hover == l - _desc || selected == l - _desc) { //if hover equals a specific option
			draw_set_colour(c_yellow); //change it's color to yellow
			_str = hovermarker+_str; //add * next to the option
		}
		draw_text(x, y + l * heightLine, _str); //redraw the text
	}
	
}