-- Criação da GUI principal
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "VKTeamGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame principal (arrastável)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100) -- Centralizado
mainFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100) -- Cinza
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Selectable = true
mainFrame.Parent = screenGui

-- Texto "VK TEAM Gui FE" no canto superior esquerdo
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "TitleLabel"
titleLabel.Size = UDim2.new(0, 200, 0, 30)
titleLabel.Position = UDim2.new(0, 10, 0, 10)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "VK TEAM Gui FE"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 18
titleLabel.Parent = mainFrame

-- Botão GhostHub (retângulo roxo)
local ghostHubButton = Instance.new("TextButton")
ghostHubButton.Name = "GhostHubButton"
ghostHubButton.Size = UDim2.new(0, 120, 0, 40)
ghostHubButton.Position = UDim2.new(0, 10, 0, 60) -- 3 linhas abaixo do título (ajustado para posição relativa)
ghostHubButton.BackgroundColor3 = Color3.fromRGB(128, 0, 128) -- Roxo
ghostHubButton.Text = "ghosthub"
ghostHubButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ghostHubButton.Font = Enum.Font.Gotham
ghostHubButton.TextSize = 14
ghostHubButton.Parent = mainFrame

-- Arredondar cantos do botão
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 6)
buttonCorner.Parent = ghostHubButton

-- Arredondar cantos do frame principal
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 8)
frameCorner.Parent = mainFrame

-- Função para carregar o GhostHub quando o botão é clicado
ghostHubButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-GhostHub-16534"))()
end)
