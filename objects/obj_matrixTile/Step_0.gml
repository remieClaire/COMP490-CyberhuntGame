hover += (keyboard_check_pressed(vk_down)*4) - (keyboard_check_pressed(vk_up)*4); //down: +1, up: -1
hover += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left); //right: +1, left: -1

//decide what to do when hover is below 0 or over the maximum
var max_index = array_length(blockArr) - 1;
if (hover > max_index) hover = max_index;
if (hover < 0) hover = 0;

if (hover >= 0 && hover < array_length(blockArr)) {
	userChoice = hover;
}

//handling user input
if (keyboard_string != "") { //store string if input not blank
	userText = keyboard_string;
	blockArr[userChoice].value = userText;
}

//clear input only if space pressed & input not already blank
if (keyboard_check_pressed(vk_shift) && userText != "") { 
	keyboard_string = "";
}


//Confirm and check player answers 
var submit = keyboard_check_pressed(vk_enter);
var correct = false;
//check puzzle 2/8
if (submit && global.puzzleSequence == 2) { 
	event_user(2);
}

else if (submit && global.puzzleSequence == 3) { //if puzzle part 3/8 is correct
	correct = checkAnswer(correctXorArr);
	if (correct) {
		show_debug_message("correct!");
		
		global.puzzleSequence = 4;
		correct = false;
		with (obj_machine) { //call obj_machine to start Part 4
			event_user(4);
		}
	}
	else {
		show_debug_message("try again");
	}
}
else if (submit && global.puzzleSequence == 5) {
	correct = checkAnswer(correctShiftArr);
	
	if (correct) {
		show_debug_message("correct!");
		
		global.puzzleSequence = 6;
		correct = false;
		with (obj_machine) { //call obj_machine to start Part 6
			event_user(6);
		}
	}
	else {
		show_debug_message("try again");
	}
}
else if (submit && global.puzzleSequence == 6) {
	correct = checkAnswer(correctSubArr);
	
	if (correct) {
		show_debug_message("correct!");
		
		global.puzzleSequence = 7;
		correct = false;
		with (obj_machine) { //call obj_machine to start Part 7
			event_user(7);
		}
	}
	else {
		show_debug_message("try again");
	}
}
else if (submit && global.puzzleSequence == 7) {
	correct = checkAnswer(correctFinalXorArr);
	
	if (correct) {
		show_debug_message("correct!");
		
		global.puzzleSequence = 8;
		correct = false;
		with (obj_machine) { //call obj_machine to start Part 8
			event_user(8);
		}
	}
	else {
		show_debug_message("try again");
	}
}



if (global.initiateMultMatrix) {
	for (var i = 0; i < array_length(correctMultArr); i++) {
		blockArr[i].value = correctMultArr[i];
	}
	global.puzzleSequence = 5;
}