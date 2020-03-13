if (keyboard_check_released(vk_down)) {
    BattleMenu_select++;
    audio_play_sound(Retro_Cursor, 10, false);
    if (BattleMenu_select > ds_list_size(BattleMenu)-1) {
        BattleMenu_select = 0;
    };
} else if (keyboard_check_released(vk_up)) {
    BattleMenu_select--;
    audio_play_sound(Retro_Cursor, 10, false);
    if (BattleMenu_select < 0) {
        BattleMenu_select = ds_list_size(BattleMenu) - 1;
    };
}
