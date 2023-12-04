/// @description

// Update built-in variables
self.image_angle = self.swimDirection;
self.speed = self.swimSpeed;
self.direction = self.swimDirection;

// If the fish has left the area, destroy
if ((self.x < -100 || self.x > room_width+100) && (self.y < -100 || self.y > room_height+100)) {
	instance_destroy(self);
}