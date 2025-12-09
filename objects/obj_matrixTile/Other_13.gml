correct = checkAnswer(correctXorArr);

if (correct) { //if answer is correct
	show_debug_message("correct!");
		
	global.puzzleSequence = 4;
	correct = false; //reset correct
	with (obj_machine) { //call obj_machine to start Part 4
		event_user(4);
	}
}
else {
	show_debug_message("try again");
}