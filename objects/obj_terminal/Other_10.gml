// Inherit the parent event
event_inherited();

create_dialogue([{ msg: text1 }]);

if (functional) {
	switch (room) {
		case rm_lvl2_2:
			if (global.puzzleSequence == 2) {
				with (obj_rm2eventHandler) event_user(0);
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
	}
	
}
