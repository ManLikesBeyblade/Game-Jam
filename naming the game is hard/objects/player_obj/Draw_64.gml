var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 70;

draw_set_font(button_fant);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// healthbar
var _health_bar = _barw * (hp/total_hp);
draw_sprite_stretched(bar_sprite, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(bar_sprite, 1, _dx, _dy, _health_bar, _barh, c_red, 0.8);

draw_text(_dx + _barw / 2, _dy + (_barh / 2) - (_barh / 4), "HP");