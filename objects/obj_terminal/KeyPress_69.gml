if (point_distance(obj_character.x, obj_character.y, x, y) < 40) {

    var correct_password = "ALIEN42";
    var input = get_string("Enter passphrase:", "");

    if (input == correct_password) {
        show_message("Hash verified. Data core unlocked.");

        var core = instance_nearest(x, y, obj_cube);
        if (core != noone) {
            core.unlock = true;
        }

    } else {
        show_message("Hash mismatch.");
    }
}