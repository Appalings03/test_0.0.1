local assembler = {
    type = "assembling-machine",
    name = "titaassembler",
    icon = "__test__/graphics/assembler/assembler.png",
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
        filename="__test__/graphics/assembler/assembler.png",
        priority = "high",
        width = 32,
        height = 32,
        frame_count = 1,
        line_lenght = 1,
    },
    crafting_categories = {"crafting"},
    crafting_speed = 10.0,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.1,
    }, 
    energy_usage = (45).."kW",
    ingredients_count = 10, -- max number of ingredients a product can have
    open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
    close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
    vehicule_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
}
data:extend({
    assembler,
})