/// @description Insert description here
// You can write your code in this editor

if(game_state == 0)
{
	if(obj_shop.shopOpen)
	{
		draw_sprite(spr_up_button,0,1270,100);
		draw_text(1215,100,"UP -");

		draw_sprite(spr_down_button,0,1270,150);
		draw_text(1200,150,"DOWN -");

		draw_sprite(spr_enter_button,0,1270,200);
		draw_text(1208,200,"Buy -");

		draw_sprite(spr_esc,0,1270,250);
		draw_text(1190,250,"Leave -");
	}
	else if(obj_inventory.invState)
	{
		draw_sprite(spr_w_button,0,1350,200)
		draw_text(1230,140,"UP -")

		draw_sprite(spr_a_button,0,1350,232)
		draw_text(1215,173,"LEFT -")

		draw_sprite(spr_s_button,0,1350,264)
		draw_text(1215,204,"DOWN -")

		draw_sprite(spr_d_button,0,1350,296)
		draw_text(1208,236,"RIGHT -")

		draw_sprite(spr_e_button,0,1350,100)
		draw_text(1190,40,"Interact -")
	
		draw_sprite(spr_i_button,0,1350,140)
		draw_text(1180,80,"Inventory -")
	}
	
	else
	{
		draw_sprite(spr_w_button,0,1350,600)
		draw_text(1230,540,"UP -")

		draw_sprite(spr_a_button,0,1350,632)
		draw_text(1215,573,"LEFT -")

		draw_sprite(spr_s_button,0,1350,664)
		draw_text(1215,604,"DOWN -")

		draw_sprite(spr_d_button,0,1350,696)
		draw_text(1208,636,"RIGHT -")

		draw_sprite(spr_e_button,0,1350,500)
		draw_text(1190,440,"Interact -")
	
		draw_sprite(spr_i_button,0,1350,540)
		draw_text(1180,480,"Inventory -")
	}
}

if(game_state == 1)
{
	draw_sprite(spr_lmb,0,1350,560)
	draw_text(1230,520,"Cast -")

	draw_sprite(spr_rmb,0,1350,625)
	draw_text(1210,580,"Cancel -")
}

if(game_state == 2)
{
	draw_sprite(spr_lmb,0,1350,560)
	draw_text(1230,520,"Reel -")

	draw_sprite(spr_rmb,0,1350,625)
	draw_text(1210,580,"Cancel -")
}

if (game_state == 3)
{
	draw_sprite(current_fish.my_sprite,0,683,384);
	
	// TODO: Add the fish to the player's inventory
	
}
