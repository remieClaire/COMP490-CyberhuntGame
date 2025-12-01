if (!instance_exists(self)) exit;

//Box variables
var _dx = 0;
var _dy = gui_h * 0.7; //70% of weight down vertically
var _boxw = gui_w; 
//height of box minus y position (i.e. box will cover remaining 30% of area vertically)
var _boxh = gui_h - _dy; 

//draw the box
draw_sprite_stretched(spr_dialogueBox, 0, _dx, _dy, _boxw, _boxh);

//Text setup
draw_set_colour(c_white);
draw_set_font(f_comicSans);

_dx += 16;

//draw menu options one at a time
var _desc = !(description == -1); //check if description exists
for (l = 0; l < (optionsCount + _desc); l++) { //loop through options +1 if description
	draw_set_colour(c_white);
	
	//if there's a description, draw the text
	if (l == 0) && (_desc) {
		draw_text(_dx, _dy, description);
	}
	
	else {
		var _str = options[l-_desc][0]; //str equals option chosen
		if (hover == l - _desc || selected == l - _desc) { //if hover equals a specific option
			draw_set_colour(c_yellow); //change it's color to yellow
			_str = hovermarker+_str; //add * next to the option
		}
		draw_text(_dx, _dy + l * heightLine, _str); //redraw the text
	}
	
}