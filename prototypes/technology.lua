local techcoin = {
    type = "technology",
    name = "appalingscointech",
    icon = "__test__/graphics/icons/Coin.png",
    icon_size = 32,
    order = "c",
    prerequisizes = {}, --other tech to be unlock before
    effects= {
        {type = "unlock-recipe",recipe = "appalingscoin"}
    },
    unit = {
        count = 100, -- nbr of science pack
        ingrediends = {
            {"automation-science-pack", 1}, -- how many science per cycle
            {"logistic-science-pack", 1},
        },
        time = 10, --time per cycle
    },
}

data:extend({
    techcoin,
})