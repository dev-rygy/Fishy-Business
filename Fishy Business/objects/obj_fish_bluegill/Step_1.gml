/// @description Insert description here
// You can write your code in this editor

// Variables to use for random events
var randSeed0;
var randSeed1;

switch (swimState) {
	case 0:
	// If the fish is swimming and within the outer sixth of the area, there is a 40% chance to swim offscreen
		//if (self.x < room_width/6 || self.x > (room_width/6)*5 || self.y < room_width/6 || self.y > (room_height/6)*5) {
		//	randSeed0 = random_range(0, 100);
		//	if (randSeed0 <= 40) {
		//		self.swimState = 1;
		//		self.objectiveReached = true;
		//	}
		//}
		// Choose a new objective
		if (objectiveReached) {
			randSeed0 = random_range(70, 120); // Length
			randSeed1 = random_range(-50, 50); // Angle
			self.objective.x = self.x + lengthdir_x(randSeed0, randSeed1);
			self.objective.y = self.y + lengthdir_y(randSeed0, randSeed1);
			self.objectiveReached = false;
		}
		break;
		
	case 1:
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
}
