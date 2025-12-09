salt = "S4LT123";
correct_password = "treasure";
target_hash = string_reverse(correct_password + salt);

show_input = false;
input_string = "";
unlocked = false;
salt_found = false;
