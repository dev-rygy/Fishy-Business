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
			obj_game_manager.game_state = 3; //Change state to caught
			instance_create_layer(0,0,"Fish_objectives",obj_fish_caught_screen01)
			instance_create_layer(room_width/2, room_height/2 + 200, "Buttons", obj_continue_button)
			
			
		}
		else {
			self.swimState = 0;
		}
		break;
}
