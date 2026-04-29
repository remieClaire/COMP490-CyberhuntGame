for (var p = 0; p < array_length(arrow_arr); p++) {
    if (arrow_arr[p].obj_id == id && arrow_arr[p].value != 0) {
		//get clicks stored
        var clicks = arrow_arr[p].value;
		
		global.initiateMultMatrix = false; //?
		//rotate array based on clicks
        rotaterightArr(obj_matrixTile.blockArr, clicks, p);
		//reset click value to 0
		arrow_arr[p].value = 0;
        break; 
    }
}