var width = display_get_gui_width();
var height = display_get_gui_height();

var box_w = 420;
var box_h = 200;
var box_x = (width - box_w) / 2;
var box_y = (height - box_h) / 2;

draw_set_color(c_black);
draw_set_alpha(0.85);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, true);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(width / 2, box_y + 25, "Save file detected");
draw_text(width / 2, box_y + 80, "Overwrite?");

var btn_w = 100;
var btn_h = 40;
var btn_y = box_y + 130;
var btn_yes_x = (width / 2) - btn_w - 20;
var btn_no_x  = (width / 2) + 20;

draw_set_color(c_green);
draw_rectangle(btn_yes_x, btn_y, btn_yes_x + btn_w, btn_y + btn_h, false);
draw_set_color(c_black);
draw_text(btn_yes_x + btn_w / 2, btn_y, "YES");

draw_set_color(c_red);
draw_rectangle(btn_no_x, btn_y, btn_no_x + btn_w, btn_y + btn_h, false);
draw_set_color(c_black);
draw_text(btn_no_x + btn_w / 2, btn_y, "NO");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);