return {
	description = {
		identifier = "moaMeatLegCooked",
	},
	components = {
		hs_object = {
			model = "moaMeatLegCooked",
			link_to_resource = "moaMeatCooked"
		},
		hs_evolving_object = {
			min_time = "5",
			category = "rot",
			transform_to = {"bone"}
		},
		hs_food = {
			items_when_eaten = {"bone"}
		}
	}
}
