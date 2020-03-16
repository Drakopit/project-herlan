globalvar p1, p2;

// Caso exista o Player 01
p1 = joystick_exists(1);

// Caso exista o Player 02
p2 = joystick_exists(2);

globalvar enum JOYSTICK_BUTTONS {
    NONE = 00,
    A = 01,
    B = 02,
    X = 04,
    Y = 05,
    R1 = 08,
    R2 = 10,
    L1 = 07,
    L2 = 09,
    START = 12,
    SELECT = 11,
    LEFT_ANALOG = 14,
    RIGHT_ANALOG = 15
}

globalvar current_button;
current_button = JOYSTICK_BUTTONS.NONE;

globalvar enum JOYSTICK_DIRECTIONS {
    IDLE = 101,
    LEFT = 100,
    RIGHT = 102,
    UP = 104,
    DOWN = 98
}


