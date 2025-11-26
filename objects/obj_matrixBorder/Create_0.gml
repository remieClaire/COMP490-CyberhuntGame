obj_matrixBorder.blockArray = [];

//Generate the tiles inside the border
for (var i = 0; i < 4; i++) {
	for (var j = 0; j < 4; j++) {
		instance_create_layer(
				x + (j*sprite_get_width(spr_matrixTile)), 
				y + (i*sprite_get_height(spr_matrixTile)), 
				"Instances", 
				obj_matrixTile
		);	
	}
}