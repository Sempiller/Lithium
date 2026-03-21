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
        Duration = 5
    })

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Lithium",
        Text = "Please use a good executor.",
        Duration = 5
    })

wait(3)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/Lithium/refs/heads/main/Arsenal.lua"))()

