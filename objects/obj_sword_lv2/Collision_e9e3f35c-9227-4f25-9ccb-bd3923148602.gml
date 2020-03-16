with(obj_player) {
	var inventoryXSize = array_length_2d(Inventory, 0);
	var inventoryYSize = array_length_2d(Inventory, 1);
    
	for (var xx = 0; xx < inventoryXSize; xx++) {
	    for (var yy = 0; yy < inventoryYSize; yy++)
	    {
	        if (Inventory[xx, yy] != noone) {
	            Inventory[xx, yy] = obj_sword_lv2;
	            break;
	        }
	    };
	};
}
instance_destroy();
