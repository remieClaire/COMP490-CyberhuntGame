// player input

// define input keys
pLeft = keyboard_check_pressed(vk_left);
pRight = keyboard_check_pressed(vk_right);
pUp = keyboard_check_pressed(vk_up);
pDown = keyboard_check_pressed(vk_down);

pOK = false;
pDelete = keyboard_check_pressed(vk_backspace);

//fix bug where 'A' is automatically added to currentName
if (!ready) {
    if (!keyboard_check(vk_enter)) {
        ready = true;
    }
    exit; // skip input until Enter is released
}

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
			audio_play_sound(snd_Correct_Answer, 0, false);
			fadeToRoom(rm_lvl2NEW, 70, c_black);
		}
		else{
			audio_play_sound(snd_Wrong_Answer, 0, false);
			currentName = "";
		}
	}
}
	