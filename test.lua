mushroomdatas = {
                        {   "mushroom_bulbous_green",
                            "Green Bulbous",
                            "mushroom_bulbous_green.png",
                            -10
                        },
                        {
                            "mushroom_chanterelle",
                            "Chanterelle",
                            "mushroom_chanterelle.png",
                            3
                        },
                        {
                            "mushroom_lorikeet",
                            "Lorikeet",
                            "mushroom_lorikeet.png",
                            -5
                        },
                        {
                            "mushroom_parasol",
                            "Parasol",
                            "mushroom_parasol.png",
                            5
                        },
                        {
                            "mushroom_poisonous_sublime",
                            "Poisonous Sublime",
                            "mushroom_poisonous_sublime.png",
                            -3
                        },
                        {
                            "mushroom_stone",
                            "Stone Mushroom",
                            "mushroom_stone.png",
                            4
                        }
                    }


for key,value in pairs(mushroomdatas) do
    print(value[1] .. " " .. value[4])
end
