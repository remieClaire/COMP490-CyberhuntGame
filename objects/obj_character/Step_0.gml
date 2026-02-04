// uses arrow keys to move
var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

//set movement
var _xinput = (_right - _left)*my_speed; // 3 if going right, -3 if going left 
var _yinput = (_down - _up)*my_speed; //3 for down, -3 for up

//sets direction & sets corresponding movement animation
if (_right) {
	direction = 0;
	set_animation(animations, "right");	
}
else if (_up) {
	direction = 90;
	set_animation(animations, "up");
}
else if (_left) {
	direction = 180;
	set_animation(animations, "left");
}
else if (_down) {
	direction = 270;
	set_animation(animations, "down");
}

//idle animation
if (_xinput == 0 && _yinput == 0) {
	switch(direction) {
		case 0:
			set_animation(animations, "idleright");
			break;
		case 90: 
			set_animation(animations, "idleup");
			break;
		case 180:
			set_animation(animations, "idleleft");
			break;
		case 270:
			set_animation(animations, "idledown");
			break;
	}
}

//Handling collision - collision works by predicting collision and preventing it from happening
//*Note: sign returns either 1, -1, or 0 depending on if the argument is a positive or negative number

//if collision is about to happen (i.e. if in x + _xinput steps, collision will occur)
if (place_meeting(x+_xinput, y+_yinput, objects)) { 
	
	//if no future collision on x-axis, allow horizontal movement
	if (!place_meeting(x+_xinput, y, objects)) {
		x += _xinput;
	}
	//if no future collision on y-axis, allow vertical movement
	else if (!place_meeting(x, y+_yinput, objects)) {
		y += _yinput;
	}
	
	//if both fail (aka if collision is about to happen), do "pixel-perfect" collision
	else {
		//while no future collission on x-axis, move as close as possible 
		while (!place_meeting(x+sign(_xinput), y, objects)) { 
			x += sign(_xinput); 
		}
		//while no future collision on y-axis, move as close as possible 
		while (!place_meeting(x, y+sign(_yinput), objects)) {
			y += sign(_yinput);
		}
	}
}
//otherwise, if no future collision is detected, move as normal
else {	
	x += _xinput;
	y += _yinput;
}

//Handling dialogue
if (instance_exists(obj_dialogue)) exit; //if dailogue box already exists, don't make it appear again