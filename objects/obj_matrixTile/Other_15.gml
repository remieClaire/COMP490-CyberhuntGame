correct = checkAnswer(correctShiftArr);
	
if (correct) {
	show_debug_message("correct!");
		
	global.puzzleSequence = 6;
	correct = false;
	with (obj_machine) { //call obj_machine to start Part 6
		event_user(0);
	}
}
else {
	show_debug_message("try again");
}