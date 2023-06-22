return {
	description = {
		identifier = "moaMeatLeg",
	},
	components = {
		hs_object = {
			model = "moaMeatLeg",
			link_to_resource = "moaMeat"
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
