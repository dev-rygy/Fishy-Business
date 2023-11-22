// Variables to use for random events
var randSeed0;
var randSeed1;

switch (swimState) {
	case 0: // Swimming
	// If the fish is swimming and within the outer sixth of the area, there is a 40% chance to swim offscreen
		//if (self.x < room_width/6 || self.x > (room_width/6)*5 || self.y < room_width/6 || self.y > (room_height/6)*5) {
		//	randSeed0 = random_range(0, 100);
		//	if (randSeed0 <= 40) {
		//		self.swimState = 1;
		//		self.objectiveReached = true;
		//	}
		//}
		randSeed0 = random_range(0, 100);
		if (( distance_to_object(obj_fishing_rod.bobber) < 40 ) && (randSeed0 <= occurenceChance)) {
			swimState = 2;
			objectiveReached = true;
		}
		
		// Choose a new objective
		if (objectiveReached) {
			randSeed0 = random_range(20, 30); // Length
			randSeed1 = random_range(-20, 20); // Angle
			self.objective.x = self.x + lengthdir_x(randSeed0, self.direction + randSeed1);
			self.objective.y = self.y + lengthdir_y(randSeed0, self.direction + randSeed1);
			self.objectiveReached = false;
		}
		break;
		
	case 1: // Exiting
		if (objectiveReached) {
			// Choose an objective on nearest wall
			if (self.x < room_width/6) { // Left wall
				randSeed0 = random_range(-50, 50);
				self.objective.x = -100;
				self.objective.y = self.y + randSeed0;
			}
			else if (self.x > (room_width/6)*5) { // Right wall
				randSeed0 = random_range(-50, 50);
				self.objective.x = room_width + 100;
				self.objective.y = self.y + randSeed0;
			}
			else if (self.y < room_width/6) { // Top wall
				randSeed0 = random_range(-50, 50);
				self.objective.y = -100;
				self.objective.x = self.x + randSeed0;
			}
			else if (self.y < (room_width/6)*5) { // Bottom wall
				randSeed0 = random_range(-50, 50);
				self.objective.y = room_height + 100;
				self.objective.x = self.x + randSeed0;
			}
			
			objectiveReached = false;
		}
		break;
	case 2: // Biting
		if (objectiveReached) {
			if (obj_fishing_rod.bobber != noone) {
				self.objective.x = obj_fishing_rod.bobber.x;
				self.objective.y = obj_fishing_rod.bobber.y;
			}
			else {
				self.swimState = 0;
			}
			self.objectiveReached = false;
		}
		break;
}