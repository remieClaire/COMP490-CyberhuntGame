if (response == encrypt_answer) {
	encrypted_message = decrypt_message;
}

if (response == decrypt_answer) {
	encrypted_message = "Welcome back ~~~~, Please Proceed";
	audio_play_sound(snd_Correct_Answer, 0, false);
	fadeToRoom(rm_levelSelect, 70, c_black);
}

response = keyboard_string;
keyboard_string = ""



