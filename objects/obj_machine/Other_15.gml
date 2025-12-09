//SHIFT ROWS

//recreate instances if don't exist
//recreate machine screen
if (!instance_exists(obj_machineScreen)) {
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
}
//recreate the state matrix
if (!instance_exists(obj_matrixBorder)) {
	global.flag = true;
	x_matrix = x_center-150;
	y_matrix = y_center+150;
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
}


//setting x & y for arrows
x_loc = obj_matrixBorder.x + sprite_get_width(spr_matrixBorder) + sprite_get_width(spr_rightArrow)/2;
y_loc = obj_matrixBorder.y + sprite_get_width(spr_rightArrow)/2;
//creating right arrows
for (var m = 0; m < 4; m++) { 
	instance_create_layer(x_loc, y_loc, "Instances", obj_rightArrow);
	y_loc += sprite_get_width(spr_matrixTile);
}

//destroy operations instances
instance_destroy(obj_matrixOpBorder);
instance_destroy(obj_matrixOpTile);