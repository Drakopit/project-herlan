if (keyboard_check_released(ord("I")) || keyboard_check_released(ord("i"))) {
    if (inventoryOpen) {
        inventoryOpen = false
        instance_activate_all();
    } else {
        inventoryOpen = true;
        instance_deactivate_all(true);
    }
}
