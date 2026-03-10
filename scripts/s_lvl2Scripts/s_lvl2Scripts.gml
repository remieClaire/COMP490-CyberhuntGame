//------------general use------------
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
function repopulateMatrix(_arr2) {
	arr2 = _arr2;
	
	for (var i = 0; i < array_length(obj_matrixTile.blockArr); i++) {
		blockArr[i].value = arr2[i];
	}
	global.repopulate = false;
	return;
}
//changes camera and viewport to fit puzzle components
function setCamera() {
	var _cam = view_get_camera(1);
	
	//set camera 0 to cam1 settings
    view_set_camera(0, _cam);
    camera_apply(_cam);
}
//changes camera and viewport back to player view
function resetCamera() {
	var _cam = view_get_camera(2);
	
	view_set_camera(0, _cam);
	camera_apply(_cam);
}
//changes to puzzle view
function puzzleView() {
	//deactivate instances
	instance_deactivate_all(false);
	//hide layers
	var _assetLayers = ["Assets_1", "Instances", "Tiles_1"];
	
	for (var i = 0; i < array_length(_assetLayers); i++) {
		var _curr_layer = layer_get_id(_assetLayers[i]);
		layer_set_visible(_curr_layer, false);
	}
	//change font 
	draw_set_font(f_largeSilver);
	//change background
	var _background = layer_background_get_id("Background");
	layer_background_sprite(_background, spr_puzzleBackground);
	
}	
//reverts changes after puzzle is complete
function playerView() {
	//reactivate instances
	instance_activate_all();
	//show layers
	var _assetLayers = ["Assets_1", "Instances", "Tiles_1"];
	
	for (var i = 0; i < array_length(_assetLayers); i++) {
		var _curr_layer = layer_get_id(_assetLayers[i]);
		layer_set_visible(_curr_layer, true);
	}
	//reset font 
	draw_set_font(global.font_textb);
	var _background = layer_background_get_id("Background");
	layer_background_sprite(_background, spr_levelBackground_dark);
}

function seqManager() {
	switch (room) {
		//------------rm 2------------
		case rm_lvl2_2:
			if (global.puzzleSequence == 2) {
				with (obj_rm2Control) {
					event_user(0);
				}
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
		//------------rm 3------------
		case rm_lvl2_3:
			if (global.puzzleSequence == 3) {
				with (obj_rm3Control) {
					event_user(0);		
				}
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
		//------------rm 5------------
		case rm_lvl2_5:
			if (global.puzzleSequence == 5) {
				with (obj_rm5Control) {
					event_user(0);		
				}
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
		//------------rm 6------------
		case rm_lvl2_6:
			if (global.puzzleSequence == 6) {
				with (obj_rm6Control) {
					event_user(0);		
				}
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
		//------------rm 7------------
		case rm_lvl2_7:
			if (global.puzzleSequence == 7) {
				with (obj_rm7Control) {
					event_user(0);		
				}
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
		//------------rm 8------------
		case rm_lvl2_8:
			if (global.puzzleSequence == 8) {
				with (obj_rm8Control) {
					event_user(0);		
				}
			}
			else {
				show_debug_message("you cant do this puzzle yet!");
			}
			break;
	}
}

//------------constructors------------
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
	
//------------level specific------------
//------------event 1: reverse engineer------------
//creates mini menu that player must unscramble
function miniMenu(_x, _y, _options, _description = -1){
	
	with (instance_create_layer(_x, _y, "Assets_1", obj_miniMenu)) {
		options = _options;
		description = _description;
		optionsCount = array_length(_options);
		hovermarker = "* ";
		
		//Set up size
		margin = 8; //pixels away from box edges 
		draw_set_font(f_smallSilver);
		
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
		heightLine = 11; //fixed magic number
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

//------------event 2: state matrix------------
//hides room so user can see puzzle components better
function stateMatrix(_x1, _y1) {
	//visual set up
	puzzleView();
	//change camera & view
	setCamera();
	//create inventory on side
	//create note content on bottom
	//spawn matrix on top center
	instance_create_depth(_x1, _y1, -999, obj_matrixBorder);
}

//------------event 4: inv matrix------------


//------------event 5: shift rows------------
//logic for arrow clicks
function mouseClickArrow(_arr, _obj) {
	arr = _arr;
	obj = _obj;
	
	var user_pos_x = x - camera_get_view_x(0);
	var user_pos_y = y - camera_get_view_y(0);
	
	if (mouse_check_button_pressed(mb_left)) {
		var arrowClicked = instance_position(user_pos_x, user_pos_y, obj);
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

//------------event 6: inv sub------------
//logic for dial clicks
function mouseClickDial(_arr, _obj) {
	arr = _arr;
	obj = _obj;
	
	var user_pos_x = x - camera_get_view_x(0);
	var user_pos_y = y - camera_get_view_y(0);
	
	if (mouse_check_button_pressed(mb_left)) {
		var dialClicked = instance_position(user_pos_x, user_pos_y, obj);
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