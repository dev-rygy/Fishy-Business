/// @description Insert description here
// You can write your code in this editor

switch (swimState) {
	case 2:
		if (random_range(0, 100) < self.biteChance) {
			obj_fishing_rod.is_casting = false;
			obj_fishing_rod.is_fishing = false;
			instance_destroy(obj_fishing_rod.bobber);
			instance_destroy(self.objective);
			instance_destroy(self);
		}
		else {
			self.swimState = 0;
		}
		break;
}
