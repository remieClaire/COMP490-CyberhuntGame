correct = checkAnswer(correctFinalXorArr);
	
if (correct) {
	
	audio_play_sound(snd_Correct_Answer, 0, false);
		
	global.puzzleSequence = 8;
	correct = false;
	resetBoolean();
	
	instance_destroy(obj_matrixBorder);
	instance_destroy(obj_matrixTile);
	instance_destroy(obj_aes2Key);
	
	
	resetCamera();
	playerView();

}
else {
	audio_play_sound(snd_Wrong_Answer, 0, false);
}