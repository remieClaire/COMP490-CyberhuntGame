messages = []; //array of messages
current_msg = -1; //keeps track of which message you're on in the array
//for typewriter effect
current_char = 0; //how many characters of message have been drawn
draw_msg = ""; //actual message being drawn

char_speed = 0.5; //how fast characters appear
input_key = vk_space; //key used to speed up text

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();