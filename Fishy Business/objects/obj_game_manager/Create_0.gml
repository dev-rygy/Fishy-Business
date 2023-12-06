/// @description Insert description here
// You can write your code in this editor

// Game States
// 0 = overworld
// 1 = fishing minigame
// 2 = fish bite
// 3 = fish caught
// 4 = Reset Game

game_state = 0;

current_fish = noone;	// Current fish that is latched onto the rod

is_caught = false;

if (room_get_name(room) == "rm_lake")
{
	audio_play_sound(sfx_lake_ambience, 10, true);
}