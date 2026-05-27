local SupportedGames = {
    [4588604953] = "Criminality",
    [8343259840] = "Criminality",
    [15169303036] = "Criminality",
    [15169306359] = "Criminality",
    [15169310267] = "Criminality",
    [286090429] = "Arsenal"
}

if setclipboard then
    setclipboard("https://discord.gg/uNBDgnsM5W")
end

local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "Lithium Loader",
    Text = "Loading Lithium, discord copied to clipboard please join to support our non profit projects",
    Duration = 4,
    Button1 = "Okay"
})
StarterGui:SetCore("SendNotification", {
    Title = "Lithium Loader",
    Text = "Loading Lithium, discord copied to clipboard please join to support our non profit projects",
    Duration = 4,
    Button1 = "Okay"
})
StarterGui:SetCore("SendNotification", {
    Title = "Lithium Loader",
    Text = "Loading Lithium, discord copied to clipboard please join to support our non profit projects",
    Duration = 4,
    Button1 = "Okay"
})
StarterGui:SetCore("SendNotification", {
    Title = "Lithium Loader",
    Text = "Loading Lithium, discord copied to clipboard please join to support our non profit projects",
    Duration = 4,
    Button1 = "Okay"
})
wait(5)

local gameType = SupportedGames[game.PlaceId]

if gameType == "Criminality" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua",true))()
    wait(1)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Criminality.lua"))()

elseif gameType == "Arsenal" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()

else
    warn("Lithium Loader: Unregistered PlaceId -> " .. tostring(game.PlaceId))
end
