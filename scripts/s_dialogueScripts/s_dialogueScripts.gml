function create_dialogue(_messages){
	if (instance_exists(obj_dialogue)) return; //if instance already exists, exit

	var _inst = instance_create_depth(0, 0, 0, obj_dialogue); //get dialogue box instance
	_inst.messages = _messages; //get dialogue box's message array
	_inst.current_msg = 0; //set dialogue box's current msg
	
}