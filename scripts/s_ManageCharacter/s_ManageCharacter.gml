function s_ManageCharacter(){
	forbidden_rooms = [rm_mainMenu, rm_settings, rm_charSelect, rm_levelSelect];

	var create = false;
	
	for (var c = 0; c < array_length(forbidden_rooms); c++) {
		if (room != forbidden_rooms[c]) {
			create = true;
		}
	}
	
	if (create) {
		instance_create_layer(global.save_data.player_x, global.save_data.player_y, "Instances", obj_character);
	}
}