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

correctInputArr = ["00","6A","41","16","A2","B3","DA","0F","EC","DA","BD","76","6B","96","CC","83"]
					
correctXorArr = ["2A","8D","D0","4A","11","FB","D5","D9","92","1E","AB","FF","C9","23","3C","BE"]
					
correctMultArr = ["66","20","B2","F8","06","B0","39","31","36","62","72","E8","FF","E6","7B","EC"]

correctShiftArr = ["66","20","B2","F8","31","06","B0","39","72","E8","36","62","E6","7B","EC","FF"]
					
correctSubArr = ["D3","54","3E","E1","2E","A5","FC","5B","1E","C8","24","AB","F5","03","83","7D"]
					
correctFinalXorArr = ["74","68","65","63","61","74","6A","75","6D","70","65","64","68","69","67","68"]