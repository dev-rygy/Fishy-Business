/// @description Insert description here
// You can write your code in this editor

if (obj_game_manager.game_state == 2)
{
	sprite_index = spr_bob_uw;
}
else
{
	sprite_index = spr_bob;
}

image_xscale = 2;
image_yscale = 2;

draw_self();
