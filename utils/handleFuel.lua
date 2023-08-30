--function handleFuel() print("@handleFuel...") print("Fuel Level: " .. turtle.getFuelLevel()) local foundCoal = false; for slot = 1, 16 do local item = turtle.getItemDetail(slot); if item and item.name == "minecraft:coal" then turtle.select(slot); turtle.refuel(item.count); foundCoal = true; print("Success") print("Fuel Level: " .. turtle.getFuelLevel()) break; end; end; turtle.select(1); if not foundCoal then print("Fail") print("Couldn't find coal.") end; return foundCoal; end;

function handleFuel()

    print("@handleFuel...")
    print("Fuel Level: "..turtle.getFuelLevel())
    local foundCoal = false
    for slot = 1, 16 do
    local item = turtle.getItemDetail(slot)
        if item and item.name == "minecraft:coal" then
            turtle.select(slot)
            turtle.refuel(item.count)
            foundCoal = true
            print("Success")
            print("Fuel Level: "..turtle.getFuelLevel())
            break
        end
    end
    turtle.select(1)
    if not foundCoal then
        print("Fail")
        print("Coundn't find coal.")
    end
    return foundCoal
    
end

