//SUBSTITUTION
/*TO ADD:
*mention a 16x16 sub bytes matrix to player
*hint at dials on bottom of machine screen
*tune dials according to row & col <- show value depending on tuning
*/
//setting x & y values for instance placement
var x_place = room_width/2 - 32;
var y_place = room_height/2;
//destroy operations matrix + arrows
instance_destroy(obj_matrixOpBorder);
instance_destroy(obj_matrixOpTile);

instance_destroy(obj_leftArrow);

//creating inv. sub. matrix
//bring up machine screen 
instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
//bring up radio dials below it 
rad_dial1 = instance_create_layer(x_place, y_place, "Instances", obj_subBytesDial);
x_place = room_width/2 + 32;
rad_dial2 = instance_create_layer(x_place, y_place, "Instances", obj_subBytesDial);
show_debug_message("radio dials created");