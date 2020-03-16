// Verifica os botões pressionados pelo player 01
if (joystick_exists(p1)) {
    for (var i = 0; i <= joystick_buttons(p1); i++) {
        if (joystick_check_button(p1, i)) {
            current_button = i;
        }
    }
}

// Verifica os botões pressionados pelo player 02
if (joystick_exists(p2)) {
    for (var i = 0; i <= joystick_buttons(p2); i++) {
        if (joystick_check_button(p2, i)) {
            current_button = i;
        }
    }
}


