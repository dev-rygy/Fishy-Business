/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor


draw_sprite_stretched(
sInventory,
0,
x-6,
y-6,
12+rowLength*36,
12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36);


for (var i = 0; i <INVENTORY_SLOTS; i += 1){
	var xx = x + (i mod rowLength) * 36 + 12;
	var yy = y + (i div  rowLength)* 36 + 12;
	var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == i)
	draw_sprite(sSlot,hover,xx,yy)
	if (inventory[i] != -1)
	{
		var alpha = 1.0
		if(obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == i) alpha = 0.5
		draw_set_alpha(alpha);
	    draw_sprite(sItems,inventory[i],xx,yy)
		draw_set_alpha(1.0)
	}
	
}

if invState = 1 {
	
	draw_sprite_ext(spr_girl_down,0,x+250,y+100,5,5,0,c_white,1)
}






