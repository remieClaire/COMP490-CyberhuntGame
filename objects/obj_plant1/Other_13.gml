// Inherit the parent event
event_inherited();

initTextCallback(function(){
	var _claimed = false;
	for (var i = 0; i < ds_grid_width(global.AllItems); i++) {
		if (global.AllItems[# i, Item.title] == "Encrypt and Decrypt") {
			_claimed = true;
			break;
		}
	}
	if (!_claimed) {
		AddItemToInventory(["Encrypt and Decrypt", spr_noteHint, "To encrypt choose a message m, raise it to the power of e, then mod by  n - the remainder sets it free. C = M^e mod n. To decrypt take the cyphertext C and raise it to d mod n to return M. M = C^d mod n. For e and d are inverse twins - they always undo, Bound by the totient, faithful, forever true."]);	
	}
});
