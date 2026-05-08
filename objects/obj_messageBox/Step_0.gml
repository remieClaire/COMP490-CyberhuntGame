//------------exit puzzle------------
switch (global.puzzleSequence) {
	case 2:
		destroy = true;
		break;
	case 3: 
		destroy = true;
		break;
	case 5: 
		destroy = true;
		break;
	case 6:
		destroy = true;
		break;
	case 7:
		destroy = true;
		break;
}

if (destroy && global.leavePuzzle) {
	// destroy self
	instance_destroy();
}