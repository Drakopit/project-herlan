// If the turn is of player
if (turn_battle == TURN_BATTLE.PLAYER) {
    switch (current_battle_state)
    {
        case MENU_BATTLE.IDLE:
        
        break;
        
        case MENU_BATTLE.ATTACK:
        
        break;
        
        case MENU_BATTLE.MAGIC:
        
        break;
        
        case MENU_BATTLE.ITEM:
        
        break;
        
        case MENU_BATTLE.RUN:
        
        break;
    }
} else {
    // Enemy code goes here
    turn_battle = TURN_BATTLE.PLAYER;
}
 
