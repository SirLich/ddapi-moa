-- Defines 'moaMeatCooked', as an object in Sapiens. The different components define the different properties of the object.

return {
	-- Basic information
	description = {
		identifier = "moaMeatCooked",
	},

	-- Each component defines some property of the object (i.e., can rot, can be eaten, is an object.)
	components = {

		-- Creates a GameObject (physucal object which can be spawned)
		hs_object = {
			model = "moaMeatCooked"
		},

		-- Creates a Resource (resources allow objects to be carried, stored, and used in crafting)
		hs_resource = {
			storage_identifier = "moaMeat"
		},

		-- Defines that cooked moa meat should "evolve" (rot) into a bone, after some time.
		hs_evolving_object = {
			min_time = "5",
			category = "rot",
			transform_to = {"bone"}
		},

		-- Defines that moa meat can be eaten
		hs_food = {
			portions = 4,
			value = 0.7,
			items_when_eaten = {"bone"}
		},

		-- Defines that moa meat can be "crafted" by cooking at a campfire
		hs_craftable = {
			props = {
				isFoodPreperation = true,
				disabledUntilCraftableResearched = true,
			},
			skill = "campfireCooking",
			action_sequence = "fireStickCook",
			display_object = "moaMeatLegCooked",
			hs_output = {
				output_by_object = {
					moaMeat = {"moaMeatCooked"},
					moaMeatLeg = {"moaMeatLegCooked"}
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
