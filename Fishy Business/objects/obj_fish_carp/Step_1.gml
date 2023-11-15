// Variable to use for random events
var randSeed;

// If the fish is swimming and within the outer fifth of the area, there is a 40% chance to swim offscreen
if (self.swim_state == 0 && (self.x < room_width/5 || self.x > (room_width/5)*4 || self.y < room_width/5 || self.y > (room_height/5)*4)) {
	randSeed = random_range(0, 100);
	if (randSeed <= 40) {
		self.swim_state = 1;
	}
}