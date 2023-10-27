/// @description Insert description here
// You can write your code in this editor



// Handle Collisions
var next_x = x + xVelocity;  // anticipated next x position
var next_y = y + yVelocity;  // anticipated next y position

if (!tilemap_collision_at_pixel(ct_layer_id_1, next_x, next_y))
{
    x = next_x;
    y = next_y;
}

if (!tilemap_collision_at_pixel(ct_layer_id_2, next_x, next_y))
{
    x = next_x;
    y = next_y;
}