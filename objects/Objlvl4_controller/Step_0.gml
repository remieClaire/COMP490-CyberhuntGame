// ObjLvl4_Controller  -  Step

// --- Find the player and the CLOSED chest ---
// ObjLvl4_Controller  -  Step

// --- Find the player and the CLOSED chest ---
var p = instance_find(obj_character, 0);
var c = instance_find(obj_treasureChestclosed, 0);

if (p != noone && c != noone) {
    // How far is the player from the chest?
    var dist = point_distance(p.x, p.y, c.x, c.y);

    // Start typing if:
    //  - not already typing
    //  - chest not unlocked yet
    //  - player is close
    //  - they press E
    if (!input_mode && !chest_unlocked && dist < 64 && keyboard_check_pressed(ord("E"))) {
        input_mode       = true;
        keyboard_string  = "";     // clear what was typed before
        player_input     = "";
        message          = "Type your guess and press Enter.";
    }
}

// --- While in input mode, collect text ---
if (input_mode) {
    // GameMaker automatically builds keyboard_string with what you type
    player_input = keyboard_string;

    // When Enter is pressed, check the answer
    if (keyboard_check_pressed(vk_enter)) {
        input_mode = false;

        // Make a hash from what the player typed + the same salt
        var guess_hash = make_hash(player_input + salt);

        if (guess_hash == correct_hash) {
            chest_unlocked = true;
            message = "Correct! The chest opens.";

            // Swap the chest object to the OPEN version, if you have one
            with (instance_find(obj_treasureChestclosed, 0)) {
                instance_change(obj_treasureChestopen, true);
            }
        } else {
            message = "Wrong password. Try again.";
        }

        // Clear typing for next time
        keyboard_string = "";
        player_input    = "";
    }
}
