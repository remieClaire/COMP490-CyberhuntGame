response = keyboard_string;

keyboard_string = "";

if (response == encrypt_answer) {
	encrypted_message = decrypt_message;
}

if (response == decrypt_answer) {
	encrypted_message = "Welcome back ~~~~, Please Proceed";
}