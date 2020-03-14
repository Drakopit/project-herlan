xCells = room_width div 32;
yCells = room_height div 32;

for (var i = 0; i < xCells; i++)
{
    for (var j = 0; j < yCells; i++)
    {
        Grid[i, j] = 0;
    };
};

with (obj_collider_32x32) {
    obj_grid.Grid[x div 32, y div 32] = 1;
    instance_destroy();
}
