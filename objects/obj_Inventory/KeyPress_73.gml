// when called
show_debug_message("inventory called");
// if item currently active is not the game AND inventory is not visible, exit
if (global.item_currently_active != "game" && visible = false) {
	exit;
}

// otherwise, turn on or off
visible = !visible;

// make item currently active the inventory
global.item_currently_active = "inventory";

// if visible
if (visible == true) {
	// prevent character from moving 
	if (instance_exists(obj_character)) obj_character.my_speed = 0;
	
} else {
	
	//otherwise, resume movement
	if (instance_exists(obj_character)) obj_character.my_speed = 2;
	
	// set the item currently active to game
	global.item_currently_active = "game";
}