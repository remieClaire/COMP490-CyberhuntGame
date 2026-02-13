draw_set_alpha(1)
draw_set_colour(c_green)
draw_rectangle(room_width/3, room_height/3, (room_width/3)*2, (room_height/3)*2, false)
draw_set_colour(c_white)
draw_text_transformed(room_width/3 + 20, room_height/2 - 100, encrypted_message, 0.75, 0.75, 0)

draw_set_alpha(0.4)
draw_set_colour(c_lime)
draw_rectangle(room_width/3+20, room_height/2-20, (room_width/3)*2-20, (room_height/3)*2-20, false)

draw_set_colour(c_white)
draw_set_alpha(1)
draw_text_ext(room_width/3 + 20, room_height/2 - 25, keyboard_string, 30, 425)