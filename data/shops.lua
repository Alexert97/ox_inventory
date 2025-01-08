return {
	General = {
		name = 'Shop',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'pizza', price = 80 },
			{ name = 'acqua', price = 70 },
			{ name = 'redwoods', price = 5 , metadata = {
				total = 20,
			}},
			{ name = 'lighter', price = 5 },
			{ name = 'grinder', price = 15 },
			{ name = 'cartinap', price = 7 },
			{ name = 'screwdriverset', price = 300 },
			{ name = 'portachiavi', price = 70},
			{ name = 'portafoglio', price = 160},


		}, locations = {
			vec3(25.7, -1347.3, 29.49),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {
			{ loc = vec3(25.06, -1347.32, 29.5), length = 0.7, width = 0.5, heading = 0.0, minZ = 29.5, maxZ = 29.9, distance = 1.5 },
			{ loc = vec3(-3039.18, 585.13, 7.91), length = 0.6, width = 0.5, heading = 15.0, minZ = 7.91, maxZ = 8.31, distance = 1.5 },
			{ loc = vec3(-3242.2, 1000.58, 12.83), length = 0.6, width = 0.6, heading = 175.0, minZ = 12.83, maxZ = 13.23, distance = 1.5 },
			{ loc = vec3(1728.39, 6414.95, 35.04), length = 0.6, width = 0.6, heading = 65.0, minZ = 35.04, maxZ = 35.44, distance = 1.5 },
			{ loc = vec3(1698.37, 4923.43, 42.06), length = 0.5, width = 0.5, heading = 235.0, minZ = 42.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.54, 3740.28, 32.34), length = 0.6, width = 0.5, heading = 120.0, minZ = 32.34, maxZ = 32.74, distance = 1.5 },
			{ loc = vec3(548.5, 2671.25, 42.16), length = 0.6, width = 0.5, heading = 10.0, minZ = 42.16, maxZ = 42.56, distance = 1.5 },
			{ loc = vec3(2678.29, 3279.94, 55.24), length = 0.6, width = 0.5, heading = 330.0, minZ = 55.24, maxZ = 55.64, distance = 1.5 },
			{ loc = vec3(2557.19, 381.4, 108.62), length = 0.6, width = 0.5, heading = 0.0, minZ = 108.62, maxZ = 109.02, distance = 1.5 },
			{ loc = vec3(373.13, 326.29, 103.57), length = 0.6, width = 0.5, heading = 345.0, minZ = 103.57, maxZ = 103.97, distance = 1.5 },
		}
	},

	Liquor = {
		name = 'Liquor Store',
		blip = {
			id = 93, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'birra', price = 220 },
			{ name = 'artigianale', price = 420 },
			{ name = 'burger', price = 115 },
			{ name = 'mtndew', price  = 210},
			{name = 'gin', price = 300},
			{name = 'vodkabsolute', price = 400},
			{name = 'tequila', price = 300},
		}, locations = {
			vec3(1135.808, -982.281, 46.415),
			vec3(-1222.915, -906.983, 12.326),
			vec3(-1487.553, -379.107, 40.163),
			vec3(-2968.243, 390.910, 15.043),
			vec3(1166.024, 2708.930, 38.157),
			vec3(1392.562, 3604.684, 34.980),
			vec3(-1393.409, -606.624, 30.319)
		}, targets = {
			{ loc = vec3(1134.9, -982.34, 46.41), length = 0.5, width = 0.5, heading = 96.0, minZ = 46.4, maxZ = 46.8, distance = 1.5 },
			{ loc = vec3(-1222.33, -907.82, 12.43), length = 0.6, width = 0.5, heading = 32.7, minZ = 12.3, maxZ = 12.7, distance = 1.5 },
			{ loc = vec3(-1486.67, -378.46, 40.26), length = 0.6, width = 0.5, heading = 133.77, minZ = 40.1, maxZ = 40.5, distance = 1.5 },
			{ loc = vec3(-2967.0, 390.9, 15.14), length = 0.7, width = 0.5, heading = 85.23, minZ = 15.0, maxZ = 15.4, distance = 1.5 },
			{ loc = vec3(1165.95, 2710.20, 38.26), length = 0.6, width = 0.5, heading = 178.84, minZ = 38.1, maxZ = 38.5, distance = 1.5 },
			{ loc = vec3(1393.0, 3605.95, 35.11), length = 0.6, width = 0.6, heading = 200.0, minZ = 35.0, maxZ = 35.4, distance = 1.5 }
		}
	},

	-- PoliceArmoury = {
	-- 	name = 'Police Armoury',
	-- 	groups = shared.police,
	-- 	blip = {
	-- 		id = 110, colour = 84, scale = 0.8
	-- 	}, inventory = {
	-- 		{ name = 'ammo-9', price = 5, },
	-- 		{ name = 'ammo-rifle', price = 5, },
	-- 		{ name = 'WEAPON_FLASHLIGHT', price = 200 },
	-- 		{ name = 'WEAPON_NIGHTSTICK', price = 100 },
	-- 		{ name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
	-- 		{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
	-- 		{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} }
	-- 	}, locations = {
	-- 		vec3(451.51, -979.44, 30.68)
	-- 	}, targets = {
	-- 		{ loc = vec3(453.21, -980.03, 30.68), length = 0.5, width = 3.0, heading = 270.0, minZ = 30.5, maxZ = 32.0, distance = 6 }
	-- 	}
	-- },

	Medicine = {
		name = 'Medicine Cabinet',
		blip = {
			id = 403, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'bandage', price = 1000 }
		}, locations = {
			vec3(306.3687, -601.5139, 43.28406)
		}, targets = {

		}
	},

	AppleStore = {
		name = 'Pera Store',
		blip = {
			id = 459, colour = 69, scale = 1.2
		}, 
		inventory = {
			{ name = 'black_phone', price = 1000},
			{ name = 'radio', price = 1000},
			{ name = 'gopro', price = 1000},
		},
		locations = {
			vec3(-1078.7019, -245.0307, 36.7633)
		},
		targets = {
            {
                ped = `ig_lifeinvad_02`,
                scenario = 'WORLD_HUMAN_STAND_MOBILE',
                loc = vec3(-1078.7019, -245.0307, 36.763),
                heading = 158.1600,
            },
        }	
	},

	BagShop = {
		name = 'Negozio Borsoni',
		blip = {
			id = 676, colour = 69, scale = 0.9
		}, 
		inventory = {
			{ name = 'backpack', price = 1000},
		},
		locations = {
			vec3(123.2033, -212.0968, 54.5577)
		},
		targets = {
            {
                ped = `a_f_m_business_02`,
                scenario = 'WORLD_HUMAN_STAND_MOBILE',
                loc = vec3(123.2033, -212.0968, 53.5577),
                heading = 247.9483,
				distance = 2.5
            },
        }	
	},
	
	BagShop2 = {
		name = 'Negozio Borsoni',
		blip = {
			id = 676, colour = 69, scale = 0.9
		}, 
		inventory = {
			{ name = 'backpack', price = 1000},
		},
		locations = {
			vec3(-1197.3899, -779.0151, 17.3299)
		},
		targets = {
            {
                ped = `a_f_m_business_02`,
                scenario = 'WORLD_HUMAN_STAND_MOBILE',
                loc = vec3(-1197.3899, -779.0151, 16.3299),
                heading = 25.9716,
				distance = 2.5
            },
        }	
	},

	LaFitness = {
		name = 'La Fitness Gym',
		inventory = {
			{ name = 'gym_membership_laf', price = 1000},
		},
		locations = {
			vec3(258.4097, -271.4227, 53.9635)
		},
		targets = {
            {
                ped = `u_m_y_babyd`,
                scenario = 'WORLD_HUMAN_STAND_MOBILE',
                loc = vec3(258.4097, -271.4227, 52.9635),
                heading = 343.0913,
				distance = 2.5
            },
        }	
	},

	TerrainShop = {
		name = 'LD Organics',
		blip = {
			id = 836, colour = 69, scale = 0.9
		}, 
		inventory = {
			{ name = 'plant_tub', price = 200},
			{ name = 'topsoil', price = 50},
			{ name = 'fertilizers', price = 25},
			{ name = 'watering_can', price = 100},
		},
		locations = {
			vec3(-1171.2188, -1571.0768, 4.6636)
		},
		targets = {
            {
                ped = `IG_HippyLeader`,
                scenario = 'WORLD_HUMAN_SMOKING_POT',
                loc = vec3(-1168.6730, -1572.8740, 3.6636),
                heading = 128.7452,
				distance = 2.5
            },
        }	
	},
	 
} 
