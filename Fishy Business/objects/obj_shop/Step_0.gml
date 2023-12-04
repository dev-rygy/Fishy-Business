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
	
	if (keyboard_check_pressed(vk_down)){
	
	selected++;
	if (selected == itemCount) selected = 0
}
	if (keyboard_check_pressed(vk_up)){
	
	selected--;
	if (selected <0) selected = itemCount-1
}
	var arr = items[|selected]
	var item = arr[0]
	var price = arr[1]
	
	if (keyboard_check_pressed(vk_enter)){
		ds_list_add(global.inv, item)
		global.money -= price	
	}
}

