if (global.item_currently_active != "game" && visible = false) {
	exit;
}

visible = !visible;
global.item_currently_active = "inventory";

if (visible == true) {
	obj_character.my_speed = 0;
} else {
	obj_character.my_speed = 4;
	global.item_currently_active = "game";
}