menu = ds_list_create();
ds_list_add(menu, "Novo Jogo", "Continuar", "Sair");
menu_select = 0;

enum MAIN_MENU {
    NOVO_JOGO,
    CONTINUAR,
    SAIR
}

audio_play_sound(Windless_Slopes, 10, true);

