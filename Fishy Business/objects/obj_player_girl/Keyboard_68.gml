/// @description Insert description here
// You can write your code in this editor

// If the player is not in a right collision
if (!tilemap_get_at_pixel(ct_layer_id_1, x + xVelocity, y) && !obj_inventory.invState)
{
	self.x += xVelocity;	// Move the player right
}

if (anim_state == 0)
{
	anim_state = 2;
}