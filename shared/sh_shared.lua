Config = {}

Config.CameraMovement = {
  verticalMin = 0.0,
  verticalMax = 5.0,
  radiusMin = 1.0,
  radiusMax = 6.0,
}

Config.WheelFitment = {
  Width = { 1.5, 1.25 },
  OffsetLeft = { -0.71, -1.10 },
  OffsetRight = { 0.69, 1.10 },
  RotationLeft = { 0.0, -1.0 },
  RotationRight = { 0.0, 1.0 },
}


Config.Prices = {
	['Respray'] = 400,
	['ModPlateIndex'] = 400,
	['ModSpoilers'] = 400,
	['ModFrontBumper'] = 400,
	['ModRearBumper'] = 400,
	['ModSideSkirt'] = 400,
	['ModExhaust'] = 400,
	['ModFrame'] = 400,
	['ModGrille'] = 400,
	['ModHood'] = 400,
	['ModFender'] = 400,
	['ModRightFender'] = 400,
	['ModRoof'] = 400,
	['ModVanityPlate'] = 400,
	['ModTrimA'] = 400,
	['ModOrnaments'] = 400,
	['ModDashboard'] = 400,
	['ModDial'] = 400,
	['ModDoorSpeaker'] = 400,
	['ModSeats'] = 400,
	['ModSteeringWheel'] = 400,
	['ModShifterLeavers'] = 400,
	['ModAPlate'] = 400,
	['ModSpeakers'] = 400,
	['ModTrunk'] = 400,
	['ModHydrolic'] = 400,
	['ModEngineBlock'] = 400,
	['ModAirFilter'] = 400,
	['ModStruts'] = 400,
	['ModArchCover'] = 400,
	['ModAerials'] = 400,
	['ModTrimB'] = 400,
	['ModTank'] = 400,
	['ModWindows'] = 400,
	['ModLivery'] = 100,
	['ModHorns'] = 400,
	['ModArmor'] = { 3250, 5500, 10450, 15250, 20500 },
	['ModEngine'] = { 3250, 5500, 10450, 15250, 20500 },
	['ModBrakes'] = { 3250, 5500, 10450, 15250, 20500 },
	['ModTransmission'] = { 3250, 5500, 10450, 15250, 20500 },
	['ModSuspension'] = { 3250, 5500, 10450, 15250, 20500 },
	['ModTurbo'] = { 0, 15000 },
	['NeonSide'] = 100,
	['NeonColor'] = 500,
	['Headlights'] = { 0, 100 },
	['XenonColor'] = 500,
	['Wheels'] = 400,
}

