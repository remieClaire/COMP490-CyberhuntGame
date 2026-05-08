correct = checkAnswer(correctShiftArr);
	
if (correct) {
	
	audio_play_sound(snd_Correct_Answer, 0, false);
	
	global.puzzleSequence = 6;
	correct = false;
	resetBoolean(); //reset matrix state
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_rightArrow);
	
	resetCamera();
	playerView();
}
else {
	audio_play_sound(snd_Wrong_Answer, 0, false);
}