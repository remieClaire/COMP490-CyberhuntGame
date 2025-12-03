mouseClick(left_arr, obj_leftArrow);

if (keyboard_check_pressed(vk_enter)) {
	for (var p=0; p < array_length(left_arr); p++) {
		var clicks = left_arr[p].value;
		show_debug_message("clicks: " + string(clicks));
		rotateleftArr(obj_matrixBorder.blockArray, clicks, p*4);
	}
}