/// @description Insert description here
// You can write your code in this editor

if (!is_fishing && !is_casting && mouse_check_button_pressed(mb_left))
{
	is_casting = true;
	
	fishing_point_x = mouse_x;
	fishing_point_y = mouse_y;
	
	timer = room_speed * 1;
	alarm[0] = room_speed * 1;
	image_speed = 0.5;
	timer -= 1;
}

// tension meter will rise at a constant rate until it reaches it's minimum position
if (obj_game_manager.game_state == 2)
{
	if (tension_meter_direction = 1)
	{
		tension_meter_current -= tension_meter_speed * room_speed;
		
		if (tension_meter_current < tension_meter_ymin) // Line snaps (case 0)
		{
			tension_meter_direction = 0;
			tension_meter_current = tension_meter_ymin;
		}
	}
	/*
	if (tension_meter_current < tension_meter_ymin)
		{
			tension_meter_direction = 0;
			tension_meter_current = tension_meter_ymin;
		}
	*/
}
