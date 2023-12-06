/// @description Insert description here
// You can write your code in this editor

if (itemDrag != -1){
	draw_set_alpha(.5)
	
	if (obj_inventory.inventory[slotDrag] == itemDrag) {
		draw_sprite(object_get_sprite(obj_inventory.inventory[slotDrag]),itemDrag,mouse_x,mouse_y);
	}
	else if (obj_sellBox.inventory[slotDrag] == itemDrag) {
		draw_sprite(object_get_sprite(obj_sellBox.inventory[slotDrag]),itemDrag,mouse_x,mouse_y);
	}
	else if (obj_equipmentBox.inventory[slotDrag] == itemDrag) {
		draw_sprite(object_get_sprite(obj_equipmentBox.inventory[slotDrag]),itemDrag,mouse_x,mouse_y);
	}
	draw_set_alpha(1.0)
}












