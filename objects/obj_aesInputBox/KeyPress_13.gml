userText = keyboard_string;
userAnswer[0] = userText;
keyboard_string = "";

if (userAnswer[0] == answerString) {
	room_goto(rm_lvl3);
}