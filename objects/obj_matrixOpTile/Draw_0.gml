draw_self();

var center = sprite_get_width(spr_matrixTile)/2;
var middle = sprite_get_height(spr_matrixTile)/2;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x+center, y+middle, hexValue);