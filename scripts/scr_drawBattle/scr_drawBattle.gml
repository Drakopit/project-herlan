if (turn_battle == TURN_BATTLE.PLAYER) {
    draw_text(10,10, string_hash_to_newline("Turno do Jogador!"));
} else if (turn_battle == TURN_BATTLE.ENEMY) {
    draw_text(10,10, string_hash_to_newline("Turno do Inimigo!"));
} else {
    draw_text(10,10, string_hash_to_newline("Erro de Turno!"));
}

draw_text(10, 30, string_hash_to_newline("Número de Turnos: " + string(turns_count)));

draw_text(10, 50, string_hash_to_newline("Número de inimigos: " + string(enemy_count)));

