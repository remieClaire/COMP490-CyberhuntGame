// ObjLvl4_Controller  -  Create

// 1) Puzzle data
password = "PEARL";      // you can change this word
salt     = "123";        // and this (secret salt)

// 2) Simple hash function: sums character codes and mods by 10000
function make_hash(_text) {
    var total = 0;
    for (var i = 1; i <= string_length(_text); i++) {
        total += ord(string_char_at(_text, i));
    }
    return string(total mod 10000);
}

// 3) What hash the chest expects
correct_hash = make_hash(password + salt);

// 4) State for the puzzle
chest_unlocked = false;
message        = "";
player_input   = "";
input_mode     = false;  //are we currently typing?
