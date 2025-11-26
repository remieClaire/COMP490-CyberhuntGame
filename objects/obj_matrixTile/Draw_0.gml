draw_self();

var center = sprite_get_width(spr_matrixTile)/2;
var middle = sprite_get_height(spr_matrixTile)/2;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (blockArr[hover].block_id == id) {
	draw_text(x+center, y+middle, keyboard_string + "|");
}
else { //draw instance's own value based on matrix
	for (var j=0; j<array_length(blockArr); j++) {
		if (blockArr[j].block_id == id && blockArr[j].value != 0) {
			draw_text(x+center, y+middle, blockArr[j].value);
			break;
		}
		
	}
	
}