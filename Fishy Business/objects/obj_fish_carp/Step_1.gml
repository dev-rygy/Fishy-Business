// Variable to use for random events
var randSeed;

switch (swim_state) {
	case 0:
	// If the fish is swimming and within the outer sixth of the area, there is a 40% chance to swim offscreen
		if (self.x < room_width/6 || self.x > (room_width/6)*5 || self.y < room_width/6 || self.y > (room_height/6)*5) {
			randSeed = random_range(0, 100);
			if (randSeed <= 40) {
				self.swim_state = 1;
				self.objectiveReached = true;
			}
		}

		if (objectiveReached) {
			// Choose a new objective
			
			objectiveReached = false;
		}
		break;
		
	case 1:
		if (objectiveReached) {
			// Choose an objective on nearest wall
			
			objectiveReached = false;
		}
		break;
}