/// @description Insert description here
// You can write your code in this editor

// If player is not in a down collision
if (!tilemap_get_at_pixel(ct_layer_id_1, x, y + yVelocity))
{
	self.y = self.y + yVelocity;	// Move the player down
}

if (anim_state == 0)
{
	anim_state = 1;
}