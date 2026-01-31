if (currentPuzzle == 3) {
	correct = checkAnswer(correctXorArr);

	if (correct) { 
		show_debug_message("correct!");
		
		global.puzzleSequence = 4;
		correct = false; 
		resetBoolean();
		with (obj_machine) { 
			event_user(0);
		}
	}
	else {
		//show_debug_message("try again");
	}
}
