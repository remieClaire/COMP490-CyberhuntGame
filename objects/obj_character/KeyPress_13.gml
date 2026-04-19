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
		
		switch (room) {
			case rm_lvl1:
				event_user(1);
				break;
			case rm_lvl2NEW:
				event_user(2);
				break;
			case rm_lvl2_1:
				event_user(2);
				break;
			case rm_lvl2_2:
				event_user(2);
				break;
			case rm_lvl2_3:
				event_user(2);
				break;
			case rm_lvl2_4:
				event_user(2);
				break;
			case rm_lvl2_5:
				event_user(2);
				break;
			case rm_lvl2_6:
				event_user(2);
				break;
			case rm_lvl2_7:
				event_user(2);
				break;
			case rm_lvl2_8:
				event_user(2);
				break;
			case rm_lvl3:
				event_user(3);
				break;
			case rm_lvl2_4:
				event_user(4);
				break;
		}
	}
		
}	