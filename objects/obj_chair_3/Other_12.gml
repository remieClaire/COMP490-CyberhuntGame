// Inherit the parent event
event_inherited();

//object interaction text
initText();

if (room == rm_lvl2_1) {
	initTextCallback(function() {
		
		var _note_received = false;
		// check to make sure note is not in inventory already
		for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
			if (global.AllItems[# i, Item.title] == "Study Notes") {
				_note_received = true;
				break;
			}
		}
		
		if (interactable && !_note_received) {
			var _lvl2_part1_note = ["Study Notes", spr_noteHint, "MEMORIZE FOR TOMORROW!:\n>Mix Columns\n>Shift Rows\n>Substitution\n And the key steps are always first or last!"];
			AddItemToInventory(_lvl2_part1_note);
		}
	});
}
