if (currentState == cutSceneStates.Active) { 
	switch (currentStep) {
		case 0: // dialogue
			text_arr = ["Alright, I've landed."];
			
			if (!instance_exists(obj_dialogue)) {
				initTextCallback(function() { obj_cutSceneIntro.currentStep++ });		
			}
			break;
			
		case 1: // look around (1/3)
			obj_character.image_speed = 0;
			obj_character.image_index = 0; // down
			timer(60);
			break;
		
		case 2: // look around (2/3)
			obj_character.image_speed = 0;
			obj_character.image_index = 7; // left
			timer(60);
			break;
			
		case 3:	// look around (3/3)
			obj_character.image_speed = 0;
			obj_character.image_index = 3; // back up
			timer(60);
			global.inCutScene = false;
			break;
			
		case 4: // dialogue
			text_arr = ["Place looks abandoned."]
			if (!instance_exists(obj_dialogue)) {
				initTextCallback(function() { obj_cutSceneIntro.currentStep++ });
			}
			break;
		case 5: // walk forward to edge
				global.npcSpeaking = false;
				if (obj_character.y != 628) {
					obj_character.my_speed = 2;
					keyboard_key_press(vk_up);
				}
				else {
					keyboard_key_release(vk_up);
					currentStep++;
				}
			break;
		case 6:	// npc dialogue
			global.npcSpeaking = true;
			text_arr = ["Should be.", "According to reports, they evacuated everyone living there near the beginning of the war."]
			if (!instance_exists(obj_dialogue)) {
				initTextCallback(function() { obj_cutSceneIntro.currentStep++ });
			}
			break;
		case 7: // wade across water 
			obj_character.my_speed = 1;
			if (obj_character.y != 523) {
					obj_character.my_speed = 1;
					keyboard_key_press(vk_up);
				}
				else {
					keyboard_key_release(vk_up);
					currentStep++;
			}
			break;
		case 8: 
			
	}
}

else if (currentState == cutSceneStates.Paused) {
} 