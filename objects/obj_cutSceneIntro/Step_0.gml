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
			teleportStart(1089, 512);
			break;
		case 13: // teleport (2/2)
			teleportStop();
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
			timer(45);
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
		case 24: // move up
			walkDir_y(340, vk_up);
			break;
		case 25: // look left
			lookDir(7);
			timer(45);
			break;
		case 26: // walk down
			global.inCutScene = false;
			walkDir_y(550, vk_down);
			break;
		case 27: // dialogue
			charDialogue(["Yeah, but the reason they were the first to go."])
			break;
		case 28: // walk left
			walkDir_x(338, vk_left);
			break;
		case 29: // dialogue
			charDialogue(["Heard rumours that the commanders didn't want to take any chances."]);
			break;
		case 30: // walk up
			walkDir_y(495, vk_up);
			break;
		case 31: // look at plants
			lookDir(7);
			timer(45);
			break;
		case 32: // npc dialogue
			global.inCutScene = false;
			npcDialogue(["You'd be right about that.", "Apparently it was the same for the humans too."]);
			break;
		case 33: // walk right
			walkDir_x(495, vk_right);
			break;
		case 34: // npc dialogue
			npcDialogue(["Found anything yet?", "It's been taking you long enough."])
			break;
		case 35: // walk up a little
			walkDir_y(432, vk_up);
			break;
		case 36: // npc dialogue
			npcDialogue(["That planet used to be heavily populated."])
			break;
		case 37: // walk to scrap piece 
			walkDir_x(513, vk_right);
			break;
		case 38: // dialogue
			charDialogue(["Yeah, and now it's heavily populated with scraps."])
			break;
		case 39: // walk up
			walkDir_y(340, vk_up);
			break;
		case 40: // walk right
			walkDir_x(568, vk_right);
			break;
		case 41: // dialogue
			charDialogue(["The local fauna have really taken advantage of the lack of foot-traffic too."])
			break;
		case 42: // walk left
			walkDir_x(305, vk_left);
			break;
		case 43: // walk down
			walkDir_y(372, vk_down);
			break;
		case 44: // face left to teleporter
			lookDir(7);
			timer(30);
			break;
		case 45: // teleport (1/2)
			teleportStart(305, 48);
			break;
		case 46: // teleport (2/2)
			teleportStop();
			break;
		case 47: // dialogue
			charDialogue(["It's a miracle the teleporters are still working."])
			break;
			

		
		
			
			
			
	}
}

else if (currentState == cutSceneStates.Paused) {
} 