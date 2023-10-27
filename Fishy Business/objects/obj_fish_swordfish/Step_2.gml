/// @description Object property updates

// Pick a new speed
if (self.speed > 0) {
	self.speed += random_range(-0.1, 0.1);
}
else {
	self.speed += random_range(0, 0.2);
}
// Pick a new direction
self.direction += random_range(-5, 5);

// Update fish's angle
self.image_angle = self.direction;




