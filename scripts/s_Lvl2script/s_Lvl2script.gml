//GENERAL USE
//checks user's answer after each submission
function checkAnswer(_arr2) {
	arr2 = _arr2;
	
	var pass = true;

	for (var i = 0; i < array_length(obj_matrixTile.blockArr); i++) {
		if (string_trim(obj_matrixTile.blockArr[i].value) != string_trim(arr2[i])) {
			pass = false;
			obj_matrixTile.blockArr[i].boolean = false;
		}	
	}
	return pass;
}
//resets each block's boolean value back to "correct"
function resetBoolean() {
	for (var i = 0; i < array_length(obj_matrixTile.blockArr); i++) {
		blockArr[i].boolean = true;
	}
	return;
}
//rebuilds state matrix (for when player leaves puzzle in between steps)
function recreateMatrix(_arr2) {
	arr2 = _arr2;
	
	for (var i = 0; i < array_length(obj_matrixTile.blockArr); i++) {
		blockArr[i].value = arr2[i];
	}
	global.flag = false;
	return;
}

//CONSTRUCTORS
function Block(_block_id, _value, _boolean) constructor {
	block_id = _block_id;
	value = _value;
	boolean = _boolean;
}
function Arrow(_obj_id, _value) constructor {
	obj_id = _obj_id;
	value = _value;
}
function Dial(_obj_id, _value) constructor {
	obj_id = _obj_id;
	value = _value;
}
	
//LEVEL SPECIFIC FUNCTIONS
//LVL 2 EVENT1: reverse engineer
//creates mini menu that player must unscramble
function miniMenu(_x, _y, _options, _description = -1){
	with (instance_create_depth(_x, _y, -999, obj_miniMenu)) {
		
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hovermarker = "* ";
		
		
		//Set up size
		margin = 8; //pixels away from box edges 
		draw_set_font(f_comicSans);
		
		width = 1; //min width value
		
		//setting width depending on if description exists and how long strings are
		if (_description != -1) { 
			width = max(width, string_width(_description));
		}
		
		for (var i = 0; i < optionsCount; i++) {
			width = max(width, string_width(_options[i][0]));
		}
		
		width += string_width(hovermarker);
		
		//setting height
		heightLine = 30; //fixed magic number
		height = heightLine * (optionsCount + !(description == -1)); //multiply by number of lines & whether or not description exists
		
		fullWidth = width + margin * 2;
		fullHeight = height + margin * 2;
	}
	
}
//switches order of options when player is unscrambling
function switchOrder(_option1, _option2){
	//change array
	var temp = options[_option1][0]; //hold first value
	options[_option1][0] = options[_option2][0]; //switch first value with second value
	options[_option2][0] = temp; //put second value into first value's place
}

//LVL 2 EVENT2: input state matrix
//hides room so user can see puzzle components better
function hideRoom() { 
	floorTile = layer_get_id("Tiles_floor");
	collisionTile = layer_get_id("Tiles_collision");
	
	layer_set_visible(floorTile, false);
	layer_set_visible(collisionTile, false);
	
	with (obj_objParent) {
		visible = false;
	}
}

//LVL 2 EVENT4: multiply inverse matrix
//reveals room (user interaction with room needed for this event)
function showRoom() {
	floorTile = layer_get_id("Tiles_floor");
	collisionTile = layer_get_id("Tiles_collision");
	
	instance_deactivate_object(obj_machineScreen);
	instance_deactivate_object(obj_matrixBorder);
	instance_deactivate_object(obj_matrixTile);
	instance_deactivate_object(obj_matrixOpBorder);
	instance_deactivate_object(obj_matrixOpTile);
	
	layer_set_visible(floorTile, true);
	layer_set_visible(collisionTile, true);
	
	with (obj_objParent) {
		visible = true;
	}
}

//LVL 2 EVENT5: shift rows
//logic for arrow clicks
function mouseClickArrow(_arr, _obj) {
	arr = _arr;
	obj = _obj;
	
	if (mouse_check_button_pressed(mb_left)) {
		var arrowClicked = instance_position(mouse_x, mouse_y, obj);
		if (arrowClicked) {
			for (var b = 0; b < array_length(arr); b++) {
				if (arr[b].obj_id == arrowClicked) {
					arr[b].value++;
					show_debug_message(arr[b]);
				}
			}
		}
	}
	
}
//helper function for rotaterightArr
function reverse(_arr, _start, _end) {
	arr = _arr;
	s = _start;
	e = _end;
	
	while (s < e) {
		var temp = arr[s].value;
		arr[s].value = arr[e].value;
		arr[e].value = temp;
		s++;
		e--;
	}
	
}
//rotates rows of matrix
function rotaterightArr(_arr, _turn, _row) {
	//arr = _arr;
	turn = _turn;
	row = _row*4;
	
	turn = turn mod 4;
	
	//reverse entire array
	reverse(_arr, row, row+3);

	
	//reverse first t elements
	reverse(_arr, row, row+turn-1); 
	
	//reverse remaining t elements
	reverse(_arr, row+turn, row+3); 
	
	
}

//LVL 2 EVENT 6: inverse substitution
//logic for dial clicks
function mouseClickDial(_arr, _obj) {
	arr = _arr;
	obj = _obj;
	
	if (mouse_check_button_pressed(mb_left)) {
		var dialClicked = instance_position(mouse_x, mouse_y, obj);
		if (dialClicked) {
			for (var b = 0; b < array_length(arr); b++) {
				if (arr[b].obj_id == dialClicked) {
					arr[b].value++;
					arr[b].value = arr[b].value % 16;
					return dialClicked;
				}
			}
		}
	}
	
}