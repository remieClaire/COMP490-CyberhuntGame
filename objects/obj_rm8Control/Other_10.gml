//TRANSLATE HEX TO ASCII
//lvl2_part8_note = ["ASCII ref guide", spr_noteHint, "61 = a\n62 = b\n63 = c\n64 = d\n65 = e\n66 = f\n67 = g\n68 = h\n69 = i\n6A = j\n6B = k\n6C = l\n6D = m\n6E = n\n6F = o\n70 = p\n71 = q\n72 = r\n73 = s\n74 = t\n75 = u\n76 = v\n77 = w\n78 = x\n79 = y\n7A = z"];

//------------setup------------
var _cam_w = camera_get_view_x(view_camera[0]);
var _cam_h = camera_get_view_y(view_camera[0]);

x_array = _cam_w/2 - (sprite_get_width(spr_arrayBorder)/2) + 550;
y_array = _cam_h - 200;

x_input = _cam_w + 180;
y_input = y_array - 80;

//------------spawn puzzle------------
//creat state matrix so matrix tiles can be called
stateMatrix(0, 0);
obj_matrixBorder.visible = false;

instance_create_depth(x_array, y_array, -999, obj_arrayBorder);

//create input text box
instance_create_depth(x_input, y_input, -999, obj_aesInputBox);

//------------recreate progress------------
global.repopulate = true;