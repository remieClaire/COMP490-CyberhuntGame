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
if (keyboard_check_pressed(vk_space) && userText != "") { 
	keyboard_string = "";
}

//Confirm and check player answers 
var correct = false;
//check puzzle 2/8
if (keyboard_check_pressed(vk_enter) && global.puzzleSequence != 3) { 
	
	correct = checkAnswer(correctInputArr); //check if user input is correct
	if (correct) { //if answer is correct
		global.puzzleSequence = 3;
		correct = false; //reset correct
		with (obj_machine) {
			event_user(3);
		}
	}
	else {
		show_debug_message("try again");
	}
	
}
/*
else if (keyboard_check_pressed(vk_enter) && !global.part3Solved) { //if puzzle part 3/8 is correct
	correct = checkAnswer(correctXorArr);
	if (correct) {
		global.part3Solved = true;
		show_debug_message("correct!");
		correct = false;
		with (obj_machine) { //call obj_machine to start Part 3
			event_user(0);
		}
	}
	else {
		show_debug_message("try again");
	}
	
}
else if (global.initiateMultMatrix) {
	for (var i = 0; i < array_length(blockArr); i++) {
		blockArr[i].value = correctMultArr[i];
	}
	global.part4Solved = true;
}
*/