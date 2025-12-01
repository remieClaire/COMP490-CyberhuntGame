// Inherit the parent event
event_inherited();

//Puzzle 1/8
event_user(1);


//Puzzle 3/8
//*pull up key inserts on side
//*player must drag and drop key in
/*
if (global.part2Solved) {
	var x_matrix = x_center+150;
	var y_matrix = y_center+150;
	
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixOpBorder);
}

//Puzzle 4/8
//*prompt player to look at notebook
//*show room & have player interact with machine again
//*kicks machine -> machine changes
//*interact with machine -> answer is given
if (global.part3Solved) {
//Change to inverse multiplication matrix
	var x_matrix = x_center+150;
	var y_matrix = y_center+150;

	instance_destroy(obj_matrixOpBorder);
	instance_destroy(obj_matrixOpTile);
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixOpBorder);
	
//Fill in answers to matrix multiplication (player will not have to do this)
	x_matrix = x_center-150;
	y_matrix = y_center+150;
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
	global.initiateMultMatrix = true;
	
}

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