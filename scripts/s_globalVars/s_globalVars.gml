//------------game start------------
global.font_textb = font_add_sprite(spr_creamFont, 32, true, 1); //dialogue font
global.currentcharasprite = spr_alienChar1; //char sprite
global.item_currently_active = "game";
global.AllItems = ds_grid_create(0, Item.Height);
global.current_music = -1;
global.music_id = -1;
global.last_room = rm_mainMenu;
global.volume_level = 1;

//------------level 2------------
global.puzzleSequence = 8;
//flags
global.repopulate = false; //repopulate matrices
global.initiateMultMatrix = false; //puzzle part 3