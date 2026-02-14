// Inherit the parent event
event_inherited();

if (global.item_currently_active != "game" && obj_computer.visible = false) {
	exit;
}

keyboard_string = " ";
obj_computer.visible = true;
global.item_currently_active = "puzzle";

if (obj_computer.visible == true) {
	obj_character.my_speed = 0;
} else {
	obj_character.my_speed = 4;
	global.item_currently_active = "game";
}