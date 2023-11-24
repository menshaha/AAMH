local OSTime = os.time()
local gems = players.localplayer.leaderstats._stats.gem_amount.Value
local Time = os.date('!*t', OSTime)
local Embed = {
			["title"] = "__**Test Message.**__",
			["description"] = "Test Webhook",
			["type"] = "rich",
			["color"] = tonumber(0xffff00),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
			},
			["image"] = {
				["url"] = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAd-496IWpbYyF-M1cqTS7t5K3E7-Bpet4I650wjhN&s"
			},
			["fields"] = {
			    	{
					["name"] = "<$MHUB$>",
					["value"] = gems,
					["inline"] = true
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
