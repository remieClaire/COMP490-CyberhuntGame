// Inherit the parent event
event_inherited();

//Puzzle ?/8 (trigger based on which step the player is currently on)
if (global.puzzleSequence != 1) {
	hideRoom();
}
event_user(global.puzzleSequence);