if (current_state_exploration == MACHINE_EXPLORATION.MENU) {
    draw_set_colour(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), false);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    draw_set_valign(fa_center);
    draw_set_halign(fa_center);
    
    for (var i = 0; i < ds_list_size(ExplorerMenu); i++)
    {
        // Option
        draw_set_colour(c_white);
        draw_rectangle(__view_get( e__VW.WPort, 0 ) / 2 - 64, 196 + (i * 64), __view_get( e__VW.WPort, 0 ) / 2 + 64, 240 + (i * 64), true);
        draw_set_colour(c_blue);
        draw_set_alpha(0.8);
        draw_rectangle(__view_get( e__VW.WPort, 0 ) / 2 - 63, 198 + (i * 64) + 1, __view_get( e__VW.WPort, 0 ) / 2 + 63, 239 + (i * 64), false);
        draw_set_alpha(1);
        
        // Change option selected color
        if (ExplorerMenu_select == i) {
            draw_set_colour(c_white);
        } else {
            draw_set_colour(c_gray);
        }

        // Draw options text
        draw_text(__view_get( e__VW.WPort, 0 ) / 2, 220 + (i * 64), string_hash_to_newline(string(ExplorerMenu[| i])));
    };
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
