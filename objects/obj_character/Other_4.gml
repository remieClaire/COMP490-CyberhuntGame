forbidden_rooms = [rm_mainMenu, rm_settings, rm_charSelect, rm_levelSelect];

//prevent character from spawning in any menu rooms
for (var c = 0; c < array_length(forbidden_rooms); c++) {
	if (room == forbidden_rooms[c]) {
		instance_destroy();
	}
}

//specific to Level 2
if (room == rm_lvl2NEW && global.puzzleSequence == 1) {
	with (instance_create_depth(0, 0, -999, obj_dialogue)) {
		
		addText("For the following puzzles, press shift to confirm an action. Press enter to submit your final answer.");
		addText("*These instructions will also be available as a note in your inventory.");
		addText("[Added instruction notes to inventory]");
	}
	
	var _lvl2_info = ["*Puzzle Instructions", spr_noteHint, "Shift to confirm choice.\nEnter to submit final answer."];
	AddItemToInventory(_lvl2_info);
}