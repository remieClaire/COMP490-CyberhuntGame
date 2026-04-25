if (instance_exists(obj_matrixBorder)) {
	global.leavePuzzle = true;
	
	// get out of puzzle camera view
	resetCamera();
	playerView()
}