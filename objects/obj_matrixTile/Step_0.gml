hover += (keyboard_check_pressed(vk_down)*4) - (keyboard_check_pressed(vk_up)*4); //down: +1, up: -1
hover += keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left); //right: +1, left: -1

//decide what to do when hover is below 0 or over the maximum
if (hover > 15) hover = 15;
if (hover < 0) hover = 0;

if (hover >= 0 && hover < array_length(blockArr)) {
	userChoice = hover;
}


//handling user input
if (keyboard_string != "") { //store string if input not blank
	userText = keyboard_string;
	blockArr[userChoice].value = userText;
}

//clear input only if enter pressed & input not already blank
if (keyboard_check_pressed(vk_enter) && userText != "") { 
	keyboard_string = "";
}

for (var h=0; h<array_length(blockArr); h++) {
	show_debug_message(string(blockArr[h]));
}