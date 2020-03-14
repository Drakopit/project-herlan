if (!isMoving) {
        // Horizontal Move
    if (keyboard_check(vk_right) || keyboard_check(ord('D')) || keyboard_check(ord('d'))) {
        if (obj_grid.Grid[# x div 32 + 1, y div 32] == 0) {
            isMoving = true;
            moveTimer = gridSize;
            hSpeed = velocity;
            vSpeed = 0;
            sprite_index = spr_right;
            // image_xscale = 1;
        }
    } else if (keyboard_check(vk_left) || keyboard_check(ord('A')) || keyboard_check(ord('a'))) {
        if (obj_grid.Grid[# x div 32 - 1, y div 32] == 0) {
            isMoving = true;
            moveTimer = gridSize;
            hSpeed = -velocity;
            vSpeed = 0;
            
            sprite_index = spr_left;
            // image_xscale = -1;
        }
    }
    
    // Vertical move
    if (keyboard_check(vk_up) || keyboard_check(ord('W')) || keyboard_check(ord('w'))) {
        if (obj_grid.Grid[# x div 32, y div 32 - 1] == 0) {
            isMoving = true;
            moveTimer = gridSize;
            hSpeed = 0;
            vSpeed = -velocity;
            
            sprite_index = spr_up;
        }
    } else if (keyboard_check(vk_down) || keyboard_check(ord('S')) || keyboard_check(ord('s'))) {
        if (obj_grid.Grid[# x div 32, y div 32 + 1] == 0) {
            isMoving = true;
            moveTimer = gridSize;
            hSpeed = 0;
            vSpeed = velocity;
            
            sprite_index = spr_down;
        }
    }
}


if (isMoving) {
    x += hSpeed;
    y += vSpeed;
    
    moveTimer -= velocity;
    
    if (moveTimer == 0) {
        isMoving = false;
    }
} else {
    // If idle    
    sprite_index = spr_idle;
}
