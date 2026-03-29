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
			walkDir_x(1090, vk_left);
			break;
		case 8: // scan top area (2/2)
			walkDir_y(626, vk_up);
			break;
		case 9: // dialogue
			charDialogue(["The First Battlefield, huh?"])
			break;
		case 10: // walk to teleporter (1/2)
			walkDir_y(640, vk_down);
			break
		case 11: // walk to teleporter (2/2)
			walkDir_x(1135, vk_right);
			break;
		case 12: //teleport (1/2)
			if (obj_character.image_alpha != 0) {
				obj_character.image_alpha -= fadeSpeed;
			}
			else {
				obj_character.x = 1089;
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
			npcDialogue(["Correct.", "And if anyone was left behind..."])
			break;
		case 15: // walk up
				walkDir_y(385, vk_up);
				break;
		case 16: // dialogue
			charDialogue(["...", "Yeah, I get the image."])
			break; 
		case 17: // look left
			lookDir(7);
			timer(30);
			break;
		case 18: // dialogue
			global.inCutScene = false;
			charDialogue(["Human planet?"])
			break;
		case 19: // walk left
			walkDir_x(993, vk_left);
			break;
		case 20: // look down
			lookDir(0);
			timer(30);
			break;
		case 21: // npc dialogue
			npcDialogue(["Mixed to be more exact."])
		case 22: // walk left to edge
			global.inCutScene = false;
			walkDir_x(885, vk_left);
			break;
		case 23: // npc dialogue
			npcDialogue(["Surprising, but not unheard of."])
			break;
			
		
		
			
			
			
	}
}

else if (currentState == cutSceneStates.Paused) {
} 