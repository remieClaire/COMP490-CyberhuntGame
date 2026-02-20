if (unlock && !collected) {
    collected = true;
    image_alpha = 0.2;
    show_message("Human war data retrieved. Mission complete!");
    room_goto(rm_levelSelect); // change to your next room name
}
else if (!unlock) {
    show_message("Encrypted. Terminal verification required.");
}