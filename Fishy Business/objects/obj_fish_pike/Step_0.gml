/// @description Insert description here

if ((self.x < -80 || self.x > room_width+80) && (self.y < -80 || self.y > room_height+80)) {
	instance_destroy(self);
}



