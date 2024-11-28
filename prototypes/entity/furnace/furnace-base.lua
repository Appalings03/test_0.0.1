local furnace = {
    type = "furnace",
    name = "titafurnace",
    icon = "__test__/graphics/furnace/furnace.png",
    icon_size = 32,
    order = "c",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable ={hardness=0.4, mining_time=0.8, result="titafurnace"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.75,-0.75},{0.75,0.75}},
    selection_box = {{-1.0,-1.0},{1.0,1.0}},
    animation = {
        filename="__test__/graphics/furnace/furnace.png",
        priority = "high",
        width = 32,
        height = 32,
        frame_count = 1,
        line_lenght = 1, -- store all frame in a n*m grid inside one image filename
        -- line lenght is the nbr of textures per line, and frame count complete count of images
    },
    crafting_categories = {"smelting"}, -- "crafting" for assembly machine
    crafting_speed = 10.0,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.1,
    }, 
    energy_usage = (100).."kW",
    result_inventory_size = 1, -- number of inventory slots for the output
    source_inventory_size = 1, -- number of inventory slots for the input
}
data:extend({
    furnace,
})