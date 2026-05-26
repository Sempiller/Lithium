local StarterGui = game:GetService("StarterGui")
local setclipboard = setclipboard or toclipboard

if setclipboard then
    setclipboard("https://discord.gg/uNBDgnsM5W")
end

StarterGui:SetCore("SendNotification", {
    Title = "Lithium Loader",
    Text = "Loading Lithium, discord copied to clipboard please join to support our non profit projects",
    Duration = 4,
    Button1 = "Okay"
})
wait(5)
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local placeId = game.PlaceId

if placeId == 4588604953 or placeId == 8343259840 or placeId == 15169303036 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Criminality.lua"))()

elseif placeId == 286090429 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()
else
    print("Lithium Loader: Unregistered PlaceId -> " .. tostring(placeId))
end
