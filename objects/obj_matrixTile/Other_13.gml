correct = true
//checkAnswer(correctXorArr);

if (correct) { 
		
	global.puzzleSequence = 4;
	correct = false; //reset correct
	resetBoolean(); //reset matrix state
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_matrixOpBorder);
	instance_destroy(obj_matrixOpTile);
	
	resetCamera();
	playerView();	
}