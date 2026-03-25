// Inherit the parent event
event_inherited();

// object interaction text
initText();


if (room == rm_lvl2_8) {
	
	initTextCallback(function() {
		
		read = true;
		for (var n = 0; n < array_length(alphabet_notes); n++) {
			if (!alphabet_notes[n].read) return;
		}
		
		with (instance_create_depth(x, y, -999, obj_dialogue)) {
			addText("Better write these down, they seem important.");
			addText("[Added note to inventory]");
		}
			AddItemToInventory(lvl2_part8_note);
			
	});
}