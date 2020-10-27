local Public = {}

Public.treasures = {
	["wooden-chest"] = {
		tech_bonus = 0.1,
		amount_multiplier = 1,
	},
	["iron-chest"] = {
		tech_bonus = 0.15,
		amount_multiplier = 1.5,		
	},
	["steel-chest"] = {
		tech_bonus = 0.2,
		amount_multiplier = 2,		
	},
	["crash-site-spaceship-wreck-medium-1"] = {
		tech_bonus = 0.25,
		amount_multiplier = 2.5,		
	},
	["crash-site-spaceship-wreck-medium-2"] = {
		tech_bonus = 0.25,
		amount_multiplier = 2.5,		
	},
	["crash-site-spaceship-wreck-medium-3"] = {
		tech_bonus = 0.25,
		amount_multiplier = 2.5,		
	},
	["crash-site-spaceship-wreck-big-1"] = {
		tech_bonus = 0.30,
		amount_multiplier = 3,		
	},
	["crash-site-spaceship-wreck-big-2"] = {
		tech_bonus = 0.30,
		amount_multiplier = 3,		
	},
	["big-ship-wreck-1"] = {
		tech_bonus = 0.35,
		amount_multiplier = 3.5,		
	},
	["big-ship-wreck-2"] = {
		tech_bonus = 0.35,
		amount_multiplier = 3.5,		
	},
	["big-ship-wreck-3"] = {
		tech_bonus = 0.35,
		amount_multiplier = 3.5,		
	},
	["crash-site-chest-1"] = {
		tech_bonus = 0.40,
		amount_multiplier = 4,		
	},
	["crash-site-chest-2"] = {
		tech_bonus = 0.40,
		amount_multiplier = 4,		
	},
	["crash-site-spaceship"] = {
		tech_bonus = 0.5,
		amount_multiplier = 5,		
	},
}

Public.starting_items = {
	["pistol"] = 1,
	["firearm-magazine"] = 8,
	["explosives"] = 16,
	["raw-fish"] = 8,	
}

Public.reveal_chain_brush_sizes = {
	["unit"] = 7,
	["unit-spawner"] = 15,
	["turret"] = 9,
}

Public.spawn_market_items = {
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'rail', count = 2}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'rail-signal', count = 1}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'rail-chain-signal', count = 1}},
	{price = {{"raw-fish", 8}}, offer = {type = 'give-item', item = 'train-stop'}},
	{price = {{"raw-fish", 50}}, offer = {type = 'give-item', item = 'locomotive'}},
	{price = {{"raw-fish", 20}}, offer = {type = 'give-item', item = 'cargo-wagon'}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'red-wire', count = 2}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'green-wire', count = 2}},
	{price = {{"raw-fish", 3}}, offer = {type = 'give-item', item = 'decider-combinator'}},
	{price = {{"raw-fish", 3}}, offer = {type = 'give-item', item = 'arithmetic-combinator'}},
	{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'constant-combinator'}},
	{price = {{"raw-fish", 4}}, offer = {type = 'give-item', item = 'programmable-speaker'}},
	{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'small-lamp'}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'firearm-magazine', count = 2}},
	{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'piercing-rounds-magazine'}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'grenade'}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'land-mine'}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'explosives', count = 4}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'wood', count = 10}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'iron-ore', count = 10}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'copper-ore', count = 10}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'stone', count = 10}},
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'coal', count = 10}},	
	{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'uranium-ore', count = 5}},
	{price = {{'wood', 12}}, offer = {type = 'give-item', item = "raw-fish", count = 1}},	
	{price = {{'iron-ore', 12}}, offer = {type = 'give-item', item = "raw-fish", count = 1}},
	{price = {{'copper-ore', 12}}, offer = {type = 'give-item', item = "raw-fish", count = 1}},
	{price = {{'stone', 12}}, offer = {type = 'give-item', item = "raw-fish", count = 1}},
	{price = {{'coal', 12}}, offer = {type = 'give-item', item = "raw-fish", count = 1}},	
	{price = {{'uranium-ore', 6}}, offer = {type = 'give-item', item = "raw-fish", count = 1}}
}

Public.pickaxe_tiers = {
	"Wood",
	"Plastic",
	"Bone",
	"Alabaster",
	"Lead",
	"Zinc",	
	"Tin",
	"Salt",	
	"Bauxite",
	"Borax",
	"Bismuth",
	"Amber",
	"Galena",	
	"Calcite",
	"Aluminium",
	"Silver",
	"Gold",
	"Copper",
	"Marble",
	"Brass",
	"Flourite",
	"Platinum",
	"Nickel",	
	"Iron",	
	"Manganese",
	"Apatite",
	"Uraninite",
	"Turquoise",
	"Hematite",
	"Glass",
	"Magnetite",
	"Concrete",
	"Pyrite",
	"Steel",
	"Zircon",
	"Titanium",
	"Silicon",
	"Quartz",
	"Garnet",
	"Flint",
	"Tourmaline",
	"Beryl",
	"Topaz",
	"Chrysoberyl",
	"Chromium",
	"Tungsten",
	"Corundum",
	"Tungsten",
	"Diamond",
	"Netherite",
	"Penumbrite",
	"Meteorite",
	"Crimtane",
	"Obsidian",
	"Demonite",
	"Mythril",
	"Adamantite",
	"Chlorophyte",
	"Densinium",
	"Luminite",
}

return Public