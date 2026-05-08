// pause, inventory, puzzle, game
audio_play_sound(snd_Pause_Menu, 0, false);
if (global.item_currently_active == "inventory") {
	obj_Inventory.visible = false;
	obj_character.my_speed = 1;
	global.item_currently_active = "game";
} else if (global.item_currently_active == "puzzle") {
	obj_computer.visible = false;
	obj_character.my_speed = 1;
	global.item_currently_active = "game";
} else if (global.item_currently_active == "pause") {
	obj_pausemenu.visible = false;
	obj_character.my_speed = 1;
	draw_set_colour(c_white);
	draw_set_alpha(1);
	global.item_currently_active = "game";	
} else if (global.item_currently_active == "game") {
	obj_pausemenu.visible = true;
	obj_character.my_speed = 0;
	global.item_currently_active = "pause";
} 


