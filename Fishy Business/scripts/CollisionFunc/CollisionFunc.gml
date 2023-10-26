// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function tilemap_collision_at_pixel(tilemap, px, py)
{
    var cell_x = floor(px / tile_width);  // Convert pixel position to cell position
    var cell_y = floor(py / tile_height);

    // Get the tile index at the cell position
    var tile_data = tilemap_get_at_pixel(tilemap, cell_x, cell_y);

    // If tile_data is not equal to -1, there's a tile at that position
    return (tile_data != -1);
}