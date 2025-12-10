password = "PEARL";
salt = "123";
correct_hash = make_hash(password + salt);

chest_unlocked = false;
message = "";
player_input = "";
function make_hash(_text) {
    var total = 0;
    for (var i = 1; i <= string_length(_text); i++) {
        total += ord(string_char_at(_text, i));
    }
    return string(total mod 10000);
}

