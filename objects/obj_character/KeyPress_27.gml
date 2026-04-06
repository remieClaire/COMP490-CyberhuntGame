// pause, inventory, puzzle, game
if (global.item_currently_active == "inventory") {
	obj_Inventory.visible = false;
	my_speed = 4;
	global.item_currently_active = "game";
} else if (global.item_currently_active == "puzzle") {
	obj_computer.visible = false;
	my_speed = 4;
	global.item_currently_active = "game";
} else if (global.item_currently_active == "pause") {
	obj_pausemenu.visible = false;
	my_speed = 1;
	global.item_currently_active = "game";	
} else {
	obj_pausemenu.visible = true;
	my_speed = 0;
	global.item_currently_active = "pause";
}