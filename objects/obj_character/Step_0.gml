if (instance_exists(obj_dialogue)) exit; //if dialogue box is present, stop character movement
if (instance_exists(obj_miniMenu)) exit;
if (instance_exists(obj_userInputBox)) exit;

alarm[0] = 30; // every 30 seconds

//------------movement------------
// uses arrow keys to move
var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
footstep_sound_cooldown -= 1;

//set movement
var _xinput = (_right - _left)*my_speed; // 1 if going right, -1 if going left 
var _yinput = (_down - _up)*my_speed; //1 for down, -1 for up

//sets direction & sets corresponding movement animation
if (_right) {
	direction = 0;
	set_animation(animations, "right");	
	if(footstep_sound_cooldown <= 0){
		var inst = audio_play_sound(snd_Footstep, 0, false);
		audio_sound_pitch(inst, random_range(0.9, 1.1));
		footstep_sound_cooldown = 20;
	}
}
else if (_up) {
	direction = 90;
	set_animation(animations, "up");
	if(footstep_sound_cooldown <= 0){
		var inst = audio_play_sound(snd_Footstep, 0, false);
		audio_sound_pitch(inst, random_range(0.9, 1.1));
		footstep_sound_cooldown = 20;
	}
}
else if (_left) {
	direction = 180;
	set_animation(animations, "left");
	if(footstep_sound_cooldown <= 0){
		var inst = audio_play_sound(snd_Footstep, 0, false);
		audio_sound_pitch(inst, random_range(0.9, 1.1));
		footstep_sound_cooldown = 20;
	}
}
else if (_down) {
	direction = 270;
	set_animation(animations, "down");
	if(footstep_sound_cooldown <= 0){
		var inst = audio_play_sound(snd_Footstep, 0, false);
		audio_sound_pitch(inst, random_range(0.9, 1.1));
		footstep_sound_cooldown = 20;
	}
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


// Sfx for level 1 computer interaction
var near = (room == rm_lvl1 && point_distance(x, y, obj_wallLongDecor.x, obj_wallLongDecor.y) < 15);

// Player enters the area → start sound ONCE
if (near && !sound_playing) {
    sound_playing = true;
    sound_instance = audio_play_sound(snd_Computer_Interact, 0, true);
}

// Player leaves the area → stop sound ONCE
if (!near && sound_playing) {
    sound_playing = false;
    audio_stop_sound(sound_instance);
    sound_instance = -1;
}
