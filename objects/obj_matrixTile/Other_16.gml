correct = checkAnswer(correctSubArr);
	
if (correct) {
	
	audio_play_sound(snd_Correct_Answer, 0, false);
		
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
else {
	audio_play_sound(snd_Wrong_Answer, 0, false);
}