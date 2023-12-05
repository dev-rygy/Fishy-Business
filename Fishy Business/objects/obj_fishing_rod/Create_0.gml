/// @description Insert description here
// You can write your code in this editor

// point at the tip of the fishing rod (Top right corner)
bobber = noone;

rod_tip_x = x + 200;
rod_tip_y = y + 50;

is_fishing = false;
is_casting = false;

image_speed = 0;
room_speed = 30;

tension_meter_direction = 1;
tension_meter_max = tension_meter_ymax - tension_meter_ymin;
tension_meter_current = tension_meter_max / 2;
tension_meter_current_ui = tension_meter_ymin + tension_meter_current;

if (obj_equipmentBox.inventory[1] != -1) {
	tension_force_max += obj_equipmentBox.inventory[1].lineStrength;
}