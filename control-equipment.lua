script.on_event(defines.events.on_player_placed_equipment, function(event)
    if event.equipment.name == "burner-fuel-equipment" then
        local give_energy = event.equipment.prototype.take_result.fuel_value
        local fuel = event.grid.take{equipment=event.equipment}
        local needed_energy = 0.0
        local conversion_effectiveness = 0.0
        for _, item in pairs(event.grid.equipment) do
            needed_energy = needed_energy + (item.max_energy - item.energy)
            if item.name == "portable-steam-engine-equipment" then
                conversion_effectiveness = 0.1
            end
        end
        
        if needed_energy > 0.0 and conversion_effectiveness > 0.0 then
            if give_energy > needed_energy then give_energy = needed_energy end
            
            for _, item in pairs(event.grid.equipment) do
                item.energy = item.energy + ((item.max_energy - item.energy) / needed_energy * give_energy)
            end
        else
            game.players[event.player_index].insert(fuel)
        end
    end
end)
