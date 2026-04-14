correct = true;
//checkAnswer(correctSubArr);
	
if (correct) {
		
	global.puzzleSequence = 7;
	correct = false;
	resetBoolean();
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_subScreen);
	instance_destroy(obj_radioDial);
	
	resetCamera();
	playerView();
}