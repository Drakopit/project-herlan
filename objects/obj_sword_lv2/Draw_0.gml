if (current_state_exploration == MACHINE_EXPLORATION.INVENTORY) {
    if (mouse_x >= bbox_left &&
        mouse_y >= bbox_top &&
        mouse_x < bbox_right &&
        mouse_y < bbox_bottom) {
        draw_set_font(fo_default);
        draw_set_colour(c_white);
        draw_roundrect(x, y, x + 128, y + (16 * atributes_count), true);
        draw_set_colour(c_blue);
        draw_roundrect(x + 1, y, x + 126, y + (16 * atributes_count) - 1, false);
        draw_set_colour(c_white);            
        draw_set_halign(fa_center);
        draw_text(x, y + (0 * 16), string_hash_to_newline("Name: " + string(name)));
        draw_text(x, y + (1 * 16), string_hash_to_newline("Level: " + string(level)));
        draw_text(x, y + (2 * 16), string_hash_to_newline("Attack: " + string(atk)));
        draw_text(x, y + (3 * 16), string_hash_to_newline("Stength: " + string(str)));
        draw_text(x, y + (4 * 16), string_hash_to_newline("Cost: " + string(cost)));
        draw_text(x, y + (5 * 16), string_hash_to_newline("Description: " + string(description)));
        draw_set_halign(fa_left);
    }
} else {
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text(x + sprite_width / 2, y - sprite_height / 2, string_hash_to_newline(string(name)));
    draw_set_halign(fa_left);
}

draw_self();