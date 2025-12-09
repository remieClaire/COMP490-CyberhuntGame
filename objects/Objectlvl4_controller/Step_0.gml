if (show_input && !unlocked) {

    var key = keyboard_lastchar;

    if (key != "") {
        if (key != chr(vk_enter) && key != chr(vk_backspace)) {
            input_string += key;
        }
    }

    if (keyboard_check_pressed(vk_backspace) && string_length(input_string) > 0) {
        input_string = string_delete(input_string, string_length(input_string), 1);
    }

    if (keyboard_check_pressed(vk_enter)) {
        var combined = input_string;
        if (salt_found) combined += salt;

        var hash_guess = string_reverse(combined);

        if (hash_guess == target_hash) {
            unlocked = true;
            show_input = false;
        } else {
            show_message("Hash does not match.");
        }
    }
}
