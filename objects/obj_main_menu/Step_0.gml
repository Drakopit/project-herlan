if (keyboard_check_released(vk_down)) {
    menu_select++;
    audio_play_sound(Retro_Cursor, 10, false);
    if (menu_select > ds_list_size(menu)-1) {
        menu_select = 0;
    };
} else if (keyboard_check_released(vk_up)) {
    menu_select--;
    audio_play_sound(Retro_Cursor, 10, false);
    if (menu_select < 0) {
        menu_select = ds_list_size(menu) - 1;
    };
}

if (keyboard_check_released(vk_enter)) {
    audio_play_sound(Chose_Option, 10, false);
    switch (menu_select) {
        case MAIN_MENU.NOVO_JOGO:
            if(audio_is_playing(Windless_Slopes))
            {
                audio_stop_sound(Windless_Slopes);
            }
            room_goto_next();
        break;
        case MAIN_MENU.CONTINUAR:
            room_goto(room_load);
        break;
        case MAIN_MENU.SAIR:
            game_end();
        break;
        default: room_goto_next();
    }
};

