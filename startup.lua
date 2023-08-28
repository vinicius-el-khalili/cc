local function createFile (url,filename)
    local response = http.get(url)
    if response then
        local code = response.readAll()
        local file = fs.open(filename,"w")
        file.write(code)
        file.close()
    end
end

local url1 = "https://raw.githubusercontent.com/vinicius-el-khalili/cc/master/helloworld.lua"
createFile(url1,"github.lua")