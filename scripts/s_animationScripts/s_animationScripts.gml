//returns struct of animation frames
function set_animation(_struct, _state) {
	//gets animation from struct
	new_animation = variable_struct_get(_struct, _state);
	//sets the current animation frame
	animation_frames = new_animation.frames
}
//bounds the animation to its own frame (i.e. if down animation triggered, only down frames should show)
function bound(_index, _bounds) {
	
	//if index not within given bounds, kick it back to start of range
	if (_index < _bounds[0] || _index > _bounds[1] + 0.99) {
		return _bounds[0];
	}
	return _index; //regardless, return the frame's index so it can be drawn
	
}

function timer(_val) {
	if (obj_cutSceneIntro.counter == _val) {
		obj_cutSceneIntro.counter = 0;
		obj_cutSceneIntro.currentStep++;
		return;
	}
	else {
		obj_cutSceneIntro.counter++;
	}
	
}

function charDialogue(_text) {
	text_arr = _text;
	
	if (!instance_exists(obj_dialogue)) {
		initTextCallback(function() { obj_cutSceneIntro.currentStep++ });	
	}
}

function npcDialogue(_text) {
	global.npcSpeaking = true;
	text_arr = _text;
	
	if (!instance_exists(obj_dialogue)) {
		initTextCallback(function() { 
			obj_cutSceneIntro.currentStep++ 
			global.npcSpeaking = false;
		});	
	}
}

function lookDir(_img) {
	global.inCutScene = true;
	// set image speed to anim doesn't start
	obj_character.image_speed = 0;
	
	// set correct index
	obj_character.image_index = _img;
	
	// NOTE:*place global.inCutScene = false after every end of lookDir sequence
}

function walkDir_x(_val, _keypress) {
	// set image speed so walking anim plays
	obj_character.image_speed = 1;
	
	// set walking speed
	obj_character.my_speed = 1;
	
	if (obj_character.x != _val) {
		keyboard_key_press(_keypress);
	}
	else {
		keyboard_key_release(_keypress);
		obj_cutSceneIntro.currentStep++;
	}
}

function walkDir_y(_val, _keypress) {
	// set image speed so walking anim plays
	obj_character.image_speed = 1;
	
	// set walking speed
	obj_character.my_speed = 1;
	
	if (obj_character.y != _val) {
		keyboard_key_press(_keypress);
	}
	else {
		keyboard_key_release(_keypress);
		obj_cutSceneIntro.currentStep++;
	}
}

function teleportStart(_dest_x, _dest_y) {
	
	if (obj_character.image_alpha != 0) {
		obj_character.image_alpha -= obj_cutSceneIntro.fadeSpeed;
	}
	else {
		// set to true so that char ends up facing teleport
		global.inCutScene = true;
		obj_character.image_speed = 0;
		obj_character.image_index = 7;
		
		obj_character.x = _dest_x;
		obj_character.y = _dest_y;
		
		obj_cutSceneIntro.currentStep++;
	}
}

function teleportStop() {
	if (obj_character.image_alpha != 1) {
		obj_character.image_alpha += obj_cutSceneIntro.fadeSpeed;
	}
	else {
		// reset so anims work
		global.inCutScene = false;
		obj_character.image_speed = 1;
		
		obj_cutSceneIntro.currentStep++;
	}
	
}