if (current_world_state == MACHINE_WORLD.EXPLORATION) {
    // Exibição do Hp
    draw_set_colour(c_white); // Cor da borda
    draw_rectangle(x - (sprite_width), y - 8, x + (sprite_width), y - 2, true);
    // Fundo do Hp
    draw_set_colour(c_gray);
    draw_rectangle(x - ((sprite_width) - 1), y - 8, x + ((sprite_width) - 1), y - 2, false);
    // Hp Atual
    draw_set_colour(c_green);
    draw_rectangle(x - ((sprite_width) - 1), y - 8, x + ((Hp/MaxHp) * ((sprite_width) - 1)), y - 2, false);
}

// Desenha-se
draw_self();

