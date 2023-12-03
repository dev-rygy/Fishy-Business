/// @description Catch the fish
// You can write your code in this editor

obj_game_manager.game_state = 2; // Change state to reeling
obj_game_manager.current_fish = my_instance; // pass the id/reference to the object caught
			
obj_fishing_rod.is_casting = false;
//obj_fishing_rod.is_fishing = false;
//instance_destroy(obj_fishing_rod.bobber);
instance_destroy(self.objective);
instance_destroy(self);		// TODO: Do not destroy after bite
// TODO: enter reeling state




