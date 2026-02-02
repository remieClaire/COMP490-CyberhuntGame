//returns struct of animation frames
function set_animation(_struct, _state) {
	//gets animation from struct
	new_animation = variable_struct_get(_struct, _state);
	//sets the current animation frame
	animation_frames = new_animation.frames
}
//bounds the animation to its own frame (i.e. if down animation triggered, only down frames should show)
function bound(_index, _bounds) {
	
	//if index not within given bounds, kick it back to start of range
	if (_index < _bounds[0] || _index > _bounds[1] + 0.99) {
		return _bounds[0];
	}
	return _index; //regardless, return the frame's index so it can be drawn
	
}