local HttpService = game:GetService("HttpService")

HttpService = game:GetService("HttpService")

local WbUrl = "https://discord.com/api/webhooks/1156843242646679612/ynM5upz2dnOSFew1CLr4sUUOoAYZz25iZvoFQpcGH8bpa8wRMwBOrTxSjhDxiXG2_ERl"

local responce = syn.request(
{
    url = WbUrl,
    Method = 'POST'
    Headers = {
        ['Content-Type'] = 'aoolication/json'
    }
    Body = HttpService:JSONEncode{{
        ["content"] = "",
        ["embeds"] = {{
            ["title"] = "MHUB executed"
            ["description"] = game.Players.LocalPlayer.DisplayName.."gay"
            ["type"] = "rich",
            ["color"] = tonumber(FF0000),
            ["fields"] = {
                {
                    ["name"] = "Hardware ID:",
                    ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                    ["inline"] = true
                }
            }
        }}
    }}

}
)
