// Inherit the parent event
event_inherited();

//**with block will run all code in it from the perspective of the OBJECT BEING CREATED
with (instance_create_depth(0, 0, -999, obj_NEWdialogue)) {
	for (var p = 0; p < array_length(other.text_arr); p++) {
		s_addText(other.text_arr[p]);
	}

}