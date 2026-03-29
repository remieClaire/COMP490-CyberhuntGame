global.item_currently_active = "game"; 
sprite_index = global.currentcharasprite;

if (s_loadGame()) {
	obj_character.x = global.save_data.player_x;
	obj_character.y = global.save_data.player_y;
}

forbidden_rooms = [rm_mainMenu, rm_settings, rm_charSelect, rm_levelSelect];

//prevent character from spawning in any menu rooms
for (var c = 0; c < array_length(forbidden_rooms); c++) {
	if (room == forbidden_rooms[c]) {
		instance_destroy();
	}
}

// Intro sequence: run function for cinematic
if (room == rm_introScene_1) {
	global.inCutScene = true;
	if (!instance_exists(obj_cutSceneParent)) {
		instance_create_depth(0, 0, -999, obj_cutSceneIntro);
		image_speed = 1;
	}
}

// Level 2: spawn dialogue at beginning
if (room == rm_lvl2NEW && global.puzzleSequence == 1) {
	with (instance_create_depth(0, 0, -999, obj_dialogue)) {
		
		addText("For the following puzzles, press shift to confirm an action. Press enter to submit your final answer.");
		addText("*These instructions will also be available as a note in your inventory.");
		addText("[Added instruction notes to inventory]");
	}
	
	var _lvl2_info = ["*Puzzle Instructions", spr_noteHint, "Shift to confirm choice.\nEnter to submit final answer."];
	AddItemToInventory(_lvl2_info);
}