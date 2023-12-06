/// @description Insert description here
// You can write your code in this editor

// If the player is not in a up collision
if (!tilemap_get_at_pixel(ct_layer_id_1, x, y - yVelocity) && !obj_inventory.invState)
{
	self.y -= yVelocity;	// move the player up
}

if (anim_state == 0)
{
	anim_state = 3;
}