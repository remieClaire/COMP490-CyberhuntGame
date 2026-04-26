// Inherit the parent event
event_inherited();

// if the terminal is the one meant for level 4, do the following
if (id == rm4Terminal && global.puzzleSequence == 4) {
	// play sound to indicate calculations are being made
	audio_play_sound(snd_beeping, 10, false);
	// progress the player
	global.puzzleSequence = 5;
}
// otherwise, run text interaction code as normal
else {
	//object interaction text
	initTextCallback(function() {
		if (functional) {
			seqManager();
		}
	});
}