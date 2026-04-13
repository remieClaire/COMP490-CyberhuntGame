
function s_saveGame() {
    var save_data = {
        player_x: obj_character.x,
        player_y: obj_character.y,
        level: global.levels_completed,
        last_room: room_get_name(room),
		notes: global.AllItems,
		volume: global.volume_level,
		character: global.currentcharasprite,
		inventory:        s_grid_to_array(global.AllItems),
		inventory_width:  ds_grid_width(global.AllItems),
		inventory_height: ds_grid_height(global.AllItems)
    };

    var json = json_stringify(save_data);

    var file = file_text_open_write("save.json");
    file_text_write_string(file, json);
    file_text_close(file);

    show_debug_message("Saved: " + json);
}