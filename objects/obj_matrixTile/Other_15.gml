correct = true;
//checkAnswer(correctShiftArr);
	
if (correct) {
	
	global.puzzleSequence = 6;
	correct = false;
	resetBoolean(); //reset matrix state
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_rightArrow);
	
	resetCamera();
	playerView();
}