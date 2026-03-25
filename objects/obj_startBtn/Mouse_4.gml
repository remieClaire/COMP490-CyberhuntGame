global.levels_completed = 1;

if (s_loadGame() == true) {
	show_debug_message("save file detected.");
	if (file_exists("save.json")) {
        file_delete("save.json");
		show_debug_message("save file deleted");
    }
} else {
	show_debug_message("no save file detected.");
}

room_goto(rm_lvl1);