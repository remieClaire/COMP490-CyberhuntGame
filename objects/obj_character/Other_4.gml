global.item_currently_active = "game"; 
sprite_index = global.currentcharasprite;

level2_inner_rooms = [rm_lvl2NEW, rm_lvl2_1, rm_lvl2_2, rm_lvl2_3, rm_lvl2_4, rm_lvl2_5, rm_lvl2_6, rm_lvl2_7, rm_lvl2_8];
var _inner_rooms = false;

// prevent respawning from happening if in any of the level 2 inner rooms
for (var c = 0; c < array_length(level2_inner_rooms); c++) {
	if (room == level2_inner_rooms[c]) {
		_inner_rooms = true;
	}
}

// overwrite position if character is in any of the inner rooms
// if not in the inner rooms, load character position like normal
if (!(_inner_rooms) && s_loadGame()) {
	
	obj_character.x = global.save_data.player_x;
	obj_character.y = global.save_data.player_y;
}
// otherwise, set position to entrance maker
else if (_inner_rooms) {
	
	if (room == rm_lvl2NEW) {
		obj_character.x = asset_get_index("entr" + string(global.puzzleSequence) + "_main").x;
		obj_character.y = asset_get_index("entr" + string(global.puzzleSequence) + "_main").y;
	}
	else {
		obj_character.x = obj_entrance.x;
		obj_character.y = obj_entrance.y;
	}
	
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

// Level 1
if (room == rm_lvl1) {
	// set character's coordinates when entering
	obj_character.x = 568;
	obj_character.y = 216;
	
	// spawns dialogue object and door closing sounth
	audio_play_sound(snd_Door_Close, 0, false);
	with (instance_create_depth(0, 0, -999, obj_dialogue)) {
		addText("How interesting...\nIt's a whole abandoned lab!");
		addText("I can't help myself but to look around.");
		addText("There's a computer over there in the corner...");
		addText("If it works, maybe it contains useful information!");
		addText("Woah! There is a literal brain over there on the table! Let me go check it out.");
	}
}

// Level 2
else if (room == rm_lvl2NEW && global.puzzleSequence == 1) {
	// set x & y coordinates of character upon spawning in
	obj_character.x = 160;
	obj_character.y = 366;
	
	var _claimed = false;
	// check to make sure note is not in inventory already
	for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
		if (global.AllItems[# i, Item.title] == "*Puzzle Instructions") {
			_claimed = true;
			break;
		}
	}
	
	if (!_claimed) {
		// spawn dialogue
		with (instance_create_depth(0, 0, -999, obj_dialogue)) {
		
			addText("For the following puzzles, press shift to confirm an action. Press enter to submit your final answer.");
			addText("Press Q to quit. However, your progress will not be saved!");
			addText("*These instructions will also be available as a note in your inventory.");
			addText("[Added instruction notes to inventory]");
		}
	
		
		// add note to player's inventory
		var _lvl2_info = ["*Puzzle Instructions", spr_noteHint, "Shift to confirm choice.\nEnter to submit final answer.\nQ to quit. (Note that your progress will not save)"];
		AddItemToInventory(_lvl2_info);
		
		
	
	}
	
}

else if (room == rm_lvl3) {
	obj_character.x = 568;
	obj_character.y = 216;
}

show_debug_message("alarm on room start: " + string(alarm[0]));