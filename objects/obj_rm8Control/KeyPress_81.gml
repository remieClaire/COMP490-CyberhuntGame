if (instance_exists(obj_asciiInput)) {
	global.leavePuzzle = true;
	
	// get out of puzzle camera view
	resetCamera();
	playerView();
}