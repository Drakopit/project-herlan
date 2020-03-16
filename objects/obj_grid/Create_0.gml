xCells = room_width div 32;
yCells = room_height div 32;

Grid = ds_grid_create(xCells, yCells);

for (var i = 0; i < xCells; i++) {
    for (var j = 0; j < yCells; j++) {
        ds_grid_add(Grid, i, j, 0);
    };
};

with (obj_collider_32x32) {
    ds_grid_add(obj_grid.Grid, x div 32, y div 32, 1);
    instance_destroy();
}

