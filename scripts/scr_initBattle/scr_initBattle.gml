#region MACHINE_BATTLE
globalvar enum MACHINE_BATTLE {
    IDLE,
    ATTACK,
    MAGIC,
    ITEM,
    RUN
}

globalvar current_battle_state;
current_battle_state = MACHINE_BATTLE.IDLE;
#endregion

