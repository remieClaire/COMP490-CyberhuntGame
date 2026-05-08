if (response == encrypt_answer) {
	encrypted_message = decrypt_message;
} else {
	//audio_play_sound(snd_Wrong_Answer, 10, false);
}

if (response == decrypt_answer) {
	encrypted_message = "Welcome back Doctor Adleman, Please Proceed";
	audio_play_sound(snd_Correct_Answer, 0, false);
	fadeToRoom(rm_levelSelect, 70, c_black);
}

response = keyboard_string;
keyboard_string = ""



