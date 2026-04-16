draw_self();


//depending on number of clicks, display the correct index
for (var h=0; h<array_length(dial_arr); h++) {
	if (dial_arr[h].obj_id == dialClicked) {
		
		var _val = dial_arr[h].value;
		draw_sprite_ext(spr_subBytesDial, _val, x, y, 1, 1, 0, c_white, 1);
	}
}