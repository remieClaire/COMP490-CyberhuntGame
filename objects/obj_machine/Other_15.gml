//SHIFT ROWS
//setting x & y for arrows
x_loc = obj_matrixBorder.x - sprite_get_width(spr_leftArrow);
y_loc = obj_matrixBorder.y + sprite_get_width(spr_leftArrow)/2;
//creating left arrows
for (var m = 0; m < 4; m++) { 
	instance_create_layer(x_loc, y_loc, "Instances", obj_leftArrow);
	y_loc += sprite_get_width(spr_matrixTile);
}
