--9x9 square
-- move one line farming wheat

function handleFuel() print("@handleFuel...") print("Fuel Level: " .. turtle.getFuelLevel()) local foundCoal = false; for slot = 1, 16 do local item = turtle.getItemDetail(slot); if item and item.name == "minecraft:coal" then turtle.select(slot); turtle.refuel(item.count); foundCoal = true; print("Success") print("Fuel Level: " .. turtle.getFuelLevel()) break; end; end; turtle.select(1); if not foundCoal then print("Fail") print("Couldn't find coal.") end; return foundCoal; end;

function checkWheatState()
    
    success, data = turtle.inspectDown()
    if success then
        if data.state.age == 7 then
            return true
        end
    end
    return false

end

