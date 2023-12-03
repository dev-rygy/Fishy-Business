/// @description Insert description here
// You can write your code in this editor

switch (swimState) {
	case 2:
		if (random_range(0, 100) < self.biteChance) {
			obj_game_manager.game_state = 2; // Change state to reeling
			obj_game_manager.current_fish = my_instance; // pass the id/reference to the object caught
			
			obj_fishing_rod.is_casting = false;
			obj_fishing_rod.is_fishing = false;
			instance_destroy(obj_fishing_rod.bobber);
			instance_destroy(self.objective);
			instance_destroy(self);		// TODO: Do not destroy after bite
			// TODO: enter reeling state
			
			// Fish Caught State
			//Change state to caught
			obj_game_manager.game_state = 3; 
			
			//Screen randomizer
			var fishScreen = irandom_range(1,4)
			
			//Randomized Screens
			if(fishScreen = 1)
			{
				instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen01) 
			} else if(fishScreen = 2){
				instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen02) 
			} else if(fishScreen = 3){
				instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen03) 
			} else if(fishScreen = 4){
				instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen04) 
			}
			
			//TODO: Show fish that was caught 
			
			//Cont. Button
			instance_create_layer(room_width/2, room_height/2 + 280, "Buttons", obj_continue_button) 
			
		}
		else {
			self.swimState = 0;
		}
		break;
}
