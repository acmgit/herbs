moreflowers = {}
local mf = moreflowers

mf.modname = "moreflowers"
mf.version = 1
mf.revision = 0

local modname = mf.modname

-- Load support for MT game translation.
local S = minetest.get_translator(modname)

--[[
local T = minetest.get_translator(modname)
local function S(text)
    local line = string.gsub(text, "\27%([^()]*%)", "")
   return T(line)
]]--

dofile(minetest.get_modpath(modname) .. "/mapgen.lua")

-- Flower registration
function mf.add_simple_flower(name, desc, box, f_groups)
	-- Common flowers' groups
	f_groups.snappy = 3
	f_groups.flower = 1
	f_groups.flora = 1
	f_groups.attached_node = 1

	minetest.register_node(modname .. ":" .. name, {
		description = desc,
		drawtype = "plantlike",
		waving = 1,
		tiles = {modname .. "_" .. name .. ".png"},
		inventory_image = modname .. "_" .. name .. ".png",
		wield_image = modname .. "_" .. name .. ".png",
		sunlight_propagates = true,
		paramtype = "light",
		walkable = false,
		buildable_to = true,
		groups = f_groups,
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed",
			fixed = box
		}
	})
end

function mf.register_mushroom(name, descript, tile, heal)

    minetest.register_node(modname .. ":" .. name, {
        description = descript,
        tiles = {modname .. "_" .. tile},
        inventory_image = modname .. "_" .. tile,
        wield_image = modname .. "_" .. tile,
        drawtype = "plantlike",
        paramtype = "light",
        sunlight_propagates = true,
        walkable = false,
        buildable_to = true,
        groups = {mushroom = 1, food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
        sounds = default.node_sound_leaves_defaults(),
        on_use = minetest.item_eat(heal),
        selection_box = {
            type = "fixed",
            fixed = {-3 / 16, -0.5, -3 / 16, 3 / 16, -2 / 16, 3 / 16},
        }
    })
end

mf.flowerdatas = {
	{
		"campanula_blue",
		S("Blue Campanula"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_blue = 1, flammable = 1}
	},
	{
		"clover_red",
		S("Red Clover"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_violet = 1, flammable = 1}
	},
	{
		"clover_white",
		S("White Clover"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 3 / 16, 4 / 16},
		{color_green = 1, flammable = 1}
	},
	{
		"cornflower",
		S("Cornflower"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_blue = 1, flammable = 1}
	},
    {
		"houndstooth",
		S("Yellow Houndstooth"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_yellow = 1, flammable = 1}
	},
	{
		"iris",
		S("Iris"),
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_blue = 1, flammable = 1}
	},
	{
		"margerit",
		S("Margerit"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_white = 1, flammable = 1}
	},
	{
		"noble_white",
		S("Noble White"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 2 / 16, 4 / 16},
		{color_grey = 1, flammable = 1}
	},
	{
		"poppy_red",
		S("Red Poppy"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_red = 1, flammable = 1}
	},
	{
		"ribwort",
		S("Ribwort"),
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_brown = 1, flammable = 1}
	},
	{
		"snapdragon",
		S("Snapdragon"),
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_pink = 1, flammable = 1}
	},
	{
		"sundew",
		S("Round Sundew"),
		{-4 / 16, -0.5, -4 / 16, 4 / 16, 5 / 16, 4 / 16},
		{color_red = 1, flammable = 1}
	},
	{	"thimble_blue",
		S("Blue Thimble"),
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_blue = 1, flammable = 1}
	},
	{
		"thimble_yellow",
		S("Yellow Thimble"),
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_yellow = 1, flammable = 1}
	},
	{
		"yarrow_white",
		S("White Yarrow"),
		{-2 / 16, -0.5, -2 / 16, 2 / 16, 5 / 16, 2 / 16},
		{color_white = 1, flammable = 1}
	}
}

mf.mushroomdatas = {
                        {   "mushroom_bulbous_green",
                            S("Green Bulbous"),
                            "mushroom_bulbous_green.png",
                            1,
                            -10
                        },
                        {
                            "mushroom_chanterelle",
                            S("Chanterelle"),
                            "mushroom_chanterelle.png",
                            3,
                            0
                        },
                        {
                            "mushroom_lorikeet",
                            S("Lorikeet"),
                            "mushroom_lorikeet.png",
                            1,
                            -5
                        },
                        {
                            "mushroom_parasol",
                            S("Parasol"),
                            "mushroom_parasol.png",
                            5,
                            0
                        },
                        {
                            "mushroom_poisonous_sublime",
                            S("Poisonous Sublime"),
                            "mushroom_poisonous_sublime.png",
                            1,
                            -3
                        },
                        {
                            "mushroom_stone",
                            S("Stone Mushroom"),
                            "mushroom_stone.png",
                            4,
                            0
                        }
                    }

for _, mushroom in pairs(mf.mushroomdatas) do
    mf.register_mushroom(mushroom[1],
                            mushroom[2],
                            mushroom[3],
                            mushroom[4]
                            )
end

for _,item in pairs(mf.flowerdatas) do
	mf.add_simple_flower(unpack(item))
end

dofile(minetest.get_modpath(modname) .. "/register_mods.lua")

minetest.log("action","[Mod] " .. mf.modname .. " V " .. mf.version .. "." .. mf.revision .. " loaded.")
print("[Mod] " .. mf.modname .. " V " .. mf.version .. "." .. mf.revision .. " loaded.")
