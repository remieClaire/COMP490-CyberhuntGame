//Block structure
block = {
	block_id: -1,
	value: ""
}

blockArr = obj_matrixBorder.blockArray;
block = new Block(id, 0);
array_push(blockArr, block);

//User input
hover = 0;
userChoice = 0;
keyboard_string = "";
userText = "";

correctInputArr = [ "75", "6e", "62", "65",
					"61", "74", "61", "62",
					"6c", "65", "6f", "75",
					"74", "6f", "6e", "39"]
					
correctXorArr = [ "d2", "52", "39", "e7",
					"2e", "a5", "f7", "4c",
					"1f", "dd", "2e", "ba",
					"e9", "05", "8a", "2c"]
					
correctMultArr = [ "04", "8f", "5a", "8b",
					"5e", "93", "02", "d9",
					"95", "35", "f8", "7c",
					"b6", "e1", "7e", "52"]

correctShiftArr = [ "04", "8f", "5a", "8b",
					"93", "02", "d9", "5e",
					"f8", "7c", "95", "35",
					"52", "b6", "e1", "7e"]
					
correctSubArr = [ "f2", "73", "be", "3d",
					"dc", "77", "35", "58",
					"41", "10", "2a", "96",
					"00", "4e", "f8", "f3"]
					
correctFinalXorArr = [ "d8", "94", "2f", "61",
						"6f", "3f", "3a", "8e",
						"3f", "d4", "3c", "1f",
						"a2", "15", "08", "ce"];