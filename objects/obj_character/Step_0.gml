// uses arrow keys to move
var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

var _xinput = (_right - _left)*my_speed; // 1 if going right, -1 if going left 
var _yinput = (_down - _up)*my_speed; //1 for down, -1 for up

//Horizontal collision
//if collision -> add no movement
//while no collision -> move
if (place_meeting(x, y, tilemap_walls)) { //if collision
	while (!place_meeting(x+sign(_xinput), y, tilemap_walls)) { //while no collision
		x += sign(_xinput); //move
	}
	_xinput = 0; //add no movement
}
x += _xinput;

//Vertical collision
if (place_meeting(x, y, tilemap_walls)) { 
	while (!place_meeting(x, y+sign(_yinput), tilemap_walls)) {
		y += sign(_yinput);
	}
	_yinput = 0;
}
y += _yinput;

