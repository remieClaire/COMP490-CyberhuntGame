//------------game start------------
//dialogue font
global.font_textb = font_add_sprite(spr_creamFont, 32, true, 1); 
//npc dialogue font
global.npc_textb = font_add_sprite(spr_blueFont, 32, true, 1);
//char sprite
global.currentcharasprite = spr_alienChar1;
//if true, stop animations
global.inCutScene = false;
//if true, change dialogue font
global.npcSpeaking = false;
global.item_currently_active = "game";
//holds character inventory items
global.AllItems = ds_grid_create(0, Item.Height);
global.current_music = -1;
global.music_id = -1;
global.last_room = rm_mainMenu;
global.volume_level = 1;
//keeps track of levels the character has completed
global.levels_completed = 0;

//------------level 2------------
//keeps track of which stage the player is on in level 2
global.puzzleSequence = 1;
global.leavePuzzle = false;

//flags
global.repopulate = false; //repopulate matrices
global.initiateMultMatrix = false; //puzzle part 3