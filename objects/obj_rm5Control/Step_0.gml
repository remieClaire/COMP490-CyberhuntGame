// if arrow instance doesn't exist, clear the array
if (!instance_exists(obj_rightArrow)) {
	shift_arrows_arr = [];
}

if (global.puzzleSequence != 5) {
	rm5Terminal.locked = true;
}
else {
	rm5Terminal.locked = false;
}