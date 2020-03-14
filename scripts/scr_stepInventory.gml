if (keyboard_check_released(ord("I")) || keyboard_check_released(ord("i"))) {
    switch (current_state_exploration)
    {
        case MACHINE_EXPLORATION.INVENTORY:
            // inventoryOpen = false
            current_state_exploration = MACHINE_EXPLORATION.NOONE;
            instance_activate_all();
        break;
        case MACHINE_EXPLORATION.NOONE:
            //inventoryOpen = true;
            current_state_exploration = MACHINE_EXPLORATION.INVENTORY;
            Inventory = obj_player.Inventory;
            carry_weight = obj_player.carry_weight;
            instance_deactivate_all(true);
        break; 
    }
}

if (current_state_exploration == MACHINE_EXPLORATION.INVENTORY) {
    var inventorySize = sqrt(carry_weight);

    if (keyboard_check_released(vk_down)) {
        inventory_yPosition++;
        audio_play_sound(Retro_Cursor, 10, false);
        if (inventory_yPosition > inventorySize - 1) {
            inventory_yPosition = 0;
        };
    } else if (keyboard_check_released(vk_up)) {
        inventory_yPosition--;
        audio_play_sound(Retro_Cursor, 10, false);
        if (inventory_yPosition < 0) {
            inventory_yPosition = inventorySize - 1;
        };
    } else if (keyboard_check_released(vk_left)) {
        inventory_xPosition--;
        audio_play_sound(Retro_Cursor, 10, false);
        if (inventory_xPosition < 0) {
            inventory_xPosition = inventorySize - 1;
        };
    } else if (keyboard_check_released(vk_right)) {
        inventory_xPosition++;
        audio_play_sound(Retro_Cursor, 10, false);
        if (inventory_xPosition > inventorySize - 1) {
            inventory_xPosition = 0;
        };
    }

    if (keyboard_check_released(vk_enter)) {
        switch (Inventory[inventory_xPosition, inventory_yPosition])
        {
            case obj_sword_lv2:
                audio_play_sound(Chose_Option, 10, false);
                // Do something
            break;
        }         
    }
}
