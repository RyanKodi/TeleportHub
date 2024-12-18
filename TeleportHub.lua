local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TeleportGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.3, 0)
frame.Position = UDim2.new(0.35, 0, 0.35, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = screenGui

-- Função para criar botões
local function createButton(name, position, gameId)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0.2, 0)
    button.Position = UDim2.new(0.1, 0, position, 0)
    button.Text = name
    button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = frame

    button.MouseButton1Click:Connect(function()
        local player = game.Players.LocalPlayer
        teleportPlayer(player, gameId)
    end)
end

-- Criar botões
createButton("Jogo 1", 0.1, gameIds[1])
createButton("Jogo 2", 0.4, gameIds[2])
createButton("Jogo 3", 0.7, gameIds[3])
