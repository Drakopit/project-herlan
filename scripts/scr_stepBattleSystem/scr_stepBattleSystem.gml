var subMenu = argument0; 

// Chose options { Developing... }
if (keyboard_check_released(vk_down)) {
    BattleMenu_select++;
    audio_play_sound(Retro_Cursor, 10, false);
    if (BattleMenu_select > BattleMenuLength[subMenu] -1) {
        BattleMenu_select = 0;
    };
} else if (keyboard_check_released(vk_up)) {
    BattleMenu_select--;
    audio_play_sound(Retro_Cursor, 10, false);
    if (BattleMenu_select < 0) {
        BattleMenu_select = BattleMenuLength[subMenu] - 1;
    };
}

// Chose some option
if (keyboard_check_released(vk_enter)) {
    // When chosen the option, the sub menu is taken
    // In order of explain the algorithm what do.
    BattleMenu_subSelect = BattleMenu_select;
    audio_play_sound(Chose_Option, 10, false);
    // Put the cursor in the begin of the selection
    // again.
    BattleMenu_select = 0;
    // Change the state according option chosen
    current_battle_state = BattleMenu_select + 1;
}

