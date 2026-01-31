XORKey2 = ["2A","E7", "91","5C","B3","48","0F","D6","7E","C4","16","89","A2","B5","F0","3D"];
invMultiplyArray = ["0E","0B","0D","09","09","0E","0B","0D","0D","09","0E","0B","0B","0D","09","0E"];
XORKey1 = ["A7","3C","5B","82","4F","D1","96","2E","73","B8","41","CF","9D","6A","E4","15"];

//Generate the tiles inside the border
for (var i = 0; i < 4; i++) {
	for (var j = 0; j < 4; j++) {
		var tile = instance_create_layer(
						x + (j*sprite_get_width(spr_matrixTile)), 
						y + (i*sprite_get_height(spr_matrixTile)), 
						"Instances", 
						obj_matrixOpTile
					);
		var index = i*4+j;
		if (global.puzzleSequence == 3) {
			tile.hexValue = XORKey2[index];
		}
		else if (global.puzzleSequence == 4) {
			tile.hexValue = invMultiplyArray[index];

		}
		else if (global.puzzleSequence == 7) {
			tile.hexValue = XORKey1[index];
		}
		
	}
}