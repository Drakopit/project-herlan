draw_text(400, 10, "IN BATTLE");

// If is player turn
if (turn_battle == TURN_BATTLE.PLAYER) {
    var menu_reading = ds_map_find_value(BattleMenu, MENU_BATTLE.IDLE);
    var current_menu = ds_list_read(BattleMenuIdle, menu_reading);
    
    draw_text(10,128, string(current_menu));
    
    for (var i = 0; i < ds_list_size(BattleMenuIdle); i++)
    {
        if (BattleMenu_select = i) {
            draw_set_colour(c_white);
        } else {
            draw_set_colour(c_gray);
        };
        
        draw_text(50, 200 + (i * 16), string(BattleMenu[BattleMenu_subSelect, i]));
    };            
}

