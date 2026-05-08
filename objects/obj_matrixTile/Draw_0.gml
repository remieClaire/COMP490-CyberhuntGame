draw_self();

var center = sprite_get_width(spr_matrixTile)/2;
var middle = sprite_get_height(spr_matrixTile)/2;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


if (hover != -1 && blockArr[hover].block_id == id) {
	// set user text input color
	draw_set_colour(c_black);
	draw_text(x+center, y+middle, keyboard_string + "|");
}
else { //draw instance's own value based on matrix
	for (var j=0; j<array_length(blockArr); j++) {
		if (blockArr[j].block_id == id && blockArr[j].value != "") {
			if (blockArr[j].boolean == false) { //if value is wrong, mark red
				draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_red, 1);
				draw_text(x+center, y+middle, blockArr[j].value);
			}
			else {
				// draw normally
				draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, c_white, 1); 
				draw_text(x+center, y+middle, blockArr[j].value);
			}
			break;
		}
		
	}
	
}