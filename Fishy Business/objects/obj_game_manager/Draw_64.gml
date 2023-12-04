/// @description Insert description here
// You can write your code in this editor

if(game_state == 0)
{
	draw_sprite(spr_w_button,0,1350,600)
	draw_text(1270,575,"UP -")

	draw_sprite(spr_a_button,0,1350,632)
	draw_text(1255,607,"LEFT -")

	draw_sprite(spr_s_button,0,1350,664)
	draw_text(1255,639,"DOWN -")

	draw_sprite(spr_d_button,0,1350,696)
	draw_text(1248,671,"RIGHT -")

	draw_sprite(spr_e_button,0,1350,500)
	draw_text(1220,475,"Interact -")
}

if (game_state == 3)
{
	draw_sprite(current_fish.my_sprite,0,683,384);
	
	// TODO: Add the fish to the player's inventory
	
}
