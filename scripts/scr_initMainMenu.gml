/***************************************************
  Menu in explorer mode
 ***************************************************/

globalvar menuOpen;
menuOpen = false;

ExplorerMenu = ds_list_create();
ds_list_add(ExplorerMenu, "Resume", "Options", "Quit");

ExplorerMenu_select = 0;
