if (keyboard_check_released(vk_escape)) {
    if (menuOpen) {
        menuOpen = false
        instance_activate_all();
    } else {
        menuOpen = true;
        instance_deactivate_all(true);
    }
}
