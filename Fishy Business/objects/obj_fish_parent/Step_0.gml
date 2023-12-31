switch (self.swimState) {
	case 0: // Swimming
		
		// Point towards the objective
		self.swimDirection = point_direction(self.x, self.y, self.objective.x, self.objective.y);
		
		// Move towards the objective
		if (self.swimSpeed < 0) {
			self.swimSpeed += random_range(0, 1);
		}
		else {
			self.swimSpeed += random_range(-0.5, 0.5);
		}
		
		// Objective reached check
		if (((self.x < self.objective.x+15) && (self.x > self.objective.x-15)) && ((self.y < self.objective.y+15) && (self.y > self.objective.y-15))) {
			self.objectiveReached = true;
		}
		break;
	case 1:
		
	case 2:
		// Point towards the objective
		self.swimDirection = point_direction(self.x, self.y, self.objective.x, self.objective.y);
		
		// Move towards the objective
		if (self.swimSpeed < 0) {
			self.swimSpeed += random_range(0, 0.5);
		}
		else {
			self.swimSpeed += random_range(-0.5, 0.5);
		}
		
		// Objective reached check
		if (((self.x < self.objective.x+15) && (self.x > self.objective.x-15)) && ((self.y < self.objective.y+15) && (self.y > self.objective.y-15))) {
			self.objectiveReached = true;
		}
		break;
	case 3: // Thrashing
		self.swimSpeed = 0;
		self.swimDirection = self.swimDirection + (sin(self.counter) * 10);
		self.counter++;
		break;
}