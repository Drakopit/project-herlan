// If the turn is of player
if (turn_battle == TURN_BATTLE.PLAYER) {
    switch (current_battle_state)
    {
        case MENU_BATTLE.IDLE:
            // Perfoms the actions of the main menu
            scr_stepBattleSystem(MENU_BATTLE.IDLE);
        break;
        
        case MENU_BATTLE.ATTACK:
            // Developing
            scr_simpleAttack(obj_player, other);
			current_battle_state = MENU_BATTLE.IDLE;
			turn_battle = TURN_BATTLE.ENEMY;
			turns_count++;
        break;
        
        case MENU_BATTLE.MAGIC:
			// Work in progress...
        break;
        
        case MENU_BATTLE.ITEM:
			// Work in progress...
        break;
        
        case MENU_BATTLE.RUN:
			var result = scr_run(obj_player, obj_enemy);
			current_battle_state = MENU_BATTLE.IDLE;
			turn_battle = TURN_BATTLE.ENEMY;
			if (!result) {
				turns_count++;
			}
        break;
    }
} else {
    // Enemy code goes here
    turn_battle = TURN_BATTLE.PLAYER;
}
 
