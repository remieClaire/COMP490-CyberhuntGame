// Inherit the parent event
event_inherited();

//object interaction text
initText();

if (room == rm_lvl2_5) {
	initTextCallback(function() {
		show_debug_message("dialogue triggered");
		var _note_received = false;
		// check to make sure note is not in inventory already
		for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
			if (global.AllItems[# i, Item.title] == "Untitled") {
				_note_received = true;
				break;
			}
		}
		
		if (interactable && !_note_received) {

			var _lvl2_part5_note = ["Untitled", spr_noteHint, "was it 3, 2, 1, 0? or 0, 1, 2, 3?? dangit, I'm always mixing the two up!!"];
			AddItemToInventory(_lvl2_part5_note);
		}
	})
}