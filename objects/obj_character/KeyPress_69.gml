//checks if an object is within 40 pixels of the character's "line of sight" & returns the object
var _interact = collision_line(
	x, 
	y, 
	x + lengthdir_x(40, direction), 
	y + lengthdir_y(40, direction), 
	obj_machine, 
	true, 
	false);

//if the character is touching the object
if (_interact != noone) {
	
	//run object code (stored specifically in User Event 0) 
	with(_interact) {
		event_user(0);
	}
		
}
	