local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local player = game.Players.LocalPlayer
local OSTime = os.time()

--STATS
local gems = player._stats.gem_amount.Value
local gold = player._stats.gold_amount.Value
local trophie = player._stats.trophies.Value
local user = player.PlayerGui.ProfileGUI.Main.ProfileBanner.PlayerName.Text

local Window = Library.CreateLib("✨ MHUB AA", "BloodTheme")

--LOCALS
local tp = game:GetService("TeleportService")

--MAIN
local Main = Window:NewTab("MAIN")
local MainSection = Main:NewSection("MAIN")
local HideSection = Main:NewSection("Hide Yourself")

local WebhookLink

local WebHookSection = Main:NewSection("WEBHOOK")
WebHookSection:NewTextBox("WEBHOOK LINK", "Paste your webhook link", function(value)
    WebhookLink = value
end)

WebHookSection:NewButton("Check stats", "Click for check stats", function()
    local Embed = {
        ["title"] = "MHUB CHECK STATS",
        ["description"] = "Your stats",
        ["type"] = "rich",
        ["color"] = tonumber(0xDC381F),
        ["thumbnail"] = {
            ["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
        },
        ["image"] = {
            ["url"] = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAd-496IWpbYyF-M1cqTS7t5K3E7-Bpet4I650wjhN&s"
        },
        ["fields"] = {
            {
                ["name"] = "STATS",
                ["value"] = "USER: " .. user .. " 💘" .. "\n\nGEMS: " .. gems .. " 💎" .. "\n\nGOLD: " .. gold .. " 💰" .. "\n\nTROPHIES: " .. trophie .. " 🏆",
                ["inline"] = false
            }
        },
        ["footer"] = {
            ["text"] = "",
            ["icon_url"] = ""
        },
        ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%SZ'),  -- исправлено в этой строке
    }

    local Content = ""
    
    http_request {
        Url = WebhookLink,
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
        },
        Body = game:GetService('HttpService'):JSONEncode({ content = Content, embeds = { Embed } }),
    }
end)

MainSection:NewButton("Teleport to lobby", "Click for teleport to lobby", function()
    print("Teleporting...")
    tp:Teleport(8304191830)
end)

MainSection:NewButton("Lock fps", "Lock your fps at 10", function()
    local FPS = 10
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
