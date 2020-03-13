// If the turn is of player
if (turn_battle == TURN_BATTLE.PLAYER) {
    switch (current_battle_state)
    {
        case MACHINE_BATTLE.IDLE:
        
        break;
        
        case MACHINE_BATTLE.ATTACK:
        
        break;
        
        case MACHINE_BATTLE.MAGIC:
        
        break;
        
        case MACHINE_BATTLE.ITEM:
        
        break;
        
        case MACHINE_BATTLE.RUN:
        
        break;
    }
} else {
    // Enemy code goes here
    turn_battle = TURN_BATTLE.PLAYER;
}
 
