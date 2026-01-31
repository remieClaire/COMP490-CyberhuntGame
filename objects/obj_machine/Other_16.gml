//SUBSTITUTION
/*TO ADD:
*mention a 16x16 sub bytes matrix to player
*hint at dials on bottom of machine screen
*tune dials according to row & col <- show value depending on tuning
*/
obj_text1.textString = "INVERSE SUBSTITUTION"
//recreate instances if don't exist
//recreate the state matrix
if (!instance_exists(obj_matrixBorder)) {
	global.flag = true;
	x_matrix = x_center-150;
	y_matrix = y_center+150;
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
}

//setting x & y values for instance placement
var x_place = room_width/2 - 32;
var y_place = room_height/2;
//destroy operations matrix + arrows
instance_destroy(obj_matrixOpBorder);
instance_destroy(obj_matrixOpTile);

instance_destroy(obj_rightArrow);

//creating inv. sub. matrix
//bring up machine screen 
instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
//bring up radio dials below it 
rad_dial1 = instance_create_layer(x_place, y_place, "Instances", obj_radioDial);
x_place = room_width/2 + 32;
rad_dial2 = instance_create_layer(x_place, y_place, "Instances", obj_radioDial);