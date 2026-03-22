// Inherit the parent event
event_inherited();

//object interaction text
initText();

if (room == rm_lvl2_5) {
	initTextCallback(function() {
		if (interactable) {
			var _lvl2_part5_note = ["Untitled", spr_noteHint, "was it 3, 2, 1? or 1, 2, 3?? dangit, I'm always mixing the two up!!"];
			AddItemToInventory(_lvl2_part5_note);
		}
	})
}