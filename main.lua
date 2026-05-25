if not game:IsLoaded() then
    game.Loaded:Wait()
end

local placeId = game.PlaceId

if placeId == 4588604953 or placeId == 8343259840 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Criminality.lua"))()

elseif placeId == 286090429 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()
else
    print("Lithium Loader: Unregistered PlaceId -> " .. tostring(placeId))
end
