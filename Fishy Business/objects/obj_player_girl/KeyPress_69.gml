/// @description Insert description here
// You can write your code in this editor

if (tilemap_get_at_pixel(int_layer_id, x, y)
	&& tilemap_get_at_pixel(int_layer_id, x, y))
{
	obj_game_manager.game_state = 1; // Change game state to fishing
	room_goto_next();
}

if (tilemap_get_at_pixel(int_layer_id_2, x, y))
{
	if(!obj_shop.shopOpen)
	{
		obj_shop.shopOpen = true;
		global.shop = true;
	}
}
