SLASH_HELLO1 = "/helloworld"
SLASH_HELLO2 = "/hellow"


local function showHello(name)
    local greeting = "Hello, " ..name.. "!"

    message(greeting)
end

--hello world, player
local function helloWorldHandler(name)
    local nameExists = string.len(name) > 0

    if(nameExists) then
        showHello(name)
    else
        local playerName = UnitName("player")
            showHello(playerName)
    end
end

SlashCmdList["HELLO"] = helloWorldHandler