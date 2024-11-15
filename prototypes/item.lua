local coin = {
    type = "item",
    name = "appalingscoin",
    icon = "__test__/graphics/icons/Coin.png",
    icon_size = 32,
    subgroup = "other", -- see other subgroup in factorio wiki Data.raw#item-subgroup
    stack_size = 200,
}

local tita_ore = { 
    type = "item",
    name = "titaore",
    icon = "__test__/graphics/icons/Coin.png",
    icon_size = 32,
    subgroup = "raw-ressource", -- see other subgroup in factorio wiki Data.raw#item-subgroup
    stack_size = 50,
}

local tita_plate = {
    type = "item",
    name = "titaplates",
    icon = "__test__/graphics/icons/Coin.png",
    icon_size = 32,
    subgroup = "raw-ressource", -- see other subgroup in factorio wiki Data.raw#item-subgroup
    stack_size = 100,
}

local tita_furnace = {
    type = "item",
    name = "titafurnace",
    icon = "__test__/graphics/furnace/furnace.png",
    icon_size = 32,
    subgroup = "smelting-machine", -- see other subgroup in factorio wiki Data.raw#item-subgroup
    stack_size = 50,
}

local tita_assembler = {
    type = "item",
    name = "titaassembler",
    icon = "__test__/graphics/assembler/assembler.png",
    icon_size = 32,
    subgroup = "production-machine", -- see other subgroup in factorio wiki Data.raw#item-subgroup
    stack_size = 50,
}

local ____ = {
    type = "item",
    name = "",
    icon = "__test__/graphics/____",
    icon_size = 32,
    subgroup = "",
    stack_size = 50,
}

data:extend({
    coin,
    tita_ore,
    tita_plate,
    tita_furnace,
    tita_assembler
})