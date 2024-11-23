local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BROOKHAVEN PREMIUM SCRIPT 2024", "DarkTheme")

-- MAIN
local Main = Window:NewTab("Principal")
local MainSection = Main:NewSection("Funciones Premium")

MainSection:NewButton("Admin Commands", "Comandos de administrador", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainSection:NewToggle("Super-Velocidad", "Corre muy rápido", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
    else
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end)

MainSection:NewToggle("Super-Salto", "Salta muy alto", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

-- EXTRAS
local Extra = Window:NewTab("Extras")
local ExtraSection = Extra:NewSection("Funciones Extra")

ExtraSection:NewButton("Fly GUI V3", "Te permite volar", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt'))()
end)

ExtraSection:NewButton("Noclip", "Atraviesa paredes", function()
    local Workspace = game:GetService("Workspace")
    local CoreGui = game:GetService("CoreGui")
    local Players = game:GetService("Players")
    local Noclip = Instance.new("ScreenGui")
    local BG = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Toggle = Instance.new("TextButton")
    local StatusPF = Instance.new("TextLabel")
    local Status = Instance.new("TextLabel")
    local Credit = Instance.new("TextLabel")
    local Plr = Players.LocalPlayer
    local Clipon = false

    Noclip.Name = "Noclip"
    Noclip.Parent = CoreGui

    BG.Name = "BG"
    BG.Parent = Noclip
    BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    BG.BorderSizePixel = 2
    BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
    BG.Size = UDim2.new(0, 210, 0, 127)
    BG.Active = true
    BG.Draggable = true

    Title.Name = "Title"
    Title.Parent = BG
    Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.BorderSizePixel = 2
    Title.Size = UDim2.new(0, 210, 0, 33)
    Title.Font = Enum.Font.Highway
    Title.Text = "Noclip"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.FontSize = Enum.FontSize.Size32
    Title.TextSize = 30
    Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.TextStrokeTransparency = 0

    Toggle.Parent = BG
    Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.BorderSizePixel = 2
    Toggle.Position = UDim2.new(0.0571428575, 0, 0.374015748, 0)
    Toggle.Size = UDim2.new(0, 186, 0, 30)
    Toggle.Font = Enum.Font.Highway
    Toggle.FontSize = Enum.FontSize.Size28
    Toggle.Text = "Toggle"
    Toggle.TextColor3 = Color3.new(1, 1, 1)
    Toggle.TextSize = 25
    Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.TextStrokeTransparency = 0

    StatusPF.Name = "StatusPF"
    StatusPF.Parent = BG
    StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
    StatusPF.BackgroundTransparency = 1
    StatusPF.Position = UDim2.new(0.0571428575, 0, 0.668897636, 0)
    StatusPF.Size = UDim2.new(0, 56, 0, 20)
    StatusPF.Font = Enum.Font.Highway
    StatusPF.FontSize = Enum.FontSize.Size24
    StatusPF.Text = "Status:"
    StatusPF.TextColor3 = Color3.new(1, 1, 1)
    StatusPF.TextSize = 20
    StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
    StatusPF.TextStrokeTransparency = 0
    StatusPF.TextXAlignment = Enum.TextXAlignment.Left

    Status.Name = "Status"
    Status.Parent = BG
    Status.BackgroundColor3 = Color3.new(1, 1, 1)
    Status.BackgroundTransparency = 1
    Status.Position = UDim2.new(0.323809534, 0, 0.668897636, 0)
    Status.Size = UDim2.new(0, 56, 0, 20)
    Status.Font = Enum.Font.Highway
    Status.FontSize = Enum.FontSize.Size14
    Status.Text = "off"
    Status.TextColor3 = Color3.new(0.666667, 0, 0)
    Status.TextScaled = true
    Status.TextSize = 14
    Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Status.TextStrokeTransparency = 0
    Status.TextWrapped = true

    Credit.Name = "Credit"
    Credit.Parent = BG
    Credit.BackgroundColor3 = Color3.new(1, 1, 1)
    Credit.BackgroundTransparency = 1
    Credit.Position = UDim2.new(0.0571428575, 0, 0.826771654, 0)
    Credit.Size = UDim2.new(0, 186, 0, 15)
    Credit.Font = Enum.Font.Highway
    Credit.FontSize = Enum.FontSize.Size14
    Credit.Text = "Created by Xehanort"
    Credit.TextColor3 = Color3.new(1, 1, 1)
    Credit.TextSize = 14
    Credit.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
    Credit.TextStrokeTransparency = 0
    Credit.TextWrapped = true

    Toggle.MouseButton1Click:Connect(function()
        if Status.Text == "off" then
            Clipon = true
            Status.Text = "on"
            Status.TextColor3 = Color3.new(0,185,0)
            Stepped = game:GetService("RunService").Stepped:Connect(function()
                if not Clipon == false then
                    for a, b in pairs(Workspace:GetChildren()) do
                        if b.Name == Plr.Name then
                            for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                else
                    Stepped:Disconnect()
                end
            end)
        elseif Status.Text == "on" then
            Clipon = false
            Status.Text = "off"
            Status.TextColor3 = Color3.new(170,0,0)
        end
    end)
end)

ExtraSection:NewToggle("Infinite Jump", "Salta infinitamente", function(state)
    local InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end
    end)
end)