Config.ModsList = {
    Brakes = {
        name = "Brakes",
        desc = "Stopping Power",
        img = "./images/Brakes.png"
    },
    Transmission = {
        name = "Transmission",
        desc = "Smooth Gear Shifting",
        img = "./images/transmission.png",
    },
	Suspension = {
        name = "Suspension",
        desc = "Exterior Image",
        img = "./images/transmission.png",
    },
	Turbo = {
        name = "Turbo",
        desc = "Exterior Image",
        img = "./images/transmission.png",
    },
	Armor = {
        name = "Armor",
        desc = "Durability",
        img = "./images/transmission.png",
    },
    Colors = {
        name = "Colors",
        desc = "Paint your vehicle",
        img = "./images/colors.png",
    },
    Wheels = {
        name = "Wheels",
        desc = "Rolling Elegance",
        img = "./images/wheels.png",
    },
    Plates = {
        name = "Plates",
        desc = "Personalized identity",
        img = "./images/plate.png",
    },
    Neons = {
        name = "Neons",
        desc = "Radiant Glow",
        img = "./images/neons.png",  
    },
    Liveries = {
        name = "Liveries",
        desc = "Custom Paint Jobs",
        img = "./images/liveries.png", 
    },
    Windows = {
        name = "Windows",
        desc = "Tinted Glass",
        img = "./images/windows.png", 
		ModType = 46,
    },
    Tank = {
        name = "Tank",
        desc = "Armored Protection",
        img = "./images/tank.png", 
    },  
    Aerials = {
        name = "Aerials",
        desc = "Improved Reception",
        img = "./images/aerials.png", 
    },  
    ArchCover = {
        name = "ArchCover",
        desc = "Wheel Arch Protection",
        img = "./images/archcover.png", 
    },  
    Struts = {
        name = "Struts",
        desc = "Stability Enhancement",
        img = "./images/struts.png", 
    },  
    AirFilter = {
        name = "Air Filter",
        desc = "Engine Efficiency",
        img = "./images/airfilter.png", 
    },  
    EngineBlock = {
        name = "Engine Block",
        desc = "Performance Boost",
        img = "./images/engineblock.png", 
    },  
    Hydraulics = {
        name = "Hydraulics",
        desc = "Lift Control",
        img = "./images/hydraulics.png", 
    },  
    Trunk = {
        name = "Trunk",
        desc = "Storage Space",
        img = "./images/trunk.png", 
    },  
    Plaques = {
        name = "Plaques",
        desc = "Custom Badges",
        img = "./images/plate.png", 
    },  
    ShiftLeavers = {
        name = "Shift Leavers",
        desc = "Gear Control",
        img = "./images/shiftleavers.png", 
    },  
    StringWheel = {
        name = "String Wheel",
        desc = "Steering Precision",
        img = "./images/stringwheel.png", 
    },  
    Seats = {
        name = "Seats",
        desc = "Comfortable Seating",
        img = "./images/seats.png", 
    },  
    DoorSpeaker = {
        name = "Door Speaker",
        desc = "Audio Enhancement",
        img = "./images/doorspeaker.png", 
    },  
    Dial = {
        name = "Dial",
        desc = "Instrument Display",
        img = "./images/dial.png", 
    },  
    Dashboard = {
        name = "Dashboard",
        desc = "Vehicle Control Center",
        img = "./images/dashboard.png", 
    },  
    Ornaments = {
        name = "Ornaments",
        desc = "Decorative Accents",
        img = "./images/ornaments.png", 
    },  
    Trim = {
        name = "Trim",
        desc = "Aesthetic Detail",
        img = "./images/trim.png", 
    },  
    VanityPlates = {
        name = "Vanity Plates",
        desc = "Personalized Tags",
        img = "./images/vanityplates.png", 
    },  
    PlateHolder = {
        name = "Plate Holder",
        desc = "License Plate Mount",
        img = "./images/plateholder.png", 
    },  
    Roof = {
        name = "Roof",
        desc = "Elevated Style",
        img = "./images/roof.png", 
    },  
    Horns = {
        name = "Horn",
        desc = "Audible Alert",
        img = "./images/horns.png", 
    },  
    Fenders = {
        name = "Fenders",
        desc = "Wheel Protection",
        img = "./images/fenders.png", 
    },  
    Hood = {
        name = "Hood",
        desc = "Front Design",
        img = "./images/hood.png", 
    },  
    Grille = {
        name = "Grille",
        desc = "Front Fascia Accent",
        img = "./images/grille.png", 
    },  
    RollCage = {
        name = "Roll Cage",
        desc = "Safety Enhancement",
        img = "./images/rollcage.png", 
    },  
    Exhaust = {
        name = "Exhaust",
        desc = "Engine's Roar",
        img = "./images/exhaust.png", 
    },
    Engine = {
        name = "Engine",
        desc = "Heart of the Vehicle",
        img = "./images/engine.png", 
    },  
    Skirts = {
        name = "Skirts",
        desc = "Sleek Appearance",
        img = "./images/skirts.png", 
    },  
    RearBumpers = {
        name = "Rear Bumper",
        desc = "Stylish Protection",
        img = "./images/rearbumper.png", 
    },  
    FrontBumpers = {
        name = "Front Bumpers",
        desc = "Impact Defence",
        img = "./images/frontbumpers.png", 
    },  
    Spoilers = {
        name = "Spoiler",
        desc = "Aero Enhancement",
        img = "./images/spoilers.png", 
    },
    Extras = {
        name = "Extras",
        desc = "Customization",
        img = "./images/extra.png", 
    },      
}



Config.WheelsType = {
	["accessories"] = {
		name = "Wheel Accessories",
		img = "./images/wheel.png"
	},
	-- ["wheelcolor"] = {
	-- 	name = "Wheel Color",
	-- 	img = "./images/wheel.png"
	-- },
	["wheelSmoke"] = {
		name = "Wheel Smoke",
		img = "./images/wheel.png",
	}	
}

Config.Wheel_whType = {
	["frontwheel"] =  {
		name = "Front Wheel",
		img = "./images/wheel.png"
	},
    ["backwheel"] =  {
		name = "Back wheel",
		img = "./images/wheel.png"
	},
    ["sportwheels"] =  {
		name = "Sport Wheel",
		img = "./images/wheel.png"
	},
    ["suvwheels"] =  {
		name = "Suv Wheel",
		img = "./images/wheel.png"
	},
    ["offroadwheels"] =  {
		name = "Offroad Wheel",
		img = "./images/wheel.png"
	},
    ["tunerwheels"] =  {
		name = "Tuner Wheel",
		img = "./images/wheel.png"
	},
    ["highendwheels"] =  {
		name = "Highend Wheel",
		img = "./images/wheel.png"
	},
    ["lowriderwheels"] =  {
		name = "Lowrider Wheel",
		img = "./images/wheel.png"
	},
    ["musclewheels"] =  {
		name = "Muscle Wheel",
		img = "./images/wheel.png"
	},
}

