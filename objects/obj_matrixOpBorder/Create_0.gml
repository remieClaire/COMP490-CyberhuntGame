obj_matrixOpBorder.xorArray = [ "a7", "3c", "5b", "82",
								"4f", "d1", "96", "2e",
								"73", "b8", "41", "cf",
								"9d", "6a", "e4", "15"];
obj_matrixOpBorder.invMultiplyArray = [ "2f", "e8", "94", "1a",
										"c3", "67", "b2", "5d",
										"8e", "41", "f6", "39",
										"7c", "d5", "06", "ba"];

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
			tile.hexValue = obj_matrixOpBorder.xorArray[index];
		}
		else if (global.puzzleSequence == 4) {
			tile.hexValue = obj_matrixOpBorder.invMultiplyArray[index];
			
		}
		
	}
}