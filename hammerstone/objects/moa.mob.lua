local mjm = mjrequire "common/mjm"
local vec3 = mjm.vec3

return {
	description = {
		identifier = "moa"
	},
	components = {
		hs_object = {
			model = "moa",
			props = {
				projectileAimHeightOffsetMeters = 0.2,
				hasPhysics = false,
				ignoreBuildRay = true,
				markerPositions = {
					{
						worldOffset = vec3(0.0, mj:mToP(2.8), 0.0)
					}
				},
			}
		},
		hs_plans = {
			hunting_preset = "basicHuntingInfo"
		},
		hs_mob = {
			emulate_client_ai = true,
			object_set = "moas", -- Annoying: This defaults to 'identifier', so if I had named the object set better it wouldn't be needed.
			emulate_server_ai = true,

			dead_object = "deadMoa",
			animation_group = "moa",
			props = {
				initialHealth = 7.9,
				spawnFrequency = 0.5,
				spawnDistance = mj:mToP(600.0),
				reactDistance = mj:mToP(50.0),
				runDistance = mj:mToP(15.0),
				agroDistance = mj:mToP(1.0),
				attackDistance = mj:mToP(2.0),
				agroTimerDuration = 3.0,
				aggresionLevel = 1,
				pathFindingRayRadius = mj:mToP(1.0),
				pathFindingRayYOffset = mj:mToP(2.0),
				walkSpeed = mj:mToP(2.5),
				runSpeedMultiplier = 4.0,
				embedBoxHalfSize = vec3(0.5,1.0,0.5),
				maxSoundDistance2 = mj:mToP(100.0) * mj:mToP(100.0),
				soundVolume = 0.4,
				soundRandomBaseName = "moa",
				soundRandomBaseCount = 3,
				soundAngryBaseName = "moaAngry",
				soundAngryBaseCount = 1,
				deathSound = "moaAngry1",
				idleAnimations = {
					"stand1", 
					"peckRight",
					"peckLeft",
					"peckRandom",
				},
				sleepAnimations = {
					"stand1",
				},
				runAnimation = "run",
				deathAnimation = "die",
				agroWalkAnimation = "run",
			}
		}
	}
}