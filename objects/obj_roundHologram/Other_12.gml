// Inherit the parent event
event_inherited();

// call the sequence manager script to trigger puzzle
if (room == rm_lvl2_1) {
	seqManager();
}
else {
	initText();
}
