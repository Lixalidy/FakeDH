local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "sential is a shitty exploit" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url ="https://discord.com/api/webhooks/992790949673586708/uGPsJvY89J4gEimiS2RHbvMI1Qz9EfeObTXD23qYwWF4mOBT9P63HFLyXpFrKhZeNY9y"

local data = {
   ["embeds"] = {
       {
           ["title"] = "**Luacide Premuim: "..game.Players.LocalPlayer.Name.." |** "..game.Players.LocalPlayer.UserId.." | " ..webhookcheck.."",
           ["description"] = "```Roblox.GameLauncher.joinGameInstance("..game.PlaceId.. ', "'..game.JobId.. '")```',
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = game:GetService("HttpService"):JSONEncode(data), Method = "POST", Headers = headers}
request(abcdef)
