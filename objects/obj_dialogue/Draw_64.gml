//Box variables
var _dx = 0;
var _dy = gui_h * 0.7; //70% of weight down vertically
var _boxw = gui_w; 
//height of box minus y position (i.e. box will cover remaining 30% of area vertically)
var _boxh = gui_h - _dy; 

//draw the box
draw_sprite_stretched(spr_dialogueBox, 0, _dx, _dy, _boxw, _boxh);

//Text setup
draw_set_font(f_comicSans);
_dx += 16;
_dy += 16;

//draw the text
draw_text_ext(_dx, _dy, draw_msg, -1, _boxw - _dx * 2);