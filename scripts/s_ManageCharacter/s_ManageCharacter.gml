function s_ManageCharacter(){
	forbidden_rooms = [rm_mainMenu, rm_settings, rm_charSelect, rm_levelSelect];

	for (var c = 0; c < array_length(forbidden_rooms); c++) {
		if (room != forbidden_rooms[c]) {
			instance_create_layer(global.save_data.player_x, global.save_data.player_y, "Instances", obj_character);
			show_debug_message(instance_exists(obj_character));
		}
	}
}