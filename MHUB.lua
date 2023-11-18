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

MainSection:NewButton("Unlock fps", "Unlock your fps", function()
    local vim = game:GetService("VirtualInputManager")
    setfpscap(5000)
    local inputservice = game:GetService("UserInputService")
    local runservice = game:GetService("RunService")
    inputservice.WindowFocusReleased:Connect(function() runservice:Set3dRenderingEnabled(false) end)
    inputservice.WindowFocused:Connect(function() runservice:Set3dRenderingEnabled(true) end)
end)

MainSection:NewButton("lock fps", "lock your fps at 15", function()
    local vim = game:GetService("VirtualInputManager")
    setfpscap(15)
    local inputservice = game:GetService("UserInputService")
    local runservice = game:GetService("RunService")
    inputservice.WindowFocusReleased:Connect(function() runservice:Set3dRenderingEnabled(false) end)
    inputservice.WindowFocused:Connect(function() runservice:Set3dRenderingEnabled(true) end)
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
