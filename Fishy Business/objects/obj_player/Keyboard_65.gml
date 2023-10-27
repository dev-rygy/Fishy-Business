/// @description Insert description here
// You can write your code in this editor

// If the player is not in a left collision
if (!tilemap_get_at_pixel(ct_layer_id_1, x - xVelocity, y)
	&& !tilemap_get_at_pixel(ct_layer_id_2, x - xVelocity, y))
{
	self.x = self.x - xVelocity; // Move the player left
}