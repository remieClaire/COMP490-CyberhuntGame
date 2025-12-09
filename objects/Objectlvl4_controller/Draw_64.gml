draw_set_color(c_white);

draw_text(20, 20, "Target Hash:");
draw_text(20, 40, target_hash);

if (salt_found) {
    draw_text(20, 70, "Salt found: " + salt);
} else {
    draw_text(20, 70, "Salt: ???");
}

if (show_input && !unlocked) {
    draw_rectangle(20, 100, 400, 150, false);
    draw_text(30, 110, "Enter Password:");
    draw_text(30, 130, input_string);
}

if (unlocked) {
    draw_text(20, 180, "Chest unlocked!");
}
