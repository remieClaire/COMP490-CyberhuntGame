if (instance_exists(obj_dialogue)) exit; //if dialogue box is present, stop character movement
if (instance_exists(obj_miniMenu)) exit;

//------------movement------------
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

//------------animation------------
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

//------------collision------------
//*Note: collision works by predicting collision and preventing it from happening
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




// Terminal Interaction
// Check for the "E" key press
if (keyboard_check_pressed(ord("E"))) {
    var _inst = collision_rectangle(bbox_left - 20, bbox_top - 20, bbox_right + 20, bbox_bottom + 20, obj_wallLongDecor, false, true); 
	if (_inst != noone) {
        show_message("=== Caesar's Cipher ===\n\nThis cryptography algorithm works by using a value, k, to shift each letter in a message down the alphabet by that k value. To decrypt, just do it backwards!\nEncrypted Message: JFWYM\nChallenge: Search the room to find k and decrypt the message.\n\nOnce you have the message decrypted, enter it in the hologram located in the center of the room. ");
    }
}

// Hint Interaction
// Check for the "E" key press
if (keyboard_check_pressed(ord("E"))) {
    var _inst = collision_rectangle(bbox_left - 20, bbox_top - 20, bbox_right + 20, bbox_bottom + 20, obj_brain_2, false, true); 
	if (_inst != noone) {
        show_message("I have bright colors and wave on a pole,\nRepresenting a land is my only goal.\nI’m made of cloth and hang in the air,\nYou’ll find me waiting almost everywhere.\nLook at the walls and search the space,\nHow many of me are in this place?");
    }
}

// Hologram Interaction
// Check for the "E" key press
if (keyboard_check_pressed(ord("E"))) {
    var _inst = collision_rectangle(bbox_left - 20, bbox_top - 20, bbox_right + 20, bbox_bottom + 20, obj_roundHologram, false, true); 
	if (_inst != noone) {
        msg_id = get_string_async("Enter Password:", "");
    }
}