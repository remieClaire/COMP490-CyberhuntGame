if (currentState == cutSceneStates.Active) { 
	switch (currentStep) {
		case 0: // dialogue
			charDialogue(["Alright, I've landed."]);
			break;
			
		case 1: // look around (1/3)
			lookDir(0);
			timer(60);
			break;
		
		case 2: // look around (2/3)
			lookDir(7);
			timer(60);
			break;
			
		case 3:	// look around (3/3)
			lookDir(3);
			timer(60);
			global.inCutScene = false;
			break;
			
		case 4: // dialogue
			charDialogue(["Place looks abandoned."]);
			break;
		case 5: // walk forward to edge
			walkDir_y(646, vk_up);
			break;
		case 6:	// npc dialogue
			npcDialogue(["Should be.", "According to reports, they evacuated everyone living there near the beginning of the war."])
			break;
		case 7: // scan top area (1/2)
				if (obj_character.x != 1090) {
					obj_character.my_speed = 1;
					keyboard_key_press(vk_left);
				}
				else {
					keyboard_key_release(vk_left);
					currentStep++;
				}
			
			break;
		case 8: // scan top area (2/2)
				if (obj_character.y != 626) {
					obj_character.my_speed = 1;
					keyboard_key_press(vk_up);
				}
				else {
					keyboard_key_release(vk_up);
					currentStep++;
				}
			break;
		case 9: // dialogue
			global.npcSpeaking = false;
			text_arr = ["The First Battlefield, huh?"]
			if (!instance_exists(obj_dialogue)) {
				initTextCallback(function() { obj_cutSceneIntro.currentStep++ });
			}
			break;
		case 10: // walk to teleporter (1/2)
				if (obj_character.y != 640) {
					obj_character.my_speed = 1;
					keyboard_key_press(vk_down);
				}
				else {
					keyboard_key_release(vk_down);
					currentStep++;
				}
			break
		case 11: // walk to teleporter (2/2)
				if (obj_character.x != 1135) {
					obj_character.my_speed = 1;
					keyboard_key_press(vk_right);
				}
				else {
					keyboard_key_release(vk_right);
					currentStep++;
				}
			break;
		case 12: //teleport (1/2)
			
			if (obj_character.image_alpha != 0) {
				obj_character.image_alpha -= fadeSpeed;
			}
			else {
				obj_character.x = 1090;
				obj_character.y = 512;
				
				global.inCutScene = true;
				obj_character.image_speed = 0;
				obj_character.image_index = 7; // look left
				
				currentStep++;
			}
			
			break;
		case 13: // teleport (2/2)
			if (obj_character.image_alpha != 1) {
				obj_character.image_alpha += fadeSpeed;
				
			}
			else {
				global.inCutScene = false;
				obj_character.image_speed = 1;
				currentStep++;
			}
			break;
		case 14: // npc dialogue
			global.npcSpeaking = true;
			text_arr = ["Correct.", "And if anyone was left behind..."]
			if (!instance_exists(obj_dialogue)) {
				initTextCallback(function() { obj_cutSceneIntro.currentStep++ });
			}
			break;
		case 15: // walk up
				if (obj_character.y != 383) {
					obj_character.my_speed = 1;
					keyboard_key_press(vk_up);
				}
				else {
					keyboard_key_release(vk_up);
					currentStep++;
				}
				break;
		case 16: // dialogue
			global.inCutScene = false;
			global.npcSpeaking = false;
			text_arr = ["...", "Yeah yeah I get the image."]
			if (!instance_exists(obj_dialogue)) {
				initTextCallback(function() { obj_cutSceneIntro.currentStep++ });
			}
			break; 
		case 17: // look left
			break;
			
			
	}
}

else if (currentState == cutSceneStates.Paused) {
} 