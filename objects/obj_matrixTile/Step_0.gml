//------------exit puzzle------------
switch (global.puzzleSequence) {
	case 2:
		destroy = true;
		break;
	case 3: 
		destroy = true;
		break;
	case 5: 
		destroy = true;
		break;
	case 6:
		destroy = true;
		break;
	case 7:
		destroy = true;
		break;
	case 8: 
		destroy = true;
		break;
}

if (destroy && global.leavePuzzle) {
	// destroy self
	instance_destroy();
}

//------------setup------------
hover += (keyboard_check_pressed(vk_down)*4) - (keyboard_check_pressed(vk_up)*4); //down: +1, up: -1
hover += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left); //right: +1, left: -1

//decide what to do when hover is below 0 or over the maximum
var max_index = array_length(blockArr) - 1;
var min_index = 0;
if (global.puzzleSequence == 2) {
	min_index = 8;
}
else if (global.puzzleSequence == 3 || global.puzzleSequence == 7) {
	min_index = 12;
}
else if (global.puzzleSequence == 5) {
	min_index = 15;
}

if (hover > max_index) hover = max_index;
if (hover < min_index) hover = min_index;

if (hover >= min_index && hover < array_length(blockArr)) {
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
//fill in half of array for entry and key steps
switch (global.puzzleSequence) {
	case 2: 
		for (var i = 0; i < array_length(blockArr) / 2; i++) {
			blockArr[i].value = correctInputArr[i];
		}
		break;
	case 3:
		for (var i = 0; i < 12; i++) {
			blockArr[i].value = correctXorArr[i];
		}
		break;
	case 7:
		for (var i = 0; i < 12; i++) {
			blockArr[i].value = correctFinalXorArr[i];
		}
		break;	
}

//player submission variables
var submit = keyboard_check_pressed(vk_enter);
var correct = false;
var filled = true;

//check first if all boxes are filled
for (var c = 0; c < array_length(blockArr); c++) {
	if (blockArr[c].value == "") {
		filled = false; 
	}
	
}

//check player answers upon submission
if (submit && filled) {
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
/*
else if (submit && !filled) {
	// play sound
	audio_play_sound(snd_invalidChoice, 10, false);
}
*/

//------------misc. cases------------
//for repopulating matrices if player picks up from the middle of a sequence
if (global.repopulate && global.puzzleSequence == 3) {
	repopulateMatrix(correctInputArr);
}
else if (global.repopulate && global.puzzleSequence == 5) {
	repopulateMatrix(correctMultArr);
}
else if (global.repopulate && global.puzzleSequence == 6) {
	repopulateMatrix(correctShiftArr);
}
else if (global.repopulate && global.puzzleSequence == 7) {
	repopulateMatrix(correctSubArr);
}