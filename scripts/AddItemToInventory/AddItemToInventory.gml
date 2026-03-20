enum Item {
	title,
	Sprite,
	Text,
	Height
}

function AddItemToInventory(attributes){
	ds_grid_resize(global.AllItems, ds_grid_width(global.AllItems) + 1, ds_grid_height(global.AllItems));
	for (var i = 0; i < array_length(attributes); ++i) {
		global.AllItems[# ds_grid_width(global.AllItems) - 1, i] = attributes[i];
	}
}

lvl2_info = ["*Puzzle Instructions", spr_noteHint, "Shift to confirm choice.\nEnter to submit final answer."];
lvl2_part1_note = ["Study Notes", spr_noteHint, "MEMORIZE FOR TOMORROW!:\n>Mix Columns\n>Shift Rows\n>Substitution\n And the key steps are always first or last!"];
// *maybe switch to ds_grid?
keymath_arr = [
	["0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["_________________________________"],
	["0| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["1| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["2| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["3| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["4| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["5| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["6| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["7| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["8| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["9| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["A| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["B| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["C| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["D| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["E| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
	["F| 0 1 2 3 4 5 6 7 8 9 A B C D E"],
];
lvl2_keynote = ["Key math (hard-copy backup)", spr_noteHint, keymath_arr];
lvl2_part5_note = ["Untitled", spr_noteHint, "was it 3, 2, 1? or 1, 2, 3?? dangit, I'm always mixing the two up!!"];
lvl2_part6_note = ["A feat of engineering", spr_noteHint, "Thank HEAVENS, this dial mechanism was invented. If not for it, I'd be staring at a giant matrix for hours, lining up letters and numbers. And double-digit numbers no less!"];
lvl2_part8_note = ["ASCII ref guide", spr_noteHint, "61 = a\n62 = b\n63 = c\n64 = d\n65 = e\n66 = f\n67 = g\n68 = h\n69 = i\n6A = j\n6B = k\n6C = l\n6D = m\n6E = n\n6F = o\n70 = p\n71 = q\n72 = r\n73 = s\n74 = t\n75 = u\n76 = v\n77 = w\n78 = x\n79 = y\n7A = z"];