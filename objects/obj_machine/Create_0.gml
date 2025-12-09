//global variable(s)
global.puzzleSequence = 1;

//FLAGS
global.flag = false; //flag to repopulate matrices
global.initiateMultMatrix = false; //flags for puzzle part 3

//for instance placement
x_center = (room_width/2)-(sprite_get_width(spr_matrixBorder)/2);
y_center = (room_height/2)-(sprite_get_height(spr_matrixBorder)/2);
x_matrix = -1;
y_matrix = -1;

//radio dials
rad_dial1 = -1;
rad_dial2= -1;