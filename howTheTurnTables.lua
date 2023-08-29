local input = "forward 3 up 2 left 1 right 3"

local function moveTurtle(direction, distance)
    local movementFunctions = {
        forward = turtle.forward,
        back = turtle.back,
        up = turtle.up,
        down = turtle.down,
        left = function() turtle.turnLeft() end,
        right = function() turtle.turnRight() end
    }

    local movementFunction = movementFunctions[direction]
    if movementFunction then
        for _ = 1, distance do
            movementFunction()
        end
        return true
    else
        print("Invalid direction:", direction)
        return false
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

processMovementInput(input)