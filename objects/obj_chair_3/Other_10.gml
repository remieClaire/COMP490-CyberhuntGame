// Inherit the parent event
event_inherited();

//object interaction text
initText();

if (room == rm_lvl2_1) {
	initTextCallback(function() {
		if (interactable) {
			show_debug_message("inside interactable");
			var _lvl2_part1_note = ["Study Notes", spr_noteHint, "MEMORIZE FOR TOMORROW!:\n>Mix Columns\n>Shift Rows\n>Substitution\n And the key steps are always first or last!"];
			AddItemToInventory(_lvl2_part1_note);
		}
	});
}
