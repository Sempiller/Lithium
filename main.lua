loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()

local DISCORD_LINK = "https://discord.gg/Cxt5YjFTaP" 
local Players = game:GetService("Players")
local player = Players.LocalPlayer
if player then
    player:PromptOpenURL(DISCORD_LINK)
    print("pls join discord")
else
    warn("unable to find localplayer")
end
