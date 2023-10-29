/// @description Insert description here
// You can write your code in this editor

// Tilemap Layers
tile_width = 16;
tile_height = 16;

ct_layer_id_1 = layer_tilemap_get_id("Collision_Tiles_1");
ct_layer_id_2 = layer_tilemap_get_id("Collision_Tiles_2");
int_layer_id = layer_tilemap_get_id("Interaction_Tiles");

// Walking Animation
frame_index = 0
function set_animation(state)
{
	new_animation = variable_struct_get(animations, state);
	animation_frames = new_animation.frames;
	frame_index = 0;
}

animations = {
	// Full Animation
	idle:	{ frames: [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26] },
	left:	{ frames: [8, 9 , 10, 11] },
	right:	{ frames: [12, 13, 14, 15] },
	up:		{ frames: [4, 5, 6, 7] },
	down:	{ frames: [0, 1, 2, 3] },
	
	// Still Frames
	//idle:	{ frames: [16] },
	//left:	{ frames: [8] },
	//right:	{ frames: [12] },
	//up:		{ frames: [4] },
	//down:	{ frames: [0] },
};

set_animation("idle");