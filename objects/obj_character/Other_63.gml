// 1. Get the ID of the message that just finished
var _id = ds_map_find_value(async_load, "id");

// 2. Check if this response belongs to this hologram
if (_id == msg_id) {
    
    // 3. Did the user click "OK"? (status == true)
    if (ds_map_find_value(async_load, "status")) {
        
        // 4. Get the text they typed
        var _input = ds_map_find_value(async_load, "result");
        
        // 5. Check the password
        if (string_upper(_input) == "EARTH") {
			fadeToRoom(rm_lvl2NEW, 60, c_black);
        } else {
            // Show another pop-up for the error
            show_message_async("INCORRECT. TRY AGAIN.");
        }
    }
}