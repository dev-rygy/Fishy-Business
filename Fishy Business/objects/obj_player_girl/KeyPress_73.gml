/// @description Insert description here
// You can write your code in this editor


if (inv_state){
	obj_inventory.visible = false
	inv_state = false
	visible = true
}
else{
	obj_inventory.x =  x

    obj_inventory.y =  y
	obj_inventory.visible = true
	inv_state = true
	visible = false
	
}

