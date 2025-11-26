//DO NOT CHANGE

//checks if an object is within 40 pixels of the character's "line of sight" & returns the object
var _interact = collision_line(
	x, 
	y, 
	x + lengthdir_x(50, direction), 
	y + lengthdir_y(50, direction), 
	obj_objParent, 
	true, 
	false);

//if the character is touching the object
if (_interact != noone) {
	
	//run object code (stored specifically in User Event 0) 
	with(_interact) {
		event_user(0);
	}
		
}
	