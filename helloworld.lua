print("hello from github!\n")
local text = "Much test"
print (text,"\n")
local stuff = function ()
    local var1, var2 = "doing", "stuff"
    print(var1..var2.."\n")
end
stuff()
if true then
    print("true")
end
if 2>1 or 1>2 then
    print("2>1")
end

local Table = {}
table.insert(Table, "much table")
print(Table[1])

turtle.turnLeft()
turtle.digDown()

