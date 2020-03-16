/// @description Draw the enemy

if (current_world_state == MACHINE_WORLD.IN_BATTLE) {
	var barSize = 32;
	var spaceOfTop = 8;
	var bar = 4;
	
    // Exibição do Hp
    draw_set_colour(c_white); // Cor da borda
    draw_rectangle(x, y - spaceOfTop, x + barSize, y - spaceOfTop + bar, true);
    // Fundo do Hp
    draw_set_colour(c_gray);
    draw_rectangle(x + 1, y - spaceOfTop + 1, x + barSize, y - spaceOfTop + bar - 1, false);
    // Hp Atual
    draw_set_colour(c_red);
    draw_rectangle(x + 1, y - spaceOfTop + 1, x + (Hp/MaxHp) * barSize -1, y - spaceOfTop + bar - 1, false);
}

draw_self();