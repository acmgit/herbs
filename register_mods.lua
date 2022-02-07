local modname = moreflowers.modname
local mf = moreflowers

if(minetest.get_modpath("hunger_ng")) then
    local add = hunger_ng.add_hunger_data
    
    for key, value in pairs(mf.mushroomdatas) do
            add(modname .. ":" .. value[1], {satiates = value[4], heal = value[5]})
            
    end -- for key
    
end -- if(minetest.get_modname("hunger_ng
