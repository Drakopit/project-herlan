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
			turn_battle = TURN_BATTLE.ENEMY;
        break;
        
        case MENU_BATTLE.MAGIC:
			// Work in progress...
        break;
        
        case MENU_BATTLE.ITEM:
			// Work in progress...
        break;
        
        case MENU_BATTLE.RUN:
			
        break;
    }
} else {
    // Enemy code goes here
    turn_battle = TURN_BATTLE.PLAYER;
}
 
