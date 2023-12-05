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
	if (tension_meter_direction == 1)	// Giving the line some slack
	{
		tension_meter_current_ui -= tension_meter_speed * room_speed;
		tension_meter_current = tension_meter_current_ui - tension_meter_ymin;
		
		if (tension_force_current > 0)	// Giving fish slack and decreasing force
			tension_force_current -= 20;
		else
			tension_force_current = 0;
		
		if (tension_meter_current < 0) // Fish Flees (case 1)
		{
			tension_meter_current = tension_meter_ymin;
			obj_game_manager.game_state = 4;
		}
	}
	else if (tension_meter_direction == 0)	// Pulling on the line
	{
		tension_meter_current_ui += tension_meter_speed * room_speed;
		tension_meter_current = tension_meter_current_ui - tension_meter_ymin;
		// TODO: increase tension force; the force of tension that when it reaches maximum -> the line snaps
		
		tension_force_current += obj_game_manager.current_fish.tension_force;	// Fish increasing the force on the line
		
		if (tension_force_current >= tension_force_max) // Line Staps (case 2)
		{
			// TODO: Add snapping sound
			obj_game_manager.game_state = 4;
		}
		
		if (tension_meter_current >= tension_meter_max) // Fish is caught (case 2)
		{
			tension_meter_current = tension_meter_ymax;
			obj_game_manager.is_caught = true;
			obj_game_manager.game_state = 3;	// Change state to catch
		}
	}
}
