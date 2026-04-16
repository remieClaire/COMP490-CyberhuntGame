// check if mouse is pressed on knob
if (mouse_check_button_pressed(mb_left)) {
    if (point_distance(mouse_x, mouse_y, knob_x, slider_y) < 15) {
        dragging = true;
    }
}

// release
if (mouse_check_button_released(mb_left)) {
    dragging = false;
}

// dragging logic
if (dragging) {
    knob_x = clamp(mouse_x, slider_x1, slider_x2);
    
    // convert position → volume (0 to 1)
    volume = (knob_x - slider_x1) / (slider_x2 - slider_x1);
    
    // apply volume
    audio_sound_gain(global.current_music, volume, 0);
}