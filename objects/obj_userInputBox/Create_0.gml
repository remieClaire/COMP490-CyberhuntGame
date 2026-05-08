gridX = 0; 
gridY = 0;

currentName = "";
letterString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ    ";

// define shape of grid 
//*when  multiplied together, should equal 30
xLetters = 6;
yLetters = 5;

// track how far along the string we're at
charCount = 1;

//correct answer
answer = "EARTH";

//fix bug when 'A' automatically is added to currentName
ready = false;

//making the grid
for (var yy = 0; yy < yLetters; yy++) {
	for (var xx = 0; xx < xLetters; xx++) {
		if (charCount <= 29) {
			a_letters[xx, yy] = string_char_at(letterString, charCount);
		}
		else {
			a_letters[xx, yy] = "OK";
		}
		charCount++;
	}
}