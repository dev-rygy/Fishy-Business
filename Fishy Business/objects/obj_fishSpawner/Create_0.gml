/// @description Start Spawning
// You can write your code in this editor
if (obj_equipmentBox.inventory[0] != -1) {
	spawnCooldown -= obj_equipmentBox.inventory[0].rodPower/10;
}
alarm_set(0, room_speed * spawnCooldown);
