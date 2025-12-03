//MATRIX MULTIPLY
/*TO ADD:
*prompt player to look at notebook
*show room & have player interact with machine again
*kicks machine -> machine changes
*interact with machine -> answer is given
*/
//setting x & y positions of matrix
x_matrix = x_center+150;
y_matrix = y_center+150;

//create inverse multiply matrix
instance_destroy(obj_matrixOpBorder);
instance_destroy(obj_matrixOpTile);
instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixOpBorder);
	
		
//Fill in answers to matrix multiplication (player will not have to do this)
x_matrix = x_center-150;
y_matrix = y_center+150;
instance_destroy(obj_matrixBorder);
instance_destroy(obj_matrixTile);
instance_create_layer(x_matrix, y_matrix, "Instances", obj_matrixBorder);
global.initiateMultMatrix = true;
dialogueArr = [{ msg: "Oh, it filled it out for me." }];
create_dialogue(dialogueArr);

global.puzzleSequence = 5;
event_user(5);