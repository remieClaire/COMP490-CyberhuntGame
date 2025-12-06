for (var p = 0; p < array_length(left_arr); p++) {
    if (left_arr[p].obj_id == id && left_arr[p].value != 0) {
        var clicks = left_arr[p].value;
        rotateleftArr(obj_matrixTile.blockArr, clicks, p);
		left_arr[p].value = 0;
        break; 
    }
}