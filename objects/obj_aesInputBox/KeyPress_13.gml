userText = keyboard_string;
userAnswer[0] = userText;
keyboard_string = "";

if (userAnswer[0] == answerString) {
	show_debug_message("correct!");
	room_goto(rm_lvl3);
}
else {
	show_debug_message("try again");
}