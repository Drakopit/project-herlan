/***************************************************
  Machine state of the world interaction
 ***************************************************/
 
#region MACHINE_WORLD
	globalvar enum MACHINE_WORLD {
	    EXPLORATION,
	    IN_BATTLE
	}
	// Set curret state of the world, like exploration (Free)
	globalvar current_world_state;
	current_world_state = MACHINE_WORLD.EXPLORATION;
#endregion

#region TURN_BATTLE
// Defines turn
globalvar enum TURN_BATTLE {
	PLAYER,
	ENEMY
}
globalvar turn_battle;
turn_battle = TURN_BATTLE.PLAYER;

// In case of Battle
globalvar turns_count;
globalvar enemy_count;
globalvar last_enemy;
#endregion