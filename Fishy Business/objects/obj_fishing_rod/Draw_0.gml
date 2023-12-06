/// @description Insert description here
// You can write your code in this editor

var sin_offset = sin(self.counter) * percentage_shake * shake_magnitude;

var fishing_offset_y = fishing_point_y - 10 + sin_offset;
var fishing_offset_x = fishing_point_x - 3;

if (is_fishing)
{
	var line = draw_line_width(fishing_offset_x, fishing_offset_y, rod_tip_x, rod_tip_y, 5);
}

image_xscale = 10;
image_yscale = 10;

draw_self();
