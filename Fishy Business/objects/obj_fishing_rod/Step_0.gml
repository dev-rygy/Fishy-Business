/// @description Insert description here
// You can write your code in this editor

if (!is_fishing && !is_casting && mouse_check_button_pressed(mb_left))
{
	is_casting = true;
	
	fishing_point_x = mouse_x;
	fishing_point_y = mouse_y;
	
	timer = room_speed * 1;
	alarm[0] = room_speed * 1;
	image_speed = 0.5;
	timer -= 1;
	
	fishing_point_x = mouse_x;
	fishing_point_y = mouse_y;
}
