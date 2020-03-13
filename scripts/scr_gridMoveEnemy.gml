if (!isMoving) {
    switch (move)
    {
        // right
        case DIRECTIONS.RIGHT:
            if (obj_grid.Grid[# x div 32 + 1, y div 32] == 0) {
                isMoving = true;
                moveTimer = gridSize;
                hSpeed = velocity;
                vSpeed = 0;
                sprite_index = spr_right;
                // image_xscale = 1;
            }
        break;
        
        // left
        case DIRECTIONS.LEFT:
            if (obj_grid.Grid[# x div 32 - 1, y div 32] == 0) {
                isMoving = true;
                moveTimer = gridSize;
                hSpeed = -velocity;
                vSpeed = 0;
                
                sprite_index = spr_left;
                // image_xscale = -1;
            }
        break;
        
        // up
        case DIRECTIONS.UP:
            if (obj_grid.Grid[# x div 32, y div 32 - 1] == 0) {
                isMoving = true;
                moveTimer = gridSize;
                hSpeed = 0;
                vSpeed = -velocity;
                
                sprite_index = spr_up;
            }
        break;
        
        // down
        case DIRECTIONS.DOWN:
            if (obj_grid.Grid[# x div 32, y div 32 + 1] == 0) {
                isMoving = true;
                moveTimer = gridSize;
                hSpeed = 0;
                vSpeed = velocity;
                
                sprite_index = spr_down;
            }
        break;        
    }
    move = round(choose(0, 1, 2, 3, 4));
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
