/*
function s_loadGame(){
	if (!file_exists("save.json")) {
        return false;
    }

    var file = file_text_open_read("save.json");
    var json = file_text_read_string(file);
    file_text_close(file);

    global.save_data = json_parse(json);
	var room_name = global.save_data.last_room;
    global.target_room = asset_get_index(room_name);
	global.levels_completed = global.save_data.level;
	global.AllItems = global.save_data.notes;
	global.currentcharasprite = global.save_data.character;
	global.volume_level = global.save_data.volume;
	
	if (ds_exists(global.AllItems, ds_type_grid)) {
		ds_grid_destroy(global.AllItems);
	}

	global.AllItems = s_array_to_grid(
		global.save_data.inventory,
		global.save_data.inventory_width,
		global.save_data.inventory_height
	);

    return true;
}
*/