// ObjLvl4_Controller  -  Draw GUI

draw_set_halign(fa_center);
draw_set_valign(fa_top);

// --- Show the hash above the chest in BLACK ---
draw_set_color(c_black);
var c = instance_find(obj_treasureChestclosed, 0);
if (c != noone) {
    draw_text(c.x, c.y - 40, "Hash: " + string(correct_hash));
}

// --- Show any message (hint / result) in WHITE ---
draw_set_color(c_white);
draw_text(room_width / 2, 40, message);

// --- If we are currently typing, show the player's guess under the message ---
if (input_mode) {
    draw_text(room_width / 2, 70, "Your guess: " + player_input);
}

