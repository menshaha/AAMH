local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
 
local Window = Library.CreateLib("✨ MHUB AA", "BloodTheme")

--LOCALS
local tp = game:GetService("TeleportService")

--MAIN
local Main = Window:NewTab("MAIN")

local MainSection = Main:NewSection("MAIN")

MainSection:NewButton("Teleport To Lobby", "Click for teleport to lobby", function()
    print("Teleporting...")
    tp:Teleport(8304191830)
end)

MainSection:NewButton("Lock fps", "Lock your fps at 10", function()
    local FPS = 15 -- CHANGE THIS TO FPS U WANT
    local clock = tick()
    
    while true do
       while clock + 1 / FPS > tick() do end
       game:GetService('RunService').RenderStepped:wait()
       clock = tick()
    end
end)

MainSection:NewToggle("low GPU mode", "ToggleInfo", function(state)
    if state then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)

--FARM
local Farm = Window:NewTab("FARM")

--AUTOPLAY
local Autoplay = Window:NewTab("AUTOPLAY")

--MACRO
local Macro = Window:NewTab("MACRO")

--MISC
local Misc = Window:NewTab("MISC")

local TeamSection = Misc:NewSection("TEAMS")

TeamSection:NewButton("Team 1", "Use for equip team 1", function()
    local args = {
        [1] = "1"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)

TeamSection:NewButton("Team 2", "Use for equip team 2", function()
    local args = {
        [1] = "2"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)

TeamSection:NewButton("Team 3", "Use for equip team 3", function()
    local args = {
        [1] = "3"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)

TeamSection:NewButton("Team 4", "Use for equip team 4", function()
    local args = {
        [1] = "4"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)

TeamSection:NewButton("Team 5", "Use for equip team 5", function()
    local args = {
        [1] = "5"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)

TeamSection:NewButton("Team 6", "Use for equip team 6", function()
    local args = {
        [1] = "6"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)
