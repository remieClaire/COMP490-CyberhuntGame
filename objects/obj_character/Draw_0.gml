//draws the correct series of images depending on frames given

show_debug_message("global.inCutScene: " + string(global.inCutScene))
if (!global.inCutScene) {
	show_debug_message("running anims like normal...")
	image_index = bound(image_index, animation_frames);
}


draw_self();