return {
    hs_object_sets = {
        "moas"
    },
    hs_model_remaps = {
        {
            model = "moaMeatCooked",
            base_model = "moaMeat",
            material_remaps = {
                {
                    old_material = "moaMeat",
                    new_material = "moaMeatCooked"
                }
            }
        },
        {
            model = "moaMeatLegCooked",
            base_model = "moaMeatLeg",
            material_remaps = {
                moaMeat = "moaMeatCooked"
            }
        }
    }
}
