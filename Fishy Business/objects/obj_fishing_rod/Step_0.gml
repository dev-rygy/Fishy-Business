/// @description Insert description here
// You can write your code in this editor

if (!is_fishing && mouse_check_button_pressed(mb_left))
{
	// Point at which the player clicked to start fishing
	fishing_point_x = mouse_x;
	fishing_point_y = mouse_y;

	// Angle from rod tip to clicked fishing point
	line_angle = point_direction(fishing_point_x, fishing_point_y, rod_tip_x, rod_tip_y);

	// The magnitude of the distance between the fishing point and the tip of the rod
	line_length = point_distance(fishing_point_x, fishing_point_y, rod_tip_x, rod_tip_y);
	
	// Change fishing flags to true
	is_fishing = true;
}
