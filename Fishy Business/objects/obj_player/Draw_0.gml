/// @description Insert description here
// You can write your code in this editor


if (frame_index < (array_length(animation_frames)))
{
	image_index = animation_frames[frame_index];
	frame_index++;
}
else
	frame_index = 0;

show_debug_message(frame_index);

draw_self();