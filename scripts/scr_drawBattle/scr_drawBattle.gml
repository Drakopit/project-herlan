draw_set_color(c_white);

draw_text(camera_get_view_width(view_camera[0]) / 2, 10, string_hash_to_newline("IN BATTLE"));

if (turn_battle == TURN_BATTLE.PLAYER) {
    draw_text(10,10, string("Turno do Jogador!"));
} else if (turn_battle == TURN_BATTLE.ENEMY) {
    draw_text(10,10, string("Turno do Inimigo!"));
} else {
    draw_text(10,10, string("Erro de Turno!"));
}

draw_text(10, 30, "Número de Turnos: " + string(turns_count));

draw_text(10, 50, "Número de inimigos: " + string(enemy_count));

