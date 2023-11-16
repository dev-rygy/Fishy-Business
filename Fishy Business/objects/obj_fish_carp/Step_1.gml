// Variables to use for random events
var randSeed0;
var randSeed1;

switch (swim_state) {
	case 0:
	// If the fish is swimming and within the outer sixth of the area, there is a 40% chance to swim offscreen
		if (self.x < room_width/6 || self.x > (room_width/6)*5 || self.y < room_width/6 || self.y > (room_height/6)*5) {
			randSeed0 = random_range(0, 100);
			if (randSeed0 <= 40) {
				self.swim_state = 1;
				self.objectiveReached = true;
			}
		}
		// Choose a new objective
		if (objectiveReached) {
			randSeed0 = random_range(70, 120); // Position
			randSeed1 = random_range(50, 50); // Angle
			self.objective.x = self.x + randSeed0 * cos(direction + randSeed1);
			self.objective.y = self.y + randSeed0 * sin(direction + randSeed1);
			self.objectiveReached = false;
		}
		break;
		
	case 1:
		if (objectiveReached) {
			// Choose an objective on nearest wall
			
			objectiveReached = false;
		}
		break;
}