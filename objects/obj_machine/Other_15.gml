//SHIFT ROWS
//setting x & y for arrows
x_loc = obj_matrixBorder.x + sprite_get_width(spr_matrixBorder) + sprite_get_width(spr_rightArrow)/2;
y_loc = obj_matrixBorder.y + sprite_get_width(spr_rightArrow)/2;
//creating right arrows
for (var m = 0; m < 4; m++) { 
	instance_create_layer(x_loc, y_loc, "Instances", obj_rightArrow);
	y_loc += sprite_get_width(spr_matrixTile);
}
