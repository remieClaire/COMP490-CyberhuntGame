draw_self();

draw_set_font(global.font_main);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x + 0, y + 0, string(buttonText) + "");

draw_set_halign(fa_left);
draw_set_valign(fa_top);