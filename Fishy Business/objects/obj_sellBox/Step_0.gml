/// @description Insert description here
// You can write your code in this editor

if (self.inventory[0] != -1) {
	global.money += self.inventory[0].value;
	InventoryRemove(obj_sellBox, self.inventory[0]);
}



