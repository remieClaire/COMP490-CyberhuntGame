function s_grid_to_array(grid) {
    var _w = ds_grid_width(grid);
    var _h = ds_grid_height(grid);
    var _arr = [];

    for (var _x = 0; _x < _w; _x++) {
        _arr[_x] = [];
        for (var _y = 0; _y < _h; _y++) {
            _arr[_x][_y] = grid[# _x, _y];
        }
    }
    return _arr;
}