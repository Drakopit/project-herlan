draw_set_color(c_white);

if (turn_battle == TURN_BATTLE.PLAYER) {
    draw_text(10,10, string("Turno do Jogador!"));
} else if (turn_battle == TURN_BATTLE.ENEMY) {
    draw_text(10,10, string("Turno do Inimigo!"));
} else {
    draw_text(10,10, string("Erro de Turno!"));
}

draw_text(10, 30, "Número de Turnos: " + string(turns_count));

draw_text(10, 50, "Número de inimigos: " + string(enemy_count));

