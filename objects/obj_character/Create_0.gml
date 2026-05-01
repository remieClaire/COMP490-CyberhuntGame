sprite_index = global.currentcharasprite; //set char sprite based on player

my_speed = 1;	//walking speed
objects = [obj_wall, obj_objInteraction]; //array of objects to check for collision
footstep_sound_cooldown = 0;

//animation frames
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


alarm[0] = room_speed * 30; // every 30 seconds

//AddItemToInventory(["Note1", spr_noteHint, "random ahh words that i cant be bothered to explain right here"]);