/// @description Insert description here
// You can write your code in this editor

switch (swimState) {
	case 2:
		if (random_range(0, 100) < self.biteChance) {
			self.swimState = 3;
			
			obj_game_manager.current_fish = my_instance; // pass the id/reference to the object caught
			obj_game_manager.game_state = 2; // Change state to reeling
			obj_fishing_rod.is_casting = false;

			instance_destroy(self.objective);
		}
		else {
			self.swimState = 0;
		}
		break;
}
