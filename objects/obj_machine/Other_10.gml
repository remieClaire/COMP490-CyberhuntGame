// Inherit the parent event
event_inherited();

//Puzzle 1/8
if (!global.part1Solved) {
	// call mini Menu script
	miniMenu(
		room_width/2,
		room_height/2, 
		[
			["Substitution"],
			["Add Final Key"],
			["Shift Rows"],
			["Mix Column"],
			["Add Key"],
		],
		"Reverse the encryption algorithm:"
	);
}
//Puzzle 2/8
//*change machine's menu screen
else {
	var x_center = (room_width/2)-(sprite_get_width(spr_matrixBorder)/2);
	var y_center = (room_height/2)-(sprite_get_height(spr_matrixBorder)/2);
	
	var x_matrix = x_center-150;
	var y_matrix = y_center+150;
	
	hideRoom();
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
}