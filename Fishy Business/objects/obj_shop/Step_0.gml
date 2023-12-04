/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(vk_space)){
	
	shopOpen = true
	global.shop = true
	
	
}
else if (shopOpen)&& (keyboard_check(vk_escape)){
	
	shopOpen = false
	global.shop = false
}

if (shopOpen){
	
	obj_inventory.x = obj_player_girl.x
    obj_inventory.y = obj_player_girl.y
	obj_inventory.visible = true
	obj_inventory.invState = true
	obj_player_girl.visible = false
	
	obj_sellBox.x = obj_inventory.x - 50;
	obj_sellBox.y = obj_inventory.y + 150;
	obj_sellBox.visible = true;
	obj_sellBox.invState = true;
	
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
	
	selected++;
	if (selected == itemCount) selected = 0
}
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
	
	selected--;
	if (selected <0) selected = itemCount-1
}

	var item = items[selected].name;
	var price = items[selected].value;
	
	if (keyboard_check_pressed(vk_enter) && (InventorySearch(obj_inventory, -1) != -1)){
		InventoryAdd(obj_inventory, items[selected]);
		global.money -= price;
	}
}
else if (!shopOpen && !obj_inventory.invState) {
	obj_inventory.visible = false
	obj_player_girl.visible = true
}
