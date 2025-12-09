correct = checkAnswer(correctSubArr);
	
if (correct) {
	show_debug_message("correct!");
		
	global.puzzleSequence = 7;
	correct = false;
	with (obj_machine) { //call obj_machine to start Part 7
		event_user(0);
	}
}
else {
	show_debug_message("try again");
}