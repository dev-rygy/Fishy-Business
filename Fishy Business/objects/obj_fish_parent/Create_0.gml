/// @description

my_instance = self;

obj_fishSpawner.numFish++;
self.swimState = 0; // 0 = swimming, 1 = exiting
self.objectiveReached = true;
self.objective = instance_create_layer(0, 0, "Fish_objectives", obj_fish_objective);