local function moveTurtle(direction, distance)
    if direction == "forward" then
        -- Logic to move forward by 'distance' blocks
        print("Moving forward by", distance, "blocks")
    elseif direction == "back" then
        -- Logic to move backward by 'distance' blocks
        print("Moving backward by", distance, "blocks")
    elseif direction == "up" then
        -- Logic to move up by 'distance' blocks
        print("Moving up by", distance, "blocks")
    elseif direction == "down" then
        -- Logic to move down by 'distance' blocks
        print("Moving down by", distance, "blocks")
    elseif direction == "left" then
        -- Logic to move left by 'distance' blocks
        print("Moving left by", distance, "blocks")
    elseif direction == "right" then
        -- Logic to move right by 'distance' blocks
        print("Moving right by", distance, "blocks")
    else
        print("Invalid direction:", direction)
    end
end

local function processMovementInput(input)
    local commands = {}
    for direction, distance in input:gmatch("(%a+)%s*(%d*)") do
        distance = tonumber(distance) or 1
        table.insert(commands, { direction = direction, distance = distance })
    end

    for _, command in ipairs(commands) do
        moveTurtle(command.direction, command.distance)
    end
end

local input1 = "forward 3 up 2 left 1 right 3"
local input2 = "back 3 right forward 2"

processMovementInput(input1)
print("===")
processMovementInput(input2)
