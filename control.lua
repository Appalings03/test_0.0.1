function helloPlayer(tableIn)
    local player = game.get_player(tableIn.player_index)
    local color = {r=1, g=0, b=0, a=1}

    player.print("Hello there! This is a private message to: " .. player.name, color)
    game.print("Hello there from " .. player.name, color)

end

commands.add_command("say_hello", "This is a help message", helloPlayer)