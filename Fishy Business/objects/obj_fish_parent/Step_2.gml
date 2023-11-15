/// @description Insert description here
// You can write your code in this editor

// Update fish's angle
self.image_angle = self.direction;

// If the fish has left the area, destroy
if ((self.x < -80 || self.x > room_width+80) && (self.y < -80 || self.y > room_height+80)) {
	instance_destroy(self);
}