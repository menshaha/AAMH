local gems = game:GetService("Players").Major228338668990._stats.gem_amount.Value
local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   Fluxus_LOADED and "Fluxus" or
   "Delete your executor😐"

local url =
   "https://discord.com/api/webhooks/1156843242646679612/ynM5upz2dnOSFew1CLr4sUUOoAYZz25iZvoFQpcGH8bpa8wRMwBOrTxSjhDxiXG2_ERl"
local data = {
   ["content"] = "gems",
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef) 
