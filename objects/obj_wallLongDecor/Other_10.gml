// Inherit the parent event
event_inherited();

//object interaction text
initText()

if (room == rm_lvl2_3 || room == rm_lvl2_7) {
	initTextCallback(function() {
		// display sprite
		showChart();
	});
}