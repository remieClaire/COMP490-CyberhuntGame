global.item_currently_active = "game"; 
sprite_index = global.currentcharasprite;

if (room == rm_mainMenu) {
	instance_destroy(obj_character);
	exit;
} else if (room == rm_levelSelect) {
	instance_destroy(obj_character);
	exit;
} else if (room == rm_settings) {
	instance_destroy(obj_character);
	exit;	
}

if (s_loadGame()) {
	obj_character.x = global.save_data.player_x;
	obj_character.y = global.save_data.player_y;
}