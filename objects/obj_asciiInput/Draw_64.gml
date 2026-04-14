// setup text variables 
draw_set_font(f_pauseSilver);
fontSize = font_get_size(f_pauseSilver);
buffer = fontSize;

startX = x - sprite_get_width(spr_asciiInput)/2;
startY = y - 40;


var _charCount = 1;

draw_set_colour(c_black);

for (var yy = 0; yy < yLetters; yy++) {
	for (var xx = 0; xx < xLetters; xx++) {
		
		// grab letter at specific grid coordinates 
		var letter = a_letters[xx, yy];
		
		// draw the letter
		var drawX = startX + (xx * (fontSize * 2)) + 32;
		var drawY = startY + (yy * (fontSize + buffer));
		
		// align letters
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(drawX, drawY, letter);
		
		var cursorX = drawX - 48;
		var cursorY = drawY - 8;
		
		// display cursor
		if (xx == gridX && yy == gridY) draw_sprite_ext(spr_inputSelect, -1, cursorX, cursorY, 3, 3, 0, c_white, 1);
		
		_charCount++;
		
	}
}