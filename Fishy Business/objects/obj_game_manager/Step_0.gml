/// @description Insert description here
// You can write your code in this editor


if (is_caught && game_state == 3)
{	
	//Screen randomizer
	var fishScreen = irandom_range(1,4)
			
	//Randomized Screens
	if(fishScreen == 1)
	{
		instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen01) 
	} else if(fishScreen == 2){
		instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen02) 
	} else if(fishScreen == 3){
		instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen03) 
	} else if(fishScreen == 4){
		instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen04)
	}
			
	//TODO: Show fish that was caught 
	
	//Cont. Button
	instance_create_layer(room_width/2, room_height/2 + 280, "Buttons", obj_continue_button)
	
	audio_play_sound(sfx_fish_caught, 10, false);
	
	InventoryAdd(obj_inventory, current_fish.my_item);
	is_caught = false;
}

if (game_state == 4)
{
	if (obj_fishing_rod.is_fishing)
	{
		instance_destroy(obj_fishing_rod.bobber);
		instance_destroy(current_fish);
	}
	current_fish = noone;
	
	obj_fishing_rod.is_fishing = false;
	obj_fishing_rod.is_casting = false;
	
	obj_fishing_rod.tension_meter_direction = 1;
	obj_fishing_rod.tension_meter_current = obj_fishing_rod.tension_meter_max / 2;
	obj_fishing_rod.tension_meter_current_ui = obj_fishing_rod.tension_meter_ymin + obj_fishing_rod.tension_meter_current;
	
	audio_stop_sound(sfx_reel);
	audio_stop_sound(sfx_fish_fight);
	obj_fishing_rod.started_reeling = false
	obj_fishing_rod.tension_force_current = 0;
	obj_fishing_rod.percentage_shake = 0;
	
	game_state = 1;
}