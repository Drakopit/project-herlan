/***************************************************
  Initialize exploration scripts
 ***************************************************/

// Machine state that role explorations menu
globalvar enum MACHINE_EXPLORATION {
    NOONE,
    MENU,
    INVENTORY
}
globalvar current_state_exploration;
current_state_exploration = MACHINE_EXPLORATION.NOONE;
