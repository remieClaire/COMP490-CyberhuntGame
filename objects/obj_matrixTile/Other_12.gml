correct = true
//checkAnswer(correctInputArr); //check if user input is correct

if (correct) { //if answer is correct
		
	global.puzzleSequence = 3;
	correct = false; //reset correct
	resetBoolean(); //reset matrix state
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_messageBox);
	
	resetCamera();
	normalView();
		
}
