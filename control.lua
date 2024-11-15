function helloPlayer(tableIn)
    local player = game.get_player(tableIn.player_index)
    local color = {r=1, g=0, b=0, a=1}

    player.print("Hello there! This is a private message to: " .. player.name, color)
    game.print("Hello there from " .. player.name, color)

end

commands.add_command("say_hello", "This is a help message", helloPlayer)


--Multiblock Check
local function is_valid_multiblock(surface, origin)
    -- Check for multiblock structure around the origin
    local area = {
        {origin.x - 1, origin.y - 1}, -- Top-left corner
        {origin.x + 1, origin.y + 1}  -- Bottom-right corner
    }

    local entities = surface.find_entities_filtered({area = area})
    local has_controller = false
    local support_count = 0

    for _, entity in pairs(entities) do
        if entity.name == "multiblock-controller" then
            has_controller = true
        elseif entity.name == "multiblock-support" then
            support_count = support_count + 1
        end
    end

    -- Multiblock is valid if there's 1 controller and 3 support blocks
    return has_controller and support_count == 3
end

script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if not entity.valid then return end

    if entity.name == "multiblock-controller" then
        local surface = entity.surface
        local position = entity.position

        if is_valid_multiblock(surface, position) then
            -- Activate the multiblock (e.g., log a message or enable functionality)
            game.print("Multiblock structure is valid!")
            -- Custom logic for multiblock activation
        else
            -- Notify player or prevent invalid placement
            game.print("Multiblock structure is incomplete!")
        end
    end
end)