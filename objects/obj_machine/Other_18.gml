//TRANSLATE HEX TO ASCII
obj_text1.textString = "TRANSLATE TO ASCII"
//destroy operations matrix + state matrix border
instance_destroy(obj_matrixOpBorder);
instance_destroy(obj_matrixOpTile);
instance_destroy(obj_matrixBorder);

var x_pos = room_width/2 - (sprite_get_width(spr_arrayBorder))/2;
var y_pos = room_height/2 + 50;

//create hex to ascii array
instance_create_layer(x_pos, y_pos, "Instances", obj_arrayBorder);

x_pos = room_width/2;
y_pos= room_height/2 + 200;
//create input text box
instance_create_layer(x_pos, y_pos, "Instances", obj_aesInputBox);