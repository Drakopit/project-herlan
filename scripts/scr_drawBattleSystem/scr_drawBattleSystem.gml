// If is player turn
if (turn_battle == TURN_BATTLE.PLAYER) {    
    for (var i = 0; i < BattleMenuLength[current_battle_state]; i++)
    {
        if (BattleMenu_select = i) {
            draw_set_colour(c_white);
        } else {
            draw_set_colour(c_gray);
        };
        
        draw_text(64, 256 + (i * 16), string(BattleMenu[current_battle_state, i]));
    };            
}

