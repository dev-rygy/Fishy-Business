/// @description Insert description here
// You can write your code in this editor

obj_fishSpawner.numFish++;
swim_state = 0; // 0 = swimming, 1 = exiting
objectiveReached = true;
instance_create_layer(0, 0, "Fish_objectives", obj_fish_objective);