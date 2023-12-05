/// @description Insert description here
// You can write your code in this editor


if (obj_inventory.invState){
	obj_inventory.visible = false
	obj_inventory.invState = false
	visible = true
	
	obj_equipmentBox.visible = false;
	obj_equipmentBox.invState = false;
}
else{
	obj_inventory.x =  x
    obj_inventory.y =  y
	obj_inventory.visible = true
	obj_inventory.invState = true
	visible = false
	
	obj_equipmentBox.x = x -53;
	obj_equipmentBox.y = y;
	obj_equipmentBox.visible = true;
	obj_equipmentBox.invState = true;
}

