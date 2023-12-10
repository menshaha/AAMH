-- Function to get HWID from the website
function GetHWID()
    local url = "https://example.com/getHWID" -- Replace with your actual URL
    local response = game:HttpGet(url)
    return response
end

-- Check if the obtained HWID is whitelisted
function CheckHWID(hwidval, whitelistedHWIDs)
    for _, whitelisted in pairs(whitelistedHWIDs) do
        if hwidval == whitelisted then
            return true
        end
    end
    return false
end

-- Fetch Whitelisted HWIDs from the website
function GetWhitelistedHWIDs()
    local url = "https://example.com/getWhitelistedHWIDs" -- Replace with your actual URL
    local response = game:HttpGet(url)
    
    if response then
        local whitelistedHWIDs = {}
        
        -- Parse the response to extract HWIDs (assuming one HWID per line)
        for hwid in response:gmatch("[^\r\n]+") do
            table.insert(whitelistedHWIDs, hwid)
        end
        
        return whitelistedHWIDs
    else
        return {}  -- Return an empty table if the request fails
    end
end

-- Get HWID from the website
local HWID = GetHWID()

-- Fetch Whitelisted HWIDs from the website
local WhitelistedHWIDs = GetWhitelistedHWIDs()

-- Check if the obtained HWID is whitelisted
local isWhitelisted = CheckHWID(HWID, WhitelistedHWIDs)

-- If the HWID is whitelisted, execute the script
if isWhitelisted then
    print("Correct HWID, Good Luck!")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/provdota9/MHUB/main/Beta.lua"))()
else
    game.Players.LocalPlayer:Kick("invalid HWID.\nhttps://discord.gg/Qvz4aGExCG")
end
