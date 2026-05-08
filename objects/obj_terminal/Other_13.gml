// Inherit the parent event
event_inherited();

if (global.item_currently_active != "game" && obj_computer.visible = false) {
	exit;
}

keyboard_string = " ";

//change font 
draw_set_font(f_defaultSilver);

obj_computer.visible = true;
global.item_currently_active = "puzzle";

if (obj_computer.visible == true) {
	obj_character.my_speed = 0;
	show_debug_message("computer still visible!")
} else {
	obj_character.my_speed = 1;
	global.item_currently_active = "game";
}
