/// @description Insert description here
// You can write your code in this editor

// Update fish's angle
self.image_angle = self.direction;

// If the fish has left the area, destroy
if ((self.x < -100 || self.x > room_width+100) && (self.y < -100 || self.y > room_height+100)) {
	instance_destroy(self);
}