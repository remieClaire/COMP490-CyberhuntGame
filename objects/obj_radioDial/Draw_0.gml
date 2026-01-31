draw_self();

//depending on number of clicks, rotate the sprite
for (var h=0; h<array_length(dialArr); h++) {
	if (dialArr[h].obj_id == dialClicked) {
		var degree = 22.5*dialArr[h].value;
		draw_sprite_ext(spr_subBytesDial, -1, x, y, 1, 1, degree, c_white, 1);
	}
}

