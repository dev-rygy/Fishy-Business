/// @description Insert description here
// You can write your code in this editor

if (!is_fishing && mouse_check_button_pressed(mb_left))
{
	timer = room_speed * 1;
	alarm[0] = room_speed * 1;
	image_speed = 0.5;
	timer -= 1;
}
