draw_set_halign(fa_center);
draw_set_font(fo_mainMenu);

for (var i = 0; i < ds_list_size(menu); i += 1) {
    if (menu_select == i) {
        draw_set_colour(c_white);
    } else {
        draw_set_colour(c_ltgray);
    }
    
    draw_text(room_width / 2, 256 + (i * 32), string_hash_to_newline(string(menu[| i])));
};

draw_set_colour(c_white);
draw_set_font(fo_default);
draw_set_halign(fa_left);

