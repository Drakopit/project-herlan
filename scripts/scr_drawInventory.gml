if (current_state_exploration == MACHINE_EXPLORATION.INVENTORY) {
    var inventorySize = sqrt(carry_weight);
    var slotSize = 32;
    
    // Let the screem dark
    draw_set_colour(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    // Calcule maximum size of the window
    var sizeWindow = (inventorySize * slotSize) + 16; // The last number is the space for the slots
    
    // Draw window first
    draw_set_colour(c_white);
    draw_rectangle(view_wport[0] / 2 - (sizeWindow / 2), view_hport[0] / 2 - (sizeWindow / 2), view_wport[0] / 2 + (sizeWindow / 2), view_hport[0] / 2 + (sizeWindow / 2), true);
    draw_set_colour(c_maroon);
    draw_set_alpha(0.8);
    draw_rectangle(view_wport[0] / 2 - (sizeWindow / 2) + 1, view_hport[0] / 2 - (sizeWindow / 2) + 1, view_wport[0] / 2 + (sizeWindow / 2) - 1, view_hport[0] / 2 + (sizeWindow / 2) - 1, false);
    draw_set_alpha(1);
    
    var initialXPosition = (view_wport[0] / 2) - (sizeWindow / 2) + 4;
    var initialYPosition = (view_hport[0] / 2) - (sizeWindow / 2) + 4;
    
    // Draw slots and itens
    for (var xx = 0; xx < inventorySize; xx++) {
        for (var yy = 0; yy < inventorySize; yy ++)
        {
            if (Inventory[xx, yy] == noone) {
                draw_sprite(spr_slots, 0, initialXPosition + (xx * slotSize) + (xx * 2), initialYPosition + (yy * slotSize) + (yy * 2));
            } else {
                draw_sprite(spr_slots, 1, initialXPosition + (xx * slotSize) + (xx * 2), initialYPosition + (yy * slotSize) + (yy * 2));
                draw_sprite(Inventory[xx, yy].sprite_index, 0, initialXPosition + (xx * slotSize) + (xx * 2), initialYPosition + (yy * slotSize) + (yy * 2));            
            }
            
            if (inventory_xPosition == xx && inventory_yPosition == yy) {
                draw_sprite(spr_cursor, 0, initialXPosition + (xx * slotSize) + (xx * 2), initialYPosition + (yy * slotSize) + (yy * 2));
            }
        }
    }
    
}
