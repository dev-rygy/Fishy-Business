/// @description Insert description here
// You can write your code in this editor

// Point at which the player clicked to start fishing

		// Angle from rod tip to clicked fishing point
		line_angle = point_direction(fishing_point_x, fishing_point_y, rod_tip_x, rod_tip_y);

		// The magnitude of the distance between the fishing point and the tip of the rod
		line_length = point_distance(fishing_point_x, fishing_point_y, rod_tip_x, rod_tip_y);
		
		// instantiate bob object
		self.bobber = instance_create_layer(fishing_point_x, fishing_point_y, "Instances", obj_bob)
	
		// Change fishing flags to true
		is_fishing = true;




