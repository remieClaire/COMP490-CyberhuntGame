var w = sprite_get_width(spr_machineScreen)*6;
var h = sprite_get_height(spr_machineScreen)*4;
draw_sprite_stretched(
					spr_machineScreen, 0, 
					((room_width/2) - (w/2)), 
					((room_height/2) - (h/2))-150, 
					w, h);

if (global.puzzleSequence == 6) {
	draw_text(x, y-(h/2), obj_radioDial.subByte);
}
