function checkAnswer(_arr2) {
	arr1 = obj_matrixTile.blockArr;
	arr2 = _arr2;
	arr1_length = array_length(arr1);
	arr2_length = array_length(arr2);
	
	for (var i = 0; i < arr1_length; i++) {
		if (string_trim(arr1[i].value) != string_trim(arr2[i])) {
			return false;
		}	
	}
	return true;
}

function Block(_block_id, _value) constructor {
	block_id = _block_id;
	value = _value;
}
function Arrow(_obj_id, _value) constructor {
	obj_id = _obj_id;
	value = _value;
}
function Dial(_obj_id, _value) constructor {
	obj_id = _obj_id;
	value = _value;
}
	
//Lvl2 part 1
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

function switchOrder(_option1, _option2){
	//change array
	var temp = options[_option1][0]; //hold first value
	options[_option1][0] = options[_option2][0]; //switch first value with second value
	options[_option2][0] = temp; //put second value into first value's place
}

//Lvl2 part 2
function hideRoom() {
	floorTile = layer_get_id("Tiles_floor");
	collisionTile = layer_get_id("Tiles_collision");
	
	layer_set_visible(floorTile, false);
	layer_set_visible(collisionTile, false);
	
	with (obj_objParent) {
		visible = false;
	}
}

//Lvl2 part 4
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

//Lvl 2 part 5
function mouseClickArrow(_arr, _obj) {
	arr = _arr;
	obj = _obj;
	
	if (mouse_check_button_pressed(mb_left)) {
		var arrowClicked = instance_position(mouse_x, mouse_y, obj);
		if (arrowClicked) {
			for (var b = 0; b < array_length(arr); b++) {
				if (arr[b].obj_id == arrowClicked) {
					arr[b].value++;
				}
			}
		}
	}
	
}

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

//Lvl 2 part 6
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