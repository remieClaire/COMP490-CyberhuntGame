correct = true;
//checkAnswer(correctFinalXorArr);
	
if (correct) {
		
	global.puzzleSequence = 8;
	correct = false;
	resetBoolean();
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_aes2Key);
	
	
	resetCamera();
	playerView();

}