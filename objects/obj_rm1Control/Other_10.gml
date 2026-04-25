//REVERSE ENGINEER ALGORITHM
if (!instance_exists(obj_miniMenu)) {
	miniMenu(
		room_width,
		room_height, 
		[
			["Substitution"],
			["Add Final Key"],
			["Shift Rows"],
			["Mix Column"],
			["Add Key"],
		],
		"Reverse the encryption algorithm:"
	);
}