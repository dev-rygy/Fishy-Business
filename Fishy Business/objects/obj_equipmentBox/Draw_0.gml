/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor
if (self.invState) {
	draw_sprite_stretched(sInventory, 0, x - 6, y - 6, 12 + self.rowLength * 36, 
			12+(((EQUIPMENT_SLOTS-1) div self.rowLength)+1)*36);


	for (var i = 0; i < EQUIPMENT_SLOTS; i += 1){
		var xx = x + (i mod self.rowLength) * 36 + 17;
		var yy = y + (i div self.rowLength)* 36 + 17;
		var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == i);
	
		if (i == 0) draw_sprite(spr_rod_silhouette,hover,xx,yy);
		if (i == 1) draw_sprite(spr_line_silhouette,hover,xx,yy);
		if (i == 2) draw_sprite(spr_bait_silhouette,hover,xx,yy);
	
		if (self.inventory[i] != -1)
		{
			var alpha = 1.0
			if(obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == i) alpha = 0.5
			draw_set_alpha(alpha);
		    draw_sprite(object_get_sprite(self.inventory[i]), self.inventory[i],xx,yy)
			draw_set_alpha(1.0)
		}
	
	}
}




