sprite_index = global.currentcharasprite; //set char sprite based on player

my_speed = 1;	//walking speed
objects = [obj_wall, obj_objInteraction]; //array of objects to check for collision

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

AddItemToInventory(["Note1", spr_noteHint, "bleblebleblebleblebleblelbebelleblbeleb"]);
AddItemToInventory(["Random NOte", spr_noteHint, "what is a random note that i could come up with"]);
AddItemToInventory(["Vtubers part 1", spr_noteHint, "There are many reasons to watch vtubers and in this note I will be listing the top 5 reasons. Starting with #5..."]);
AddItemToInventory(["Note1", spr_noteHint, "bleblebleblebleblebleblelbebelleblbeleb"]);
AddItemToInventory(["Note1", spr_noteHint, "bleblebleblebleblebleblelbebelleblbeleb"]);