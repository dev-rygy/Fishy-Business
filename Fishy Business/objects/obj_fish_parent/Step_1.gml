// Variables to use for random events
var randSeed0;
var randSeed1;

switch (swimState) {
	case 0: // Swimming
		randSeed0 = random_range(0, 100);
		if (( distance_to_object(obj_fishing_rod.bobber) < 50 ) && (randSeed0 <= occurenceChance)) {
			swimState = 2;
			objectiveReached = true;
		}
		
		// Choose a new objective
		if (objectiveReached) {
			randSeed0 = random_range(20, 30); // Length
			randSeed1 = random_range(-15, 15); // Angle
			self.objective.x = self.x + lengthdir_x(randSeed0, self.direction + randSeed1);
			self.objective.y = self.y + lengthdir_y(randSeed0, self.direction + randSeed1);
			self.objectiveReached = false;
		}
		break;
		
	case 1:
		
		break;
	case 2: // Biting
		if (objectiveReached) {
			if (obj_fishing_rod.bobber != noone && obj_game_manager.game_state != 2) {
				self.objective.x = obj_fishing_rod.bobber.x;
				self.objective.y = obj_fishing_rod.bobber.y;
			}
			else {
				self.swimState = 0;
			}
			self.objectiveReached = false;
		}
		break;
	case 3: // Thrashing
		
		break;
}