//Block structure
block = {
	block_id: -1,
	value: -1
}

blockArr = obj_matrixBorder.blockArray;
block = new Block(obj_matrixBorder.blockCount, 0);
show_debug_message(string(obj_matrixBorder.blockCount));
array_push(blockArr, block);

//User input
hover = 0;
userChoice = -1;
keyboard_string = "";
userText = "";