/// @description Insert description here
// You can write your code in this editor

function set_animation(_state)
{
	new_animation = variable_struct_get(animations, _state);
	animation_frames = new_animation.frames;
}

animations = {
	idle:	{ frames: [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26] },
	left:	{ frames: [8, 9 , 10, 11] },
	Right:	{ frames: [12, 13, 14, 15] },
	Up:		{ frames: [4, 5, 6, 7] },
	Down:	{ frames: [0, 1, 2, 3] }
};

set_animation("idle");