if (menuOpen) {
    // draw_set_halign(fa_center);
    
    for (var i = 0; i < ds_list_size(ExplorerMenu); i++)
    {
        // Option
        draw_set_colour(c_white);
        draw_rectangle(view_hview[0] / 2, 256 + (i * 64), 128, 300, true);
        draw_set_colour(c_blue);
        draw_set_alpha(0.8);
        draw_rectangle(view_hview[0] / 2 - 1, 257 + (i * 64), 127, 299, true);
        draw_set_alpha(1);
        // Change option selected color
        if (ExplorerMenu_select == i) {
            draw_set_colour(c_white);
        } else {
            draw_set_colour(c_gray);
        }
        // Draw options text
        draw_text(view_hview[0] / 2, 260 + (i * 64), string(ExplorerMenu[| i]));
    };
    
    draw_set_halign(fa_left);
}
