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
	
	audio_play_sound(sfx_cast_swoosh, 10, false);
}

// tension meter will rise at a constant rate until it reaches it's minimum position
if (obj_game_manager.game_state == 2)
{
	if (tension_meter_direction == 1)	// Giving the line some slack
	{
		tension_meter_current_ui -= tension_meter_speed * room_speed;
		tension_meter_current = tension_meter_current_ui - tension_meter_ymin;
		
		started_reeling = false;
		
		if (tension_meter_current < 0) // Line snaps (case 1)
		{
			tension_meter_current = tension_meter_ymin;
			obj_game_manager.game_state = 4;
			audio_stop_sound(sfx_reel);
			
			audio_play_sound(sfx_line_snap, 10, false);
		}
	}
	else if (tension_meter_direction == 0)	// Reeling in the line
	{
		tension_meter_current_ui += tension_meter_speed * room_speed;
		tension_meter_current = tension_meter_current_ui - tension_meter_ymin;
		// TODO: increase tension force; the force of tension that when it reaches maximum -> the line snaps
		
		if(!started_reeling)
		{
			audio_play_sound(sfx_reel, 10, true);
		}
		
		started_reeling = true;
		
		if (tension_meter_current >= tension_meter_max) // Fish is caught (case 2)
		{
			audio_stop_sound(sfx_reel);
			tension_meter_current = tension_meter_ymax;
			obj_game_manager.is_caught = true;
			obj_game_manager.game_state = 3;	// Change state to catch
			// TODO: Catch the Fish
		}
	}
}
