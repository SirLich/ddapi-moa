return {
	description = {
		identifier = "moaMeat",
		name = "object_moaMeat",
		plural = "object_moaMeat_plural"
	},
	components = {
		hs_object = {
			model = "moaMeat"
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
			value = 0.5,
			food_poison_chance = 0.2,
			items_when_eaten = {"bone"}
		},
	}
}
