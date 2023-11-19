local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
 
local Window = Library.CreateLib("✨ MHUB AA", "BloodTheme")

local filename = "MHUB_Anime_Adventures.txt"

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

--TEAMS IN MISC
local TeamSection = Misc:NewSection("TEAMS")
--team 1
TeamSection:NewButton("Team 1", "Use for equip team 1", function()
    local args = {
        [1] = "1"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)
--team 2
TeamSection:NewButton("Team 2", "Use for equip team 2", function()
    local args = {
        [1] = "2"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)
--team 3
TeamSection:NewButton("Team 3", "Use for equip team 3", function()
    local args = {
        [1] = "3"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)
--team 4
TeamSection:NewButton("Team 4", "Use for equip team 4", function()
    local args = {
        [1] = "4"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)
--team 5
TeamSection:NewButton("Team 5", "Use for equip team 5", function()
    local args = {
        [1] = "5"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)
--team 6
TeamSection:NewButton("Team 6", "Use for equip team 6", function()
    local args = {
        [1] = "6"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.switch_team_loadout:InvokeServer(unpack(args))
end)

--EVENT IN MISC

local EventSection = Misc:NewSection("EVENT")
--open 10
EventSection:NewButton("Open 10 capsules", "Click for open 10 capsules", function()
    local args = {
        [1] = "capsule_halloween2",
        [2] = {
            ["use10"] = true
        }
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.use_item:InvokeServer(unpack(args))
end)
-- open 1
EventSection:NewButton("Open 1 capsule", "Click for open 1 capsule", function()
    local args = {
        [1] = "capsule_halloween2",
        [2] = {
            ["use10"] = false
        }
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.use_item:InvokeServer(unpack(args))
end)

--banner

local BannerSection = Misc:NewSection("BANNER")

--open 10
BannerSection:NewButton("Buy 10 opens", "Click for buy 10 opens", function()
    local args = {
        [1] = "EventClover",
        [2] = "gems10"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))
end)
-- open 1
BannerSection:NewButton("Buy 1 open", "Click for buy 1 open", function()
    local args = {
        [1] = "EventClover",
        [2] = "gems"
    }
    
    game:GetService("ReplicatedStorage").endpoints.client_to_server.buy_from_banner:InvokeServer(unpack(args))
end)
