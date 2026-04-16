function s_array_to_grid(arr, width, height) {
    var _grid = ds_grid_create(width, height);

    for (var _x = 0; _x < width; _x++) {
        for (var _y = 0; _y < height; _y++) {
            _grid[# _x, _y] = arr[_x][_y];
        }
    }
    return _grid;
}