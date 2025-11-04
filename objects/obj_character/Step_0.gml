// uses arrow keys to move
var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

var _xinput = (_right - _left)*my_speed; // 1 if going right, -1 if going left 
var _yinput = (_down - _up)*my_speed; //1 for down, -1 for up

//Handling collision - collision works by predicting collision and preventing it from happening
//*Note: sign returns either 1, -1, or 0 depending on if the argument is a positive or negative number

//if collision is about to happen (i.e. if in x + _xinput steps, collision will occur)
if (place_meeting(x+_xinput, y+_yinput, tilemap_walls)) { 
	
	//if no future collision on x-axis, allow horizontal movement
	if (!place_meeting(x+_xinput, y, tilemap_walls)) {
		x += _xinput;
	}
	//if no future collision on y-axis, allow vertical movement
	else if (!place_meeting(x, y+_yinput, tilemap_walls)) {
		y += _yinput;
	}
	
	//if both fail (aka if collision is about to happen), do "pixel-perfect" collision
	else {
		//while no future collission on x-axis, move as close as possible 
		while (!place_meeting(x+sign(_xinput), y, tilemap_walls)) { 
			x += sign(_xinput); 
		}
		//while no future collision on y-axis, move as close as possible 
		while (!place_meeting(x, y+sign(_yinput), tilemap_walls)) {
			y += sign(_yinput);
		}
	}
}
//otherwise, if no future collision is detected, move as normal
else {	
	x += _xinput;
	y += _yinput;
}

