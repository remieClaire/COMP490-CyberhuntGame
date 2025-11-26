obj_matrixBorder.blockCount = -1;
obj_matrixBorder.blockArray = [];

//Generate the tiles inside the border
for (var i = 0; i < 4; i++) {
	for (var j = 0; j < 4; j++) {
		obj_matrixBorder.blockCount = instance_create_layer(
							x + (i*sprite_get_width(spr_matrixTile)), 
							y + (j*sprite_get_height(spr_matrixTile)), 
							"Instances", 
							obj_matrixTile);
			
	}
}