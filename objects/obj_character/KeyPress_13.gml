//DO NOT CHANGE

//checks if an object is within 40 pixels of the character's "line of sight" & returns the object
var _interact = collision_line(
	x, 
	y, 
	x + lengthdir_x(30, direction), 
	y + lengthdir_y(30, direction), 
	obj_objInteraction, 
	true, 
	false);

//if the character is touching the object
if (_interact != noone) {
	
	//run object code (stored specifically in User Event 0) 
	with(_interact) {
		/*
		switch (room) {
			case rm_lvl1:
				event_user(1);
				break;
		}
		*/
		event_user(0);
	}
		
}	