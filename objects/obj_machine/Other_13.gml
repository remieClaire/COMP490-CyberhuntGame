//ADD KEY (FIRST XOR)
/*TO ADD:
*pull up key inserts on side
*player must drag and drop key in
*/
obj_text1.textString = "XOR KEY 1"
//setting x & y positions of matrix
x_matrix = x_center+150;
y_matrix = y_center+150;
	
//create XOR key matrix
instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixOpBorder);

//recreate instances if don't exist
//recreate machine screen
if (!instance_exists(obj_machineScreen)) {
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
}
//recreate the state matrix
if (!instance_exists(obj_matrixBorder)) {
	global.flag = true;
	x_matrix = x_center-150;
	y_matrix = y_center+150;
	instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
}