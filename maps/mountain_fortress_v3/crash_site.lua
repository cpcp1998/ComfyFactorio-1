local Functions = require 'maps.mountain_fortress_v3.functions'

local post_table = {}
local levels = 10

local turrets_table = {
    [1] = {7},
    [2] = {2},
    [3] = {9},
    [4] = {3},
    [5] = {11},
    [6] = {3, 5},
    [7] = {10},
    [8] = {10, 11},
    [9] = {6},
    [10] = {10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 6}
}

local function get_post(level, loot, machine)
    local tbl = {}
    local radius = 16 + level * 2
    if radius > 48 then radius = 48 end
    tbl.radius = radius
    if level <= 2 then tbl.core_radius = radius - 4
    elseif level <= 4 then tbl.core_radius = radius - 6
    elseif level <= 8 then tbl.core_radius = radius - 8
    else tbl.core_radius = radius - 10 end

    tbl.machine = machine
    tbl.machine_loot = loot
    tbl.machine_weights = Functions.prepare_weighted_loot(loot)

    if level <= 2 then tbl.chest = 'iron-chest'
    else tbl.chest = 'steel-chest' end

    if level <= #turrets_table then
        tbl.turrets = turrets_table[level]
    else
        tbl.turrets = turrets_table[#turrets_table]
    end

    return tbl
end

local function append_to_table(level, loot, machine)
    tbl = post_table[level] or {}
    tbl[#tbl + 1] = get_post(level, loot, machine)
    post_table[level] = tbl
end

local furnace_list = {
    ['iron-plate'] = 1,
    ['copper-plate'] = 1,
    ['stone-brick'] = 2,
    ['steel-plate'] = 3,
}
for level = 1, levels do
    local furnace_loot = {}
    for item, l in pairs(furnace_list) do
        if level >= l then
            furnace_loot[#furnace_loot + 1] = {
                stack = {
                    furnace_item = item,
                    keep_active = true,
                    output = {item = item, min_rate = 10 / 60, distance_factor = 0},
                    name = item,
                    count = 2000
                },
                weight = 1
            }
        end
    end
    append_to_table(level, furnace_loot, 'electric-furnace')
end

local ammo_list = {
    ['firearm-magazine'] = 1,
    ['piercing-rounds-magazine'] = 1,
    ['shotgun-shell'] = 2,
    ['grenade'] = 2,
    ['defender-capsule'] = 2,
    ['rocket'] = 2,
    ['piercing-shotgun-shell'] = 3,
    ['distractor-capsule'] = 3,
    ['land-mine'] = 3,
    ['poison-capsule'] = 3,
    ['uranium-rounds-magazine'] = 4,
    ['destroyer-capsule'] = 4,
    ['cluster-grenade'] = 4,
    ['explosive-rocket'] = 4
}
for level = 1, levels do
    local ammo_loot = {}
    for item, l in pairs(ammo_list) do
        if level >= l then
            ammo_loot[#ammo_loot + 1] = {
                stack = {
                    recipe = item,
                    keep_active = true,
                    output = {item = item, min_rate = 10 / 60, distance_factor = 0},
                    name = item,
                    count = 2000
                },
                weight = 1
            }
        end
    end
    append_to_table(level, ammo_loot, 'assembling-machine-3')
end

local science_list = {
    ['automation-science-pack'] = 1,
    ['logistic-science-pack'] = 1,
    ['military-science-pack'] = 2,
    ['chemical-science-pack'] = 2,
    ['production-science-pack'] = 4,
    ['utility-science-pack'] = 4,
    ['speed-module-3'] = 5,
    ['productivity-module-3'] = 5,
    ['effectivity-module-3'] = 5,
}
for level = 1, levels do
    local science_loot = {}
    for item, l in pairs(science_list) do
        if level >= l then
            science_loot[#science_loot + 1] = {
                stack = {
                    recipe = item,
                    keep_active = true,
                    output = {item = item, min_rate = 1 / 60, distance_factor = 0},
                    name = item,
                    count = 100
                },
                weight = 1
            }
        end
    end
    append_to_table(level, science_loot, 'assembling-machine-3')
end

local intermediate_list = {
    ['electronic-circuit'] = 1,
    ['advanced-circuit'] = 2,
    ['processing-unit'] = 3,
    ['engine-unit'] = 2,
    ['electric-engine-unit'] = 3,
    ['flying-robot-frame'] = 4,
    ['rocket-control-unit'] = 5,
    ['low-density-structure']= 5,
    ['rocket-fuel'] = 5,
    ['uranium-fuel-cell'] = 6
}
for level = 1, levels do
    local intermediate_loot = {}
    for item, l in pairs(intermediate_list) do
        if level >= l then
            intermediate_loot[#intermediate_loot + 1] = {
                stack = {
                    recipe = item,
                    keep_active = true,
                    output = {item = item, min_rate = 5 / 60, distance_factor = 0},
                    name = item,
                    count = 1000
                },
                weight = 1
            }
        end
    end
    append_to_table(level, intermediate_loot, 'assembling-machine-3')
end

Public = {}
function Public.get_post_table(level)
    if level > #post_table then
        return post_table[#post_table]
    end
    return post_table[level]
end

return Public
