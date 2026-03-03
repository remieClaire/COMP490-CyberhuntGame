//Adds lines of text
/// @param text
function addText(_text){
	text[page_number] = _text;
	
	page_number++;	
}

//Creates dialogue object
function initText(){
	
	if (array_length(text_arr) == 0) return;
	
	
	//*with block will run all code in it from the perspective of the OBJECT BEING CREATED
	with (instance_create_depth(0, 0, -999, obj_dialogue)) {
		for (var p = 0; p < array_length(other.text_arr); p++) {
			addText(other.text_arr[p]);
		}
	}
}

//Creates dialogue object & triggers event sequentially
/// @param func
function initTextCallback(_func){
	
	if (array_length(text_arr) == 0) return;
	
	var _callback = _func;
	
	//*with block will run all code in it from the perspective of the OBJECT BEING CREATED
	with (instance_create_depth(0, 0, -999, obj_dialogue)) {
		for (var p = 0; p < array_length(other.text_arr); p++) {
			addText(other.text_arr[p]);
		}
		
		callback = _callback;
	}
}
	