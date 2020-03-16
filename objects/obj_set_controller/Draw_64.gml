draw_text(0,00, string_hash_to_newline("Nome do Joystick: " + string(joystick_name(p1))));
draw_text(0,16, string_hash_to_newline("Quantidade de Botões: " + string(joystick_buttons(p1))));
draw_text(0,32, string_hash_to_newline("Eixos: " + string(joystick_axes(p1))));
draw_text(0,48, string_hash_to_newline("Direções: " + string(joystick_direction(p1))));
draw_text(0,64, string_hash_to_newline("Tem POV: " + string(joystick_has_pov(p1))));

if (gamepad_is_supported()) {
    draw_text(00, 96, string_hash_to_newline("Gamepad count supporting: " + string(gamepad_get_device_count())));
    for (var i = 0; i <= gamepad_get_device_count(); i += 1) {
        if (gamepad_is_connected(i)) {
            draw_text(00, 128 + (i * 16), string_hash_to_newline("Gamepad Device: " + string(i) + " " + string(gamepad_get_description(i))));
            draw_text(00, 144 + (i * 16), string_hash_to_newline("Gamepad Button Count: " + string(gamepad_button_count(i))));            
        }// else {
            //draw_text(00, 128 + (i * 16), "No Gamepad Device: " + string(i));
        //}
    };    
}

