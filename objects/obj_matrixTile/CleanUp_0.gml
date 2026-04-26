// reset color
draw_set_colour(c_white);

// reset boolean
destroy = false;

// reset global boolean since last one to be destroyed
if (global.puzzleSequence == 3 || global.puzzleSequence == 7) {
	if (id == blockArr[array_length(blockArr) - 1].block_id) {
		global.leavePuzzle = false;
	}
}