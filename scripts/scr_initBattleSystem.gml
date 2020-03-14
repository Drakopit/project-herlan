/***************************************************
  Menu in battle world
 ***************************************************/

enum MENU_BATTLE {
    IDLE,
    ATTACK,
    MAGIC,
    ITEM,
    RUN
}

/***************************************************
  Menu Battle Options
 ***************************************************/ 
 
if (false) {
// Menus length 
BattleMenuLength = array_create(5);
  
// Main menu battle
BattleMenu[MENU_BATTLE.IDLE, 00] = "Attack";
BattleMenu[MENU_BATTLE.IDLE, 01] = "Magic";
BattleMenu[MENU_BATTLE.IDLE, 02] = "Item";
BattleMenu[MENU_BATTLE.IDLE, 03] = "Run";
BattleMenuLength[MENU_BATTLE.IDLE] = array_length_2d(BattleMenu, MENU_BATTLE.IDLE);

// Sub menu magic option
for (var i = 0; i < array_length_2d(obj_player.Magics, 0); i++) {
    BattleMenu[MENU_BATTLE.MAGIC, i] = obj_player.Magics[0, i];
}
BattleMenuLength[MENU_BATTLE.MAGIC] = array_length_2d(BattleMenu, MENU_BATTLE.MAGIC);

// Sub menu item option
for (var i = 0; i < array_length_2d(obj_player.Inventory, 0); i++) {
    BattleMenu[MENU_BATTLE.ITEM, i] = obj_player.Inventory[0, i];
}
BattleMenuLength[MENU_BATTLE.ITEM] = array_length_2d(BattleMenu, MENU_BATTLE.ITEM);

// Sub menu run option
BattleMenu[MENU_BATTLE.RUN, 00] = true;
BattleMenuLength[MENU_BATTLE.RUN] = array_length_2d(BattleMenu, MENU_BATTLE.RUN);

// Cursors
BattleMenu_select = 0; // Option selected
BattleMenu_subSelect = 0; // Wich menu is
}
