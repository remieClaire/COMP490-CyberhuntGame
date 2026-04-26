// Inherit the parent event
event_inherited();

// object interaction text
initText();

if (room == rm_lvl2_2) {
	initTextCallback(function() {
		var _noteArr = [""];
		AddItemToInventory(_noteArr);
	})
}