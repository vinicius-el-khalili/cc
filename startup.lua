local function createFile (url,filename)

    term.clear()
    term.setCursorPos(1,1)
    print("starting...")
    local response = http.get(url)
    if response then
        local code = response.readAll()
        fs.delete(filename)
        local file = fs.open(filename,"w")
        file.write(code)
        file.close()
    end
    
end

local url1 = "https://raw.githubusercontent.com/vinicius-el-khalili/cc/master/health.lua"
local url2 = "https://raw.githubusercontent.com/vinicius-el-khalili/cc/master/startup.lua"
createFile(url1,"health.lua")
createFile(url2,"startup.lua")