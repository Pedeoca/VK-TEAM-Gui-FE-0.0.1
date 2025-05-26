local gui = Instance.new("ScreenGui")
gui.Name = "VKTeamGuiFE"
pcall(function() syn.protect_gui(gui) end)
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 150)
frame.Position = UDim2.new(0.5, -125, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -20, 0, 30)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.Text = "VK TEAM Gui FE"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextXAlignment = Enum.TextXAlignment.Left
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true
title.Parent = frame

local ghostButton = Instance.new("TextButton")
ghostButton.Size = UDim2.new(0, 120, 0, 35)
ghostButton.Position = UDim2.new(0.5, -60, 0, 80)
ghostButton.BackgroundColor3 = Color3.fromRGB(128, 0, 128)
ghostButton.BorderSizePixel = 0
ghostButton.Text = "ghosthub"
ghostButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ghostButton.Font = Enum.Font.SourceSansBold
ghostButton.TextScaled = true
ghostButton.Parent = frame

ghostButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-GhostHub-16534"))()
end)
