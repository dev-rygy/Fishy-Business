/// @description Insert description here
// You can write your code in this editor

switch (swimState) {
	case 2:
		if (random_range(0, 100) < self.biteChance) {
			self.swimState = 3;
			alarm_set(0, room_speed * 5);
		}
		else {
			self.swimState = 0;
		}
		break;
}
