// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bound(index, bounds)
{
		if ((index < bounds[0]) || (index > bounds[array_length(bounds) - 1]))
		{
			return bounds[0];
		}
		
		return index;
}

