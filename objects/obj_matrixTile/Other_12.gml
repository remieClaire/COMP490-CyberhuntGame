correct = checkAnswer(correctInputArr); //check if user input is correct

if (correct) { //if answer is correct
	show_debug_message("correct!");
		
	global.puzzleSequence = 3;
	correct = false; //reset correct
	with (obj_machine) { //call obj_machine to start Part 3
		event_user(3);
	}
}
else {
	show_debug_message("try again");
}