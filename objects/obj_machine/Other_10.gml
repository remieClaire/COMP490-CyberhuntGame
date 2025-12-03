// Inherit the parent event
event_inherited();

//Puzzle ?/8 (trigger based on which step the player is currently on)
if (global.puzzleSequence != 1) {
	hideRoom();
}
event_user(global.puzzleSequence);

/*
//Puzzle 5/8
if (global.part4Solved) {
	for (var i = 0; i < array_length(obj_matrixBorder.blockArray); i++) {
		show_debug_message(string(obj_matrixBorder.blockArray[i]));
	}
	/*
	instance_create_layer(obj_matrixBorder.x-32 , obj_matrixBorder.y+32, "Instances", obj_upArrow);
	show_debug_message("instance created"); 
	
}
*/