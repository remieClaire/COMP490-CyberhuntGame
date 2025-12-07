for (var p = 0; p < array_length(right_arr); p++) {
    if (right_arr[p].obj_id == id && right_arr[p].value != 0) {
        var clicks = right_arr[p].value;
		global.initiateMultMatrix = false;
        rotaterightArr(obj_matrixTile.blockArr, clicks, p);
		right_arr[p].value = 0;
        break; 
    }
}