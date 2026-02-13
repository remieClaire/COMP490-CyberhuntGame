draw_sprite_ext(spr_machine, -1, room_width, room_height, 1, 1, 0, c_white, 1);

draw_set_alpha(1)
draw_set_colour(c_green)
draw_rectangle(room_width/3, room_height/3, (room_width/3)*2, (room_height/3)*2, false)
draw_set_colour(c_white)
//draw_text_ext(room_width/3-7, room_height/3, encrypted_message, 25, ((room_height/3)*2-5) - (room_width/3-7));
draw_text_transformed(room_width/2, room_height/2 - 100, encrypted_message, 0.75, 0.75, 0)

draw_self()

draw_set_alpha(0.4)
draw_set_colour(c_lime)
draw_rectangle(room_width/3+20, room_height/2-20, (room_width/3)*2-20, (room_height/3)*2-20, false)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_colour(c_white)
draw_set_alpha(1)
draw_text(room_width/2, room_height/2 + 20, keyboard_string)