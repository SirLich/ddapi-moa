-- Defines the game object for the dead moa. Will rot, and can be harvested for the meat.

return {
	description = {
		identifier = "deadMoa",
		name = "object_deadMoa",
		plural = "object_deadMoa_plural"
	},
	components = {
		hs_object = {
			model = "moaDead",
			snapping_preset = "deadMammoth"
		},
		hs_plans = {
			available_plans = "availablePlansForNonResourceCarcass"
		},
		hs_harvestable = {
			resources_to_harvest = {
				"bone",
				"bone",
				"bone",
				"moaMeat",
				"moaMeat",
				"moaMeatLeg",
				"moaMeat",
				"moaMeat",
				"moaMeatLeg"
			},
			finish_harvest_index = 4
		},
		hs_evolving_object = {
			min_time = "5",
			category = "rot",
			transform_to = {"bone", "bone"}
		}
	}
}