Config.Extras = {

}

Config.ColorsType = {
	["PrimaryColor"] = {
		label = "Primary Color",
		img = "./images/colors.png",
	},
	["SecondaryColor"] = {
		label = "Secondary Color",
		img = "./images/colors.png",
	},
	["PearlColor"] = {
		label = "Pearl Color",
		img = "./images/colors.png",
	},
}

Config.ColorsMenu = {
	["ColorsC"] = {
		label = "Colors",
		price = 500,
		img = "./images/colors.png"
	},
	["MetalColors"] = {
		label = "Metal Colors",
		price = 750,
		img = "./images/colors.png"
	},
	["MatteColors"] = {
		label = "Matte Colors",
		price = 800,
		img = "./images/colors.png"
	}
}

Config.Colors = {
		{name = "Black", colorindex = 0},{name = "Carbon Black", colorindex = 147},
		{name = "Graphite", colorindex = 1},{name = "Anthracite Black", colorindex = 11},
		{name = "Black Steel", colorindex = 2},{name = "Dark Steel", colorindex = 3},
		{name = "Silver", colorindex = 4},{name = "Bluish Silver", colorindex = 5},
		{name = "Rolled Steel", colorindex = 6},{name = "Shadow Silver", colorindex = 7},
		{name = "Stone Silver", colorindex = 8},{name = "Midnight Silver", colorindex = 9},
		{name = "Cast Iron Silver", colorindex = 10},{name = "Red", colorindex = 27},
		{name = "Torino Red", colorindex = 28},{name = "Formula Red", colorindex = 29},
		{name = "Lava Red", colorindex = 150},{name = "Blaze Red", colorindex = 30},
		{name = "Grace Red", colorindex = 31},{name = "Garnet Red", colorindex = 32},
		{name = "Sunset Red", colorindex = 33},{name = "Cabernet Red", colorindex = 34},
		{name = "Wine Red", colorindex = 143},{name = "Candy Red", colorindex = 35},
		{name = "Hot Pink", colorindex = 135},{name = "Pfister Pink", colorindex = 137},
		{name = "Salmon Pink", colorindex = 136},{name = "Sunrise Orange", colorindex = 36},
		{name = "Orange", colorindex = 38},{name = "Bright Orange", colorindex = 138},
		{name = "Gold", colorindex = 99},{name = "Bronze", colorindex = 90},
		{name = "Yellow", colorindex = 88},{name = "Race Yellow", colorindex = 89},
		{name = "Dew Yellow", colorindex = 91},{name = "Dark Green", colorindex = 49},
		{name = "Racing Green", colorindex = 50},{name = "Sea Green", colorindex = 51},
		{name = "Olive Green", colorindex = 52},{name = "Bright Green", colorindex = 53},
		{name = "Gasoline Green", colorindex = 54},{name = "Lime Green", colorindex = 92},
		{name = "Midnight Blue", colorindex = 141},
		{name = "Galaxy Blue", colorindex = 61},{name = "Dark Blue", colorindex = 62},
		{name = "Saxon Blue", colorindex = 63},{name = "Blue", colorindex = 64},
		{name = "Mariner Blue", colorindex = 65},{name = "Harbor Blue", colorindex = 66},
		{name = "Diamond Blue", colorindex = 67},{name = "Surf Blue", colorindex = 68},
		{name = "Nautical Blue", colorindex = 69},{name = "Racing Blue", colorindex = 73},
		{name = "Ultra Blue", colorindex = 70},{name = "Light Blue", colorindex = 74},
		{name = "Chocolate Brown", colorindex = 96},{name = "Bison Brown", colorindex = 101},
		{name = "Green Brown", colorindex = 95},{name = "Feltzer Brown", colorindex = 94},
		{name = "Maple Brown", colorindex = 97},{name = "Beechwood Brown", colorindex = 103},
		{name = "Sienna Brown", colorindex = 104},{name = "Saddle Brown", colorindex = 98},
		{name = "Moss Brown", colorindex = 100},{name = "Woodbeech Brown", colorindex = 102},
		{name = "Straw Brown", colorindex = 99},{name = "Sandy Brown", colorindex = 105},
		{name = "Bleached Brown", colorindex = 106},{name = "Schafter Purple", colorindex = 71},
		{name = "Spinnaker Purple", colorindex = 72},{name = "Midnight Purple", colorindex = 142},
		{name = "Bright Purple", colorindex = 145},{name = "Cream", colorindex = 107},
		{name = "Ice White", colorindex = 111},{name = "Frost White", colorindex = 112}
	}

	Config.MetalColors = {
		{name = "Brushed Steel",colorindex = 117},
		{name = "Brushed Black Steel",colorindex = 118},
		{name = "Brushed Aluminum",colorindex = 119},
		{name = "Pure Gold",colorindex = 158},
		{name = "Brushed Gold",colorindex = 159}
	}

	Config.MatteColors = {
		{name = "Black", colorindex = 12},
		{name = "Gray", colorindex = 13},
		{name = "Light Gray", colorindex = 14},
		{name = "Ice White", colorindex = 131},
		{name = "Blue", colorindex = 83},
		{name = "Dark Blue", colorindex = 82},
		{name = "Midnight Blue", colorindex = 84},
		{name = "Midnight Purple", colorindex = 149},
		{name = "Schafter Purple", colorindex = 148},
		{name = "Red", colorindex = 39},
		{name = "Dark Red", colorindex = 40},
		{name = "Orange", colorindex = 41},
		{name = "Yellow", colorindex = 42},
		{name = "Lime Green", colorindex = 55},
		{name = "Green", colorindex = 128},
		{name = "Frost Green", colorindex = 151},
		{name = "Foliage Green", colorindex = 155},
		{name = "Olive Dark", colorindex = 152},
		{name = "Dark Earth", colorindex = 153},
		{name = "Desert Tan", colorindex = 154}
	}
	
	Config.Horns = {
		{name = "Truck Horn", mod = 0, price = 500},
		{name = "Police Horn", mod = 1, price = 500},
		{name = "Clown Horn", mod = 2, price = 500},
		{name = "Musical Horn 1", mod = 3, price = 500},
		{name = "Musical Horn 2", mod = 4, price = 500},
		{name = "Musical Horn 3", mod = 5, price = 500},
		{name = "Musical Horn 4", mod = 6, price = 500},
		{name = "Musical Horn 5", mod = 7, price = 500},
		{name = "Sadtrombone Horn", mod = 8, price = 500},
		{name = "Calssical Horn 1", mod = 9, price = 500},
		{name = "Calssical Horn 2", mod = 10, price = 500},
		{name = "Calssical Horn 3", mod = 11, price = 500},
		{name = "Calssical Horn 4", mod = 12, price = 500},
		{name = "Calssical Horn 5", mod = 13, price = 500},
		{name = "Calssical Horn 6", mod = 14, price = 500},
		{name = "Calssical Horn 7", mod = 15, price = 500},
		{name = "Scaledo Horn", mod = 16, price = 500},
		{name = "Scalere Horn", mod = 17, price = 500},
		{name = "Scalemi Horn", mod = 18, price = 500},
		{name = "Scalefa Horn", mod = 19, price = 500},
		{name = "Scalesol Horn", mod = 20, price = 500},
		{name = "Scalela Horn", mod = 21, price = 500},
		{name = "Scaleti Horn", mod = 22, price = 500},
		{name = "Scaledo Horn High", mod = 23, price = 500},
		{name = "Jazz Horn 1", mod = 25, price = 500},
		{name = "Jazz Horn 2", mod = 26, price = 500},
		{name = "Jazz Horn 3", mod = 27, price = 500},
		{name = "Jazzloop Horn", mod = 28, price = 500},
		{name = "Starspangban Horn 1", mod = 29, price = 500},
		{name = "Starspangban Horn 2", mod = 30, price = 500},
		{name = "Starspangban Horn 3", mod = 31, price = 500},
		{name = "Starspangban Horn 4", mod = 32, price = 500},
		{name = "Classicalloop Horn 1", mod = 33, price = 500},
		{name = "Classicalloop Horn 2", mod = 34, price = 500},        
		{name = "Classicalloop Horn 3", mod = 35, price = 500},
	}

	Config.Plates = {
		{ name = "Blue on White 1", plateindex = 0, price = 150},
		{ name = "Blue On White 2", plateindex = 3, price = 150},
		{ name = "Blue On White 3", plateindex = 4, price = 150},
		{ name = "Yellow on Blue", plateindex = 2, price = 250},
		{ name = "Yellow on Black", plateindex = 1, price = 500},
	}

	Config.Neons = {
		{ name = "White", neon = {255,255,255}, Hornsprice = 500},
		{ name = "Blue", neon = {0,0,255}, price = 500},
		{ name = "Electric Blue", neon = {0,150,255}, price = 500},
		{ name = "Mint Green", neon = {50,255,155}, price = 500},
		{ name = "Lime Green", neon = {0,255,0}, price = 500},
		{ name = "Yellow", neon = {255,255,0}, price = 500},
		{ name = "Golden Shower", neon = {204,204,0}, price = 500},
		{ name = "Orange", neon = {255,128,0}, price = 500},
		{ name = "Red", neon = {255,0,0}, price = 500},
		{ name = "Pony Pink", neon = {255,102,255}, price = 500},
		{ name = "Hot Pink",neon = {255,0,255}, price = 500},
		{ name = "Purple", neon = {153,0,153}, price = 500},
		{ name = "Brown", neon = {139,69,19}, price = 500},
		{ name = "None Neon", neon = {0,0,0}, price = 250},
	}

	Config.Windowtint = {
		{ name = "Pure Black", tint = 1, price = 500},
		{ name = "Darksmoke", tint = 2, price = 500},
		{ name = "Lightsmoke", tint = 3, price = 500},
		{ name = "Limo", tint = 4, price = 500},
		{ name = "Green", tint = 5, price = 500},
	}
	
	Config.Suspensions =  {
		{name = "Lowered Suspension",mod = 0, price = 100},
		{name = "Street Suspension",mod = 1, price = 250},
		{name = "Sport Suspension",mod = 2, price = 500},
		{name = "Competition Suspension",mod = 3, price = 1000},
	}
	Config.Brakes = {
		{name = "Street Brakes", mod = 0, price = 500},
		{name = "Sport Brakes", mod = 1, price = 1000},
		{name = "Race Brakes", mod = 2, price = 1500},
	}

	Config.Engine = {
		{name = "Engine Upgrade, Level 3", mod = 2, price = 1500},
		{name = "Engine Upgrade, Level 2", mod = 1, price = 3000},
		{name = "Engine Upgrade, Level 1", mod = 0, price = 4500},
	}

	Config.Transmission = {
		{name = "Street Transmission", mod = 0, price = 500},
		{name = "Sports Transmission", mod = 1, price = 1000},
		{name = "Race Transmission", mod = 2, price = 1500},
	}

	Config.Wheel = {
		wheelaccessories = {
			{ name = "Black Tire Smoke", smokecolor = {1,1,1}, price = 500},
			{ name = "BLue Tire Smoke", smokecolor = {0,150,255}, price = 500},
			{ name = "Yellow Tire Smoke", smokecolor = {255,255,50}, price = 500},
			{ name = "Orange Tire Smoke", smokecolor = {255,153,51}, price = 500},
			{ name = "Red Tire Smoke", smokecolor = {255,10,10}, price = 500},
			{ name = "Green Tire Smoke", smokecolor = {10,255,10}, price = 500},
			{ name = "Purple Tire Smoke", smokecolor = {153,10,153}, price = 500},
			{ name = "Pink Tire Smoke", smokecolor = {255,102,178}, price = 500},
			{ name = "Gray Tire Smoke",smokecolor = {128,128,128}, price = 500},
			{ name = "White Tire Smoke",smokecolor = {254,254,254}, price = 500},
			{ name = "Stock Tires",smokecolor = {255,255,255}, price = 500},
		},
		Wheel = {
			frontwheel = {
				{name = "Speedway", wtype = 6, mod = 0, price = 500},
				{name = "Streetspecial", wtype = 6, mod = 1, price = 500},
				{name = "Racer", wtype = 6, mod = 2, price = 500},
				{name = "Trackstar", wtype = 6, mod = 3, price = 500},
				{name = "Overlord", wtype = 6, mod = 4, price = 500},
				{name = "Trident", wtype = 6, mod = 5, price = 500},
				{name = "Triplethreat", wtype = 6, mod = 6, price = 500},
				{name = "Stilleto", wtype = 6, mod = 7, price = 500},
				{name = "Wires", wtype = 6, mod = 8, price = 500},
				{name = "Bobber", wtype = 6, mod = 9, price = 500},
				{name = "Solidus", wtype = 6, mod = 10, price = 500},
				{name = "Iceshield", wtype = 6, mod = 11, price = 500},
				{name = "Loops", wtype = 6, mod = 12, price = 500},
				{name = "Stock", wtype = 6, mod = -1, price = 500},
			},
			backwheel = {
				{name = "Speedway", wtype = 6, mod = 0, price = 500},
				{name = "Streetspecial", wtype = 6, mod = 1, price = 500},
				{name = "Racer", wtype = 6, mod = 2, price = 500},
				{name = "Trackstar", wtype = 6, mod = 3, price = 500},
				{name = "Overlord", wtype = 6, mod = 4, price = 500},
				{name = "Trident", wtype = 6, mod = 5, price = 500},
				{name = "Triplethreat", wtype = 6, mod = 6, price = 500},
				{name = "Stilleto", wtype = 6, mod = 7, price = 500},
				{name = "Wires", wtype = 6, mod = 8, price = 500},
				{name = "Bobber", wtype = 6, mod = 9, price = 500},
				{name = "Solidus", wtype = 6, mod = 10, price = 500},
				{name = "Iceshield", wtype = 6, mod = 11, price = 500},
				{name = "Loops", wtype = 6, mod = 12, price = 500},
				{name = "Stock", wtype = 6, mod = -1, price = 500},
			},
			sportwheels = {
				{name = "Inferno", wtype = 0, mod = 0, price = 500},
				{name = "Deepfive", wtype = 0, mod = 1, price = 500},
				{name = "Lozspeed", wtype = 0, mod = 2, price = 500},
				{name = "Diamondcut", wtype = 0, mod = 3, price = 500},
				{name = "Chrono", wtype = 0, mod = 4, price = 500},
				{name = "Feroccirr", wtype = 0, mod = 5, price = 500},
				{name = "Fiftynine", wtype = 0, mod = 6, price = 500},
				{name = "Mercie", wtype = 0, mod = 7, price = 500},
				{name = "Syntheticz", wtype = 0, mod = 8, price = 500},
				{name = "Organictyped", wtype = 0, mod = 9, price = 500},
				{name = "Endov1", wtype = 0, mod = 10, price = 500},
				{name = "Duper7", wtype = 0, mod = 11, price = 500},
				{name = "Uzer", wtype = 0, mod = 12, price = 500},
				{name = "Groundride", wtype = 0, mod = 13, price = 500},
				{name = "Spacer", wtype = 0, mod = 14, price = 500},
				{name = "Venum", wtype = 0, mod = 15, price = 500},
				{name = "Cosmo", wtype = 0, mod = 16, price = 500},
				{name = "Dashvip", wtype = 0, mod = 17, price = 500},
				{name = "Icekid", wtype = 0, mod = 18, price = 500},
				{name = "Ruffeld", wtype = 0, mod = 19, price = 500},
				{name = "Wangenmaster", wtype = 0, mod = 20, price = 500},
				{name = "Superfive", wtype = 0, mod = 21, price = 500},
				{name = "Endov2", wtype = 0, mod = 22, price = 500},
				{name = "Slitsix", wtype = 0, mod = 23, price = 500},
				{name = "Stock", wtype = 0, mod = -1, price = 500},
			},
			suvwheels = {
				{name = "Vip", wtype = 3, mod = 0, price = 500},
				{name = "Benefactor", wtype = 3, mod = 1, price = 500},
				{name = "Cosmo", wtype = 3, mod = 2, price = 500},
				{name = "Bippu", wtype = 3, mod = 3, price = 500},
				{name = "Royalsix", wtype = 3, mod = 4, price = 500},
				{name = "Fagorme", wtype = 3, mod = 5, price = 500},
				{name = "Deluxe", wtype = 3, mod = 6, price = 500},
				{name = "Icedout", wtype = 3, mod = 7, price = 500},
				{name = "Cognscenti", wtype = 3, mod = 8, price = 500},
				{name = "Lozspeedten", wtype = 3, mod = 9, price = 500},
				{name = "Supernova", wtype = 3, mod = 10, price = 500},
				{name = "Obeyrs", wtype = 3, mod = 11, price = 500},
				{name = "Lozspeedballer", wtype = 3, mod = 12, price = 500},
				{name = "Extra vaganzo", wtype = 3, mod = 13, price = 500},
				{name = "Splitsix", wtype = 3, mod = 14, price = 500},
				{name = "Empowered", wtype = 3, mod = 15, price = 500},
				{name = "Sunrise", wtype = 3, mod = 16, price = 500},
				{name = "Dashvip", wtype = 3, mod = 17, price = 500},
				{name = "Cutter", wtype = 3, mod = 18, price = 500},
				{name = "Stock", wtype = 3, mod = -1, price = 500},
			},
			offroadwheels = {
				{name = "Raider", wtype = 4, mod = 0, price = 500},
				{name = "Mudslinger", wtype = 4, modtype = 23, price = 500},
				{name = "Nevis", wtype = 4, mod = 2, price = 500},
				{name = "Cairngorm", wtype = 4, mod = 3, price = 500},
				{name = "Amazon", wtype = 4, mod = 4, price = 500},
				{name = "Challenger", wtype = 4, mod = 5, price = 500},
				{name = "Dunebasher", wtype = 4, mod = 6, price = 500},
				{name = "Fivestar", wtype = 4, mod = 7, price = 500},
				{name = "Rockcrawler", wtype = 4, mod = 8, price = 500},
				{name = "Milspecsteelie", wtype = 4, mod = 9, price = 500},
				{name = "Stock", wtype = 4, mod = -1, price = 500},
			},
			tunerwheels = {
				{name = "Cosmo", wtype = 5, mod = 0, price = 500},
				{name = "Supermesh", wtype = 5, mod = 1, price = 500},
				{name = "Outsider", wtype = 5, mod = 2, price = 500},
				{name = "Rollas", wtype = 5, mod = 3, price = 500},
				{name = "Driffmeister", wtype = 5, mod = 4, price = 500},
				{name = "Slicer", wtype = 5, mod = 5, price = 500},
				{name = "Elquatro", wtype = 5, mod = 6, price = 500},
				{name = "Dubbed", wtype = 5, mod = 7, price = 500},
				{name = "Fivestar", wtype = 5, mod = 8, price = 500},
				{name = "Slideways", wtype = 5, mod = 9, price = 500},
				{name = "Apex", wtype = 5, mod = 10, price = 500},
				{name = "Stancedeg", wtype = 5, mod = 11, price = 500},
				{name = "Countersteer", wtype = 5, mod = 12, price = 500},
				{name = "Endov1", wtype = 5, mod = 13, price = 500},
				{name = "Endov2dish", wtype = 5, mod = 14, price = 500},
				{name = "Guppez", wtype = 5, mod = 15, price = 500},
				{name = "Chokadori", wtype = 5, mod = 16, price = 500},
				{name = "Chicane", wtype = 5, mod = 17, price = 500},
				{name = "Saisoku", wtype = 5, mod = 18, price = 500},
				{name = "Dishedeight", wtype = 5, mod = 19, price = 500},
				{name = "Fujiwara", wtype = 5, mod = 20, price = 500},
				{name = "Zokusha", wtype = 5, mod = 21, price = 500},
				{name = "Battlevill", wtype = 5, mod = 22, price = 500},
				{name = "Rallymaster", wtype = 5, mod = 23, price = 500},
				{name = "Stock", wtype = 5, mod = -1, price = 500},
			},
			highendwheels = {
				{name = "Shadow", wtype = 7, mod = 0, price = 500},
				{name = "Hyper", wtype = 7, mod = 1, price = 500},
				{name = "Blade", wtype = 7, mod = 2, price = 500},
				{name = "Diamond", wtype = 7, mod = 3, price = 500},
				{name = "Supagee", wtype = 7, mod = 4, price = 500},
				{name = "Chromaticz", wtype = 7, mod = 5, price = 500},
				{name = "Merciechlip", wtype = 7, mod = 6, price = 500},
				{name = "Obeyrs", wtype = 7, mod = 7, price = 500},
				{name = "Gtchrome", wtype = 7, mod = 8, price = 500},
				{name = "Cheetahr", wtype = 7, mod = 9, price = 500},
				{name = "Solar", wtype = 7, mod = 10, price = 500},
				{name = "Splitten", wtype = 7, mod = 11, price = 500},
				{name = "Dashvip", wtype = 7, mod = 12, price = 500},
				{name = "Lozspeedten", wtype = 7, mod = 13, price = 500},
				{name = "Carboninferno", wtype = 7, mod = 14, price = 500},
				{name = "Carbonshadow", wtype = 7, mod = 15, price = 500},
				{name = "Carbonz", wtype = 7, mod = 16, price = 500},
				{name = "Carbonsolar", wtype = 7, mod = 17, price = 500},
				{name = "Carboncheetahr", wtype = 7, mod = 18, price = 500},
				{name = "Carbonsracer", wtype = 7, mod = 19, price = 500},
				{name = "Stock", wtype = 7, mod = -1, price = 500},
			},
			lowriderwheels = {
				{name = "Flare", wtype = 2, mod = 0, price = 500},
				{name = "Wired", wtype = 2, mod = 1, price = 500},
				{name = "Triplegolds", wtype = 2, mod = 2, price = 500},
				{name = "Bigworm", wtype = 2, mod = 3, price = 500},
				{name = "Sevenfives", wtype = 2, mod = 4, price = 500},
				{name = "Splitsix", wtype = 2, mod = 5, price = 500},
				{name = "Freshmesh", wtype = 2, mod = 6, price = 500},
				{name = "Leadsled", wtype = 2, mod = 7, price = 500},
				{name = "Turbine", wtype = 2, mod = 8, price = 500},
				{name = "Superfin", wtype = 2, mod = 9, price = 500},
				{name = "Classicrod", wtype = 2, mod = 10, price = 500},
				{name = "Dollar", wtype = 2, mod = 11, price = 500},
				{name = "Dukes", wtype = 2, mod = 12, price = 500},
				{name = "Lowfive", wtype = 2, mod = 13, price = 500},
				{name = "Gooch", wtype = 2, mod = 14, price = 500},
				{name = "Stock", wtype = 2, mod = -1, price = 500},
			},
			musclewheels = {
				{name = "Classicfive", wtype = 1, mod = 0, price = 500},
				{name = "Dukes", wtype = 1, mod = 1, price = 500},
				{name = "Musclefreak", wtype = 1, mod = 2, price = 500},
				{name = "Kracka", wtype = 1, mod = 3, price = 500},
				{name = "Azrea", wtype = 1, mod = 4, price = 500},
				{name = "Mecha", wtype = 1, mod = 5, price = 500},
				{name = "Blacktop", wtype = 1, mod = 6, price = 500},
				{name = "Dragspl", wtype = 1, mod = 7, price = 500},
				{name = "Revolver", wtype = 1, mod = 8, price = 500},
				{name = "Classicrod", wtype = 1, mod = 9, price = 500},
				{name = "Spooner", wtype = 1, mod = 10, price = 500},
				{name = "Fivestar", wtype = 1, mod = 11, price = 500},
				{name = "Oldschool", wtype = 1, mod = 12, price = 500},
				{name = "Eljefe", wtype = 1, mod = 13, price = 500},
				{name = "Dodman", wtype = 1, mod = 14, price = 500},
				{name = "Sixgun", wtype = 1, mod = 15, price = 500},
				{name = "Mercenary", wtype = 1, mod = 16, price = 500},
				{name = "Stock", wtype = 1, mod = -1, price = 500},
			},
		}
	}


	Config.DetailMods = {
		Liveries = {
			modtype = 48,
			startprice = 2000,
			increaseby = 1000
		},
		
		-- Windows = {
		-- 	modtype = 46,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },
		
		-- Tank = {
		-- 	modtype = 45,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },

		-- Aerials = {
		-- 	modtype = 43,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },

		-- ArchCover = {
		-- 	modtype = 42,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },

		-- Struts = {
		-- 	modtype = 41,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },
		
		-- AirFilter = {
		-- 	modtype = 40,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },
		
		-- EngineBlock = {
		-- 	modtype = 39,
		-- 	startprice = 2000,
		-- 	increaseby = 1000
		-- },

		-- Hydraulics = {
		-- 	modtype = 38,
		-- 	startprice = 5000,
		-- 	increaseby = 2500
		-- },
		
		-- Trunk = {
		-- 	modtype = 37,
		-- 	startprice = 5000,
		-- 	increaseby = 1250
		-- },

		-- Speakers = {
		-- 	modtype = 36,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },

		-- Plaques = {
		-- 	modtype = 35,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- ShiftLeavers = {
		-- 	modtype = 34,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- Stringwheel = {
		-- 	modtype = 33,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- Seats = {
		-- 	modtype = 32,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- DoorSpeaker = {
		-- 	modtype = 31,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },

		-- Dial = {
		-- 	modtype = 30,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		-- Dashboard = {
		-- 	modtype = 29,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- Ornaments = {
		-- 	modtype = 28,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- Trim = {
		-- 	modtype = 27,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- VanityPlates = {
		-- 	modtype = 26,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- PlateHolder = {
		-- 	modtype = 25,
		-- 	startprice = 500,
		-- 	increaseby = 150
		-- },
		
		-- Roof = {
		-- 	modtype = 10,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- Fenders = {
		-- 	modtype = 8,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- Hood = {
		-- 	modtype = 7,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- Grille = {
		-- 	modtype = 6,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- RollCage = {
		-- 	modtype = 5,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- Exhaust = {
		-- 	modtype = 4,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- Skirts = {
		-- 	modtype = 3,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- RearBumpers = {
		-- 	modtype = 2,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- FrontBumpers = {
		-- 	modtype = 1,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
		
		-- Spoilers = {
		-- 	modtype = 0,
		-- 	startprice = 500,
		-- 	increaseby = 500
		-- },
	}