my_speed = 3;	//walking speed of character
objects = [obj_wall, obj_objInteraction]; //array of objects to check for collision

//holds frames of each animation
animations = 
{
	idledown:	{ frames: [0, 1] },
	idleup:		{ frames: [2, 3] },
	idleright:	{ frames: [4, 5] },
	idleleft:	{ frames: [6, 7] },
	down:		{ frames: [8, 9] },
	up:			{ frames: [10, 11] },
	right:		{ frames: [12, 13] },
	left:		{ frames: [14, 15] },
};

set_animation(animations, "idledown");