local player = game.Players.LocalPlayer
local OSTime = os.time()
--STATS
local gems = player._stats.gem_amount.Value
local gold = player._stats.gold_amount.Value
local trophie = player._stats.trophies.Value
local user = player.PlayerGui.ProfileGUI.Main.ProfileBanner.PlayerName.Text
----------------------------------------------------
local Time = os.date('!*t', OSTime)
local Embed = {
			["title"] = "MHUB TEST",
			["description"] = "Test Message.",
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
					["value"] = "USER: " .. user .. " 💘" .."\n\nGEMS: " .. gems .. " 💎" .. "\n\nGOLD: " .. gold .. " 💰" .. "\n\nTROPHIES: " .. trophie .. " 🏆",
					["inline"] = false
				}
			},
			["footer"] = {
			    ["text"] = "",
			    ["icon_url"] = ""
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = 'https://discord.com/api/webhooks/1156843242646679612/ynM5upz2dnOSFew1CLr4sUUOoAYZz25iZvoFQpcGH8bpa8wRMwBOrTxSjhDxiXG2_ERl'; -- change your webhook 
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
