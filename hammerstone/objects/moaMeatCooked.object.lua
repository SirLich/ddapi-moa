return {
	description = {
		identifier = "moaMeatCooked",
	},
	components = {
		hs_object = {
			model = "moaMeatCooked"
		},
		hs_resource = {
			storage_identifier = "moaMeat"
		},
		hs_evolving_object = {
			min_time = "5",
			category = "rot",
			transform_to = {"bone"}
		},
		hs_food = {
			portions = 4,
			value = 0.7,
			items_when_eaten = {"bone"}
		},
		hs_craftable = {
			props = {
				is_food_prep = true,
				disabled_until_craftable_researched = true,
			},
			skill = "campfireCooking",
			action_sequence = "fireStickCook",
			display_object = "moaMeatLegCooked",
			hs_output = {
				output_by_object = {
					{
						input = "moaMeat",
						output = {"moaMeatCooked"}
					},
					{
						input = "moaMeatLeg",
						output = {"moaMeatLegCooked"}
					}
				}
			},
			resources = {
				{
					resource = "moaMeat",
					count = 1
				}
			}
		}
	}
}
