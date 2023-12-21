-- HWID Whitelist

local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
local WhitelistedHWIDs = {"","",""}
local WhitelistedGuy = false

function CheckHWID(hwidval)
for _,whitelisted in pairs(WhitelistedHWIDs) do
 if hwidval == whitelisted then
     return true
 elseif hwidval ~= whitelisted then
     return false
       end
    end
end

WhitelistedGuy = CheckHWID(HWID)

if WhitelistedGuy == true then
	print('Correct hwid')
else
	warn('no')
end
