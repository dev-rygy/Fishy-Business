/// @description Insert description here
// You can write your code in this editor


show_debug_message(game_state);

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
	
	is_caught = false;
}
