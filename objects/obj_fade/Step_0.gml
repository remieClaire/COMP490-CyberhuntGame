//enter state
if (state == 0) {
	fade_timer += 1;
	
	//change room
	if (fade_timer >= duration) {
		room_goto(targetRoom);
		
		//set state
		state = 1;
	}
}

//exit state
else if (state == 1) {
	fade_timer -= 1;
	
	//destroy
	if (fade_timer <= 0) {
		instance_destroy();
	}
}

//set alpha
if (fade_timer > 0) {
	alpha = fade_timer / duration;
}
