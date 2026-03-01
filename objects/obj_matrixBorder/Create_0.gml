blockArray = [];
rightArrowArray = [];

//Generate the tiles inside the border
for (var i = 0; i < 4; i++) {
	for (var j = 0; j < 4; j++) {
		instance_create_depth(
				x + (j*sprite_get_width(spr_matrixTile)), 
				y + (i*sprite_get_height(spr_matrixTile)), 
				-999, 
				obj_matrixTile
		);	
	}
}