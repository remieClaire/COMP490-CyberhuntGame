//draws the correct series of images depending on frames given
if (!global.inCutScene) {
	image_index = bound(image_index, animation_frames);
}


draw_self();