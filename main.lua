print("____________________________________________________________________________________________________")
print("")
print("██      ██ ████████ ██   ██ ██ ██    ██ ███    ███ ")
print("██      ██    ██    ██   ██ ██ ██    ██ ████  ████ ")
print("██      ██    ██    ███████ ██ ██    ██ ██ ████ ██ ")
print("██      ██    ██    ██   ██ ██ ██    ██ ██  ██  ██ ")
print("███████ ██    ██    ██   ██ ██  ██████  ██      ██ ")

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Lithium",
        Text = "Name credit goes to lithium.1on on discord.",
        Duration = 3
    })

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Lithium",
        Text = "Please use a good executor.",
        Duration = 3
    })

wait(3)

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Pluto",
	Text = "Use our partner executor, Pluto. | https://pluto.ad/ ", 
	Icon = "rbxassetid://116995774410209" 
        Duration = 20
})

wait(5)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()

