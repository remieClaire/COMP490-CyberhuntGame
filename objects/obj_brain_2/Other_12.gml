// Inherit the parent event
event_inherited();

//object interaction text
initText();

var inst = audio_play_sound(snd_Brain_Interact, 0, false);
audio_sound_pitch(inst, random_range(0.7, 1.3));


if (room == rm_lvl2_5) {
	initTextCallback(function() {
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