//if on last step of puzzle, exit matrix tile so it can't be edited anymore
/*
if (global.puzzleSequence == 8) {
	hover = -1;
	exit;
}
*/

//------------setup------------
hover += (keyboard_check_pressed(vk_down)*4) - (keyboard_check_pressed(vk_up)*4); //down: +1, up: -1
hover += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left); //right: +1, left: -1

//decide what to do when hover is below 0 or over the maximum
var max_index = array_length(blockArr) - 1;
if (hover > max_index) hover = max_index;
if (hover < 0) hover = 0;

if (hover >= 0 && hover < array_length(blockArr)) {
	userChoice = hover;
}

//------------user input------------
if (keyboard_string != "") { //store string if input not blank
	userText = keyboard_string;
	blockArr[userChoice].value = userText;
}

//clear input only if space pressed & input not already blank
var confirm = keyboard_check_pressed(vk_shift);
if (confirm && userText != "") { 
	keyboard_string = "";
}

//------------events------------
var submit = keyboard_check_pressed(vk_enter);
var correct = false;
//check player answers upon submission
if (submit) {
	switch(global.puzzleSequence) {
		case 2:
			event_user(2);
			break;
		case 3:
			event_user(3);
			break;
		case 5:
			event_user(5);
			break;
		case 6:
			event_user(6);
			break;
		case 7:
			event_user(7);
			break;
		default:
			show_debug_message("error");
			break;
	}
}

//------------misc. cases------------
//for repopulating matrices if player picks up from the middle of a sequence
if (global.flag && global.puzzleSequence == 3) {
	recreateMatrix(correctInputArr);
}
else if (global.flag && global.puzzleSequence == 5) {
	recreateMatrix(correctMultArr);
}
else if (global.flag && global.puzzleSequence == 6) {
	recreateMatrix(correctShiftArr);
}
else if (global.flag && global.puzzleSequence == 7) {
	recreateMatrix(correctSubArr);
}

//for multiply matrix phase of puzzle
if (global.initiateMultMatrix) {
	for (var i = 0; i < array_length(correctMultArr); i++) {
		blockArr[i].value = correctMultArr[i];
	}
	global.puzzleSequence = 5;
}