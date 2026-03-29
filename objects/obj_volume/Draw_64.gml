// draw line
draw_line(slider_x1, slider_y, slider_x2, slider_y);

// draw knob
draw_circle(knob_x, slider_y, 10, false);

knob_x = volume * 200 + 200;