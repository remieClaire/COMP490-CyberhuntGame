// if radio dials don'tt exist, clear the array
if (!instance_exists(obj_rightArrow)) {
	radio_dial_arr = [];
}

if (global.puzzleSequence != 6) {
	rm6Terminal.locked = true;
}
else {
	rm6Terminal.locked = false;
}