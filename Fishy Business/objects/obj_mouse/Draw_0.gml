/// @description Insert description here
// You can write your code in this editor

if (itemDrag != -1){
	draw_set_alpha(.5)
	draw_sprite(object_get_sprite(obj_game_manager.gameInventory.inventory[slotDrag]),itemDrag,mouse_x,mouse_y)
	draw_set_alpha(1.0)
}












