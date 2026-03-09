draw_self();

var x_text = x - camera_get_view_x(0);
var y_text = y - camera_get_view_y(0);

x_text += sprite_get_width(spr_screen)/2;
y_text += sprite_get_height(spr_screen)/2;

draw_set_font(f_largeSilver);
draw_text(x_text, y_text, obj_radioDial.subByte);