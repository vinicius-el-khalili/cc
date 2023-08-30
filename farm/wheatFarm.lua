--9x9 square
-- move one line farming wheat
function checkSeedState()
    
    success, data = turtle.inspectDown()
    if success then
        if data.state.age == 7 then
            return true
        end
    end
    return false

end

