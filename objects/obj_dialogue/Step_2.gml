if (current_msg < 0) exit; //if dialogue hasn't started yet, exit

var _str = messages[current_msg].msg; //get current message from array
if (current_char < string_length(_str)) { //if current character shown is less than length of entire string
	
	current_char += char_speed * (1 + keyboard_check(input_key)); //speed up chars if space pressed
	draw_msg = string_copy(_str, 0, current_char); //cutting out characters to draw
}
else if (keyboard_check_pressed(input_key)) { //check if dialogue is done
	current_msg++; //go to next message in array
	if (current_msg >= array_length(messages)) { //if no more messages in array
		instance_destroy();
	}
	else {
		current_char = 0; //get next message, start at first char
	}
}