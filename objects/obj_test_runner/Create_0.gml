/// Testing Level 1 Button Transition

// Player must be in Level Select screen
if (room != rm_levelSelect) {
    room_goto(rm_levelSelect);
    exit;
}

// Identify level 1 button
var _btn = instance_find(obj_buttonLvl1, 0);

if (instance_exists(_btn)) {
    // Testing what happens when the player left clicks on level 1 button
    with (_btn) {
        event_perform(ev_mouse, ev_left_press);
    }
    
    // Check if the room changed correctly
    call_later(2, unit_frames, function() {
        if (room == rm_lvl1) {
            show_debug_message("TEST PASSED: Transition to Level 1 successful.");
        } else {
            show_debug_message("TEST FAILED: Room is " + room_get_name(room) + ", expected rm_lvl1.");
        }
    });
} else {
    show_debug_message("TEST FAILED: obj_buttonLvl1 not found in room.");
}




