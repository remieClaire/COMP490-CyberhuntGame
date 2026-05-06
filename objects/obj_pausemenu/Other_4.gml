visible = false;
global.item_currently_active = "game";
s_loadGame();

if (!instance_exists(obj_character)) {
	s_ManageCharacter();
}
