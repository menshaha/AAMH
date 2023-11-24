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
