for (var p = 0; p < array_length(left_arr); p++) {
    if (left_arr[p].arrow_id == id && left_arr[p].value != 0) {
        var clicks = left_arr[p].value;
        rotateleftArr(obj_matrixBorder.blockArray, clicks, p);
		left_arr[p].value = 0;
        break; 
    }
}