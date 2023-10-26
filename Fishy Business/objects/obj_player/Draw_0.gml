/// @description Insert description here
// You can write your code in this editor

function bound(index, bounds)
{
		if (index < bounds[0] or index > bounds[1] + 0.99)
		{
			return bounds[0];
		}
		
		return index;
}

image_index = bound(image_index, animation_frames);

draw_self();


