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


// player input

// define input keys
pLeft = keyboard_check_pressed(vk_left);
pRight = keyboard_check_pressed(vk_right);
pUp = keyboard_check_pressed(vk_up);
pDown = keyboard_check_pressed(vk_down);

pOK = false;
pDelete = keyboard_check_pressed(vk_backspace);
pEnter = keyboard_check_pressed(vk_enter);

// define OK key
if (gridX == 5 && gridY == 4) {
	pOK = true;
}
else {
	pOK = false;
}


//move cursor
if (pLeft) {
	if ((gridX - 1) < 0) {
		gridX = (xLetters - 1);
	}
	else {
		gridX--;
	}
}
else if (pRight) {
	if ((gridX + 1) >= xLetters) {
		gridX = 0;
	}
	else {
		gridX++;
	}
}
else if (pUp) {
	if ((gridY - 1) < 0) {
		gridY = (yLetters - 1);
	}
	else {
		gridY--;
	}
}
else if (pDown) {
	if ((gridY + 1) >= yLetters) {
		gridY = 0;
	}
	else {
		gridY++;
	}
}
else if (pEnter && a_letters[gridX, gridY] != "OK") {
	//add the letter to the string 
	currentName += a_letters[gridX, gridY];
}
else if (pDelete) {
	//check that there is at least one letter in the name
	letterCount = string_length(currentName);
	//if here's at least one letter, its safe to delete
	if (letterCount >= 1) {
		currentName = string_delete(currentName, letterCount, 1);
	}
}
//this should be the submit button
else if (pOK) {
	if (pEnter) {
		if (currentName == answer) {
			fadeToRoom(rm_lvl3, 70, c_black);
		}
	}
}
	
	/*
	var newLetter = letterString[gridX, gridY];
	
	// add letter to name (?)
	if (newLetter != "OK") {
		currentName += newLetter;
	}
	*/


//show_debug_message("gridX: " + string(gridX))
//show_debug_message("gridY: " + string(gridY))