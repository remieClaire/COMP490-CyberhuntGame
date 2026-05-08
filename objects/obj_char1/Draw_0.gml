// Inherit the parent event
//event_inherited();

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _spr_x = x - 48;
var _spr_y = y - 48;

//if player is not hovering over the sprite
if (!hover) {
	//leave alpha as 1
	draw_sprite_ext(spr_alienChar1, 0, _spr_x, _spr_y, 6, 6, 0, c_white, 1);
}
else {
	//reduce alpha
	draw_sprite_ext(spr_alienChar1, 0, _spr_x, _spr_y, 6, 6, 0, c_white, 0.6);
}
