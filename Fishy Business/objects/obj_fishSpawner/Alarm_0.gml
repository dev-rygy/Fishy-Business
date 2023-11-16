/// @description Spawn fish

var newFish;
if (room == rm_minigame) {
	alarm_set(1, 0);
	
	// Pick a random wall
	var randWall = irandom(4);

	switch(randWall) {
		case 1: // Left wall
		newFish = instance_create_layer(-10, random_range(0, room_height), "Fish", fishType);
		newFish.direction = 0;
		break;
	
		case 2: // Top wall
		newFish = instance_create_layer(random_range(0, room_width), -10, "Fish", fishType);
		newFish.direction = 270;
		break;
	
		case 3: // Right wall
		newFish = instance_create_layer(room_width+10, random_range(0, room_height), "Fish", fishType);
		newFish.direction = 180;
		break;
	
		case 4: // Bottom wall
		newFish = instance_create_layer(random_range(0, room_width), room_height+10, "Fish", fishType);
		newFish.direction = 90;
		break;
	}
}
// Reset alarm to spawn next fish
alarm_set(0, room_speed * spawnCooldown);
