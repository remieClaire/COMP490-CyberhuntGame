//INPUT VALUES 

if (instance_exists(obj_matrixBorder)) {
    exit;
}
obj_text1.textString = "INPUT STATE MATRIX"

//setting x & y positions of matrix
x_matrix = x_center-150;
y_matrix = y_center+150;
	
//setting up puzzle "room"
hideRoom();
instance_create_layer(room_width/2, room_height/2, "Instances", obj_machineScreen);
instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);