-- thank you insanity

game.GetService(game, 'UserInputService')

local u1 = false

function Create(p2, p3)
    local v4 = p3 or {}

    if p2 then
        local _ = p2 == 'Square' or (p2 == 'Line' or (p2 == 'Text' or (p2 == 'Quad' or (p2 == 'Circle' or p2 == 'Triangle'))))
        local v5 = Instance.new(p2)
        local v6 = next
        local v7 = nil

        while true do
            local v8

            v7, v8 = v6(v4, v7)

            if v7 == nil then
                break
            end

            v5[v7] = v8
        end

        return v5
    end
end

base = Create('ScreenGui', {
    ZIndexBehavior = Enum.ZIndexBehavior.Global,
})
base.Parent = game.Players.LocalPlayer.PlayerGui

Vector2.new(workspace.CurrentCamera.ViewportSize.X * 0.5, workspace.CurrentCamera.ViewportSize.Y * 0.5)

main = Create('ImageButton', {
    Draggable = true,
    AutoButtonColor = false,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 395, 0, 150),
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    BorderColor3 = Color3.new(0.152941, 0.152941, 0.152941),
    ScaleType = Enum.ScaleType.Tile,
    Modal = true,
    Visible = true,
    Parent = base,
})
top = Create('Frame', {
    Size = UDim2.new(1, 0, 0, 24),
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    BorderColor3 = Color3.new(0.152941, 0.152941, 0.152941),
    Parent = main,
})
imagelabeltop = Create('ImageLabel', {
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2454009026',
    ImageColor3 = Color3.new(0, 0, 0),
    ImageTransparency = 0.4,
    Parent = top,
})

Create('TextLabel', {
    Position = UDim2.new(0, 6, 0, 1),
    Size = UDim2.new(0, 0, 0, 20),
    BackgroundTransparency = 1,
    Text = tostring('Lithium XV'),
    Font = Enum.Font.Code,
    TextSize = 14,
    TextColor3 = Color3.new(1, 1, 1),
    TextXAlignment = Enum.TextXAlignment.Left,
    Parent = imagelabeltop,
})

local _Frame = Create('Frame', {
    Size = UDim2.new(1, 0, 0, 1),
    Position = UDim2.new(0, 0, 0, 24),
    BackgroundColor3 = Color3.fromRGB(0, 0, 255),
    BorderSizePixel = 0,
    Parent = main,
})

Create('ImageLabel', {
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2592362371',
    ImageColor3 = Color3.fromRGB(0, 0, 0),
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(2, 2, 62, 62),
    Parent = main,
})
Create('ImageLabel', {
    Size = UDim2.new(1, -2, 1, -2),
    Position = UDim2.new(0, 1, 0, 1),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2592362371',
    ImageColor3 = Color3.new(),
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(2, 2, 62, 62),
    Parent = main,
})

keymain = Create('Frame', {
    Size = UDim2.new(1, 0, 0, 28),
    Position = UDim2.new(0, 0, 0, 117),
    BackgroundTransparency = 1,
    Parent = main,
})
keytitle = Create('TextLabel', {
    AnchorPoint = Vector2.new(0.5, 1),
    Position = UDim2.new(0.5, 0, 1, -1),
    Size = UDim2.new(1, -12, 0, 20),
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    BorderColor3 = Color3.new(0.152941, 0.152941, 0.152941),
    Text = 'Copy and Join Discord',
    TextColor3 = Color3.new(255, 255, 255),
    TextSize = 15,
    Font = Enum.Font.Code,
    Parent = keymain,
})

keytitle.InputBegan:connect(function(p10)
    if p10.UserInputType.Name == 'MouseButton1' or p10.UserInputType.Name == 'Touch' then
        setclipboard('https://discord.gg/2g9QqUC5rQ')

        local v11 = request
        local v12 = {
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                Origin = 'https://discord.com',
            },
        }
        local v13 = game.GetService(game, 'HttpService')
        local _JSONEncode = v13.JSONEncode
        local v15 = {
            cmd = 'INVITE_BROWSER',
            nonce = game.GetService(game, 'HttpService'):GenerateGUID(false),
            args = {
                code = '2g9QqUC5rQ',
            },
        }

        v12.Body = _JSONEncode(v13, v15)

        v11(v12)

        keytitle.Text = 'Copied the discord server to your clipboard!'

        wait(2)

        keytitle.Text = 'Copy / Join Discord'
    end
    if p10.UserInputType.Name == 'MouseMovement' then
        keytitle.BorderColor3 = Color3.new(0.839216, 0.019608, 0.866667)
        u1 = true
    end
end)
keytitle.InputEnded:connect(function(p16)
    if p16.UserInputType.Name == 'MouseMovement' then
        keytitle.BorderColor3 = Color3.new(0.152941, 0.152941, 0.152941)
        u1 = false
    end
end)
Create('ImageLabel', {
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2592362371',
    ImageColor3 = Color3.fromRGB(0, 0, 0),
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(2, 2, 62, 62),
    Parent = keytitle,
})
Create('ImageLabel', {
    Size = UDim2.new(1, -2, 1, -2),
    Position = UDim2.new(0, 1, 0, 1),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2592362371',
    ImageColor3 = Color3.new(0, 0, 0),
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(2, 2, 62, 62),
    Parent = keytitle,
})
Create('UIGradient', {
    Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
    }),
    Rotation = -90,
    Parent = keytitle,
})

keytextmain = Create('Frame', {
    Position = UDim2.new(0, 0, 0, 75),
    Size = UDim2.new(1, 0, 0, 44),
    BackgroundTransparency = 1,
    Parent = main,
})
holder = Create('Frame', {
    Position = UDim2.new(0, 6, 0, 43),
    Size = UDim2.new(1, -12, 0, 75),
    BackgroundColor3 = Color3.fromRGB(0, 0, 0),
    BorderColor3 = Color3.new(0.152941, 0.152941, 0.152941),
    Parent = imagelabeltop,
})

Create('ImageLabel', {
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2454009026',
    ImageColor3 = Color3.new(),
    ImageTransparency = 0.8,
    Parent = holder,
})
Create('ImageLabel', {
    Size = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2592362371',
    ImageColor3 = Color3.fromRGB(0, 0, 0),
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(2, 2, 62, 62),
    Parent = holder,
})
Create('ImageLabel', {
    Size = UDim2.new(1, -2, 1, -2),
    Position = UDim2.new(0, 1, 0, 1),
    BackgroundTransparency = 1,
    Image = 'rbxassetid://2592362371',
    ImageColor3 = Color3.new(),
    ScaleType = Enum.ScaleType.Slice,
    SliceCenter = Rect.new(2, 2, 62, 62),
    Parent = holder,
})
Create('TextLabel', {
    Position = UDim2.new(0, 15, 0, 45),
    Size = UDim2.new(0, 0, 0, 20),
    BackgroundTransparency = 1,
    Text = tostring('Welcome, ' .. game.Players.LocalPlayer.Name),
    Font = Enum.Font.Code,
    TextSize = 14,
    TextColor3 = Color3.new(1, 1, 1),
    TextXAlignment = Enum.TextXAlignment.Left,
    Parent = imagelabeltop,
})
Create('TextLabel', {
    Position = UDim2.new(0, 15, 0, 65),
    Size = UDim2.new(0, 0, 0, 20),
    BackgroundTransparency = 1,
    Text = tostring(os.date('%b %d')) .. ', ' .. tostring(os.date('%Y')),
    Font = Enum.Font.Code,
    TextSize = 14,
    TextColor3 = Color3.new(1, 1, 1),
    TextXAlignment = Enum.TextXAlignment.Left,
    Parent = imagelabeltop,
})
Create('TextLabel', {
    Position = UDim2.new(0, 15, 0, 85),
    Size = UDim2.new(0.91, 0, 0, 30),
    BackgroundTransparency = 1,
    Text = 'Lithium blocks third party providers due to security reasons, get it from our Discord.',
    Font = Enum.Font.Code,
    TextSize = 14,
    TextWrapped = true,
    TextColor3 = Color3.new(1, 1, 1),
    TextXAlignment = Enum.TextXAlignment.Left,
    Parent = imagelabeltop,
})

local v17 = u1

local PurpleColor = Color3.fromRGB(170, 0, 255)

while task.wait() do
    _Frame.BackgroundColor3 = PurpleColor

    if u1 then
        keytitle.BorderColor3 = PurpleColor
    end
end
