--Item created from inventory
local coin = {
    type = "recipe",
    name = "appalingscoin",
    ingredients = {
        {"iron-plate", 20},
        {"copper-plate", 20},
    },
    result = "appalingscoin", -- item recive from the assembly
    energy_required = 2, --second needed for the carft
    enabled = false, --disabled before technology
}

--item created from smelting
local plate = {
    type = "recipe",
    name = "titaplate",
    category = "smelting",
    energy_required = 3.5,
    ingredients = {
        {"titaore", 2}
    },
    result = "titaplate",

}

data:extend({
    coin,
    plate,
})