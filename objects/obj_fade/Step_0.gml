//enter state
if (state == 0) {
	timer += 1;
	
	//change room
	if (timer >= duration) {
		room_goto(targetRoom);
		
		//set state
		state = 1;
	}
}

//exit state
else if (state == 1) {
	timer -= 1;
	
	//destroy
	if (timer <= 0) {
		instance_destroy();
	}
}

//set alpha
alpha = timer / duration;