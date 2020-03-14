/***************************************************
  Main menu exploration system
 ***************************************************/

// Open or close main menu
if (keyboard_check_released(vk_escape)) {
    switch (current_state_exploration)
    {
        case MACHINE_EXPLORATION.MENU:
            current_state_exploration = MACHINE_EXPLORATION.NOONE;
            instance_activate_all();
        break;
        
        case MACHINE_EXPLORATION.NOONE:
            current_state_exploration = MACHINE_EXPLORATION.MENU;
            instance_deactivate_all(true);        
        break;
    }     
}

// If main menu exploration is open
if (current_state_exploration == MACHINE_EXPLORATION.MENU) {
    // Movement on menu
    if (keyboard_check_released(vk_down)) {
        ExplorerMenu_select++;
        audio_play_sound(Retro_Cursor, 10, false);
        if (ExplorerMenu_select > ds_list_size(ExplorerMenu)-1) {
            ExplorerMenu_select = 0;
        };
    } else if (keyboard_check_released(vk_up)) {
        ExplorerMenu_select--;
        audio_play_sound(Retro_Cursor, 10, false);
        if (ExplorerMenu_select < 0) {
            ExplorerMenu_select = ds_list_size(ExplorerMenu) - 1;
        };
    }
    
    // When chose option
    if (keyboard_check_released(vk_enter)) {
         switch (ExplorerMenu_select)
         {
             case 0:
                current_state_exploration = MACHINE_EXPLORATION.NOONE;
                instance_activate_all();
             break;
    
             case 1:
                 // Code goes here
             break;
    
             case 2:
                 game_end();
             break;
        }
    }
}
