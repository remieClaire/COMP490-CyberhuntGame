hover_m += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up); //down: +1, up: -1


//decide what to do when hover_m is below 0 or over the maximum
if (hover_m > optionsCount-1) hover_m = 0; //wraps around to first option if greater than options
if (hover_m < 0) hover_m = optionsCount-1; //wraps around to last option if less than 0

//keep track of player choices
var selected2;
if (keyboard_check_pressed(vk_shift)) {
	if (!firstOptionChosen) {
		selected = hover_m; //get first option
		firstOptionChosen = true;
	
	}
	else {
		selected2 = hover_m; //get second option
		switchOrder(selected, selected2); //pass to switchOrder function in mini menu script
		firstOptionChosen = false;
	}

}

//Confirm & check player choices
var correct = true;
if (keyboard_check_pressed(vk_enter)) {
	var correct_options =
	[
		["Add Key"],
		["Mix Column"],
		["Shift Rows"],
		["Substitution"],
		["Add Final Key"]
	];
	
	
	for (j=0; j<optionsCount; j++) {
		if (options[j][0] != correct_options[j][0]) {
			correct = false;
			break;
		}
	}
	
	if (correct) {
		description = "Correct!"
		alarm[0] = 100;
		global.puzzleSequence = 2;

		with (obj_machine) {
			event_user(0);
		}
	}
	else {
		description = "Try again"
	}
		
}