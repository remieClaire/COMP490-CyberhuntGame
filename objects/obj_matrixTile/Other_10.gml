for (var h = 0; h < array_length(blockArr); h++) {
	var offset_x = h * sprite_get_width(spr_matrixTile);
	
	blockArr[h].block_id.x = obj_arrayBorder.x + offset_x;
	blockArr[h].block_id.y = obj_arrayBorder.y;
}