local _vye_key = "\83\85\66\50\71\69\77\73\78\73"
local _vye_discord = "\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\72\88\122\86\80\119\113\56\57"

local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

if playerGui:FindFirstChild("VyePremiumGUI") then
    playerGui.VyePremiumGUI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "VyePremiumGUI"
ScreenGui.Parent = playerGui
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Position = UDim2.new(0.5, -140, 0.5, -110)
MainFrame.Size = UDim2.new(0, 280, 0, 220)
MainFrame.Active = true
MainFrame.Draggable = true

local Corner = Instance.new("UICorner", MainFrame)
Corner.CornerRadius = UDim.new(0, 12)

local UIStroke = Instance.new("UIStroke", MainFrame)
UIStroke.Color = Color3.fromRGB(0, 255, 255)
UIStroke.Thickness = 2

local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.Text = "VYE KEY SYSTEM v4.0 PREMIUM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15

local Warning = Instance.new("TextLabel")
Warning.Parent = MainFrame
Warning.Size = UDim2.new(0.9, 0, 0.25, 0)
Warning.Position = UDim2.new(0.05, 0, 0.22, 0)
Warning.BackgroundTransparency = 1
Warning.Text = "CRITICAL: Discord join required to activate!"
Warning.TextColor3 = Color3.fromRGB(255, 80, 80)
Warning.TextWrapped = true
Warning.Font = Enum.Font.GothamSemibold
Warning.TextSize = 13

local InputBox = Instance.new("TextBox")
InputBox.Parent = MainFrame
InputBox.Position = UDim2.new(0.1, 0, 0.52, 0)
InputBox.Size = UDim2.new(0.8, 0, 0.16, 0)
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.BackgroundTransparency = 0.9
InputBox.Text = ""
InputBox.PlaceholderText = "Enter Key [Secure]..."
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.TextSize = 14
Instance.new("UICorner", InputBox).CornerRadius = UDim.new(0, 6)

local CheckBtn = Instance.new("TextButton")
CheckBtn.Parent = MainFrame
CheckBtn.Position = UDim2.new(0.08, 0, 0.76, 0)
CheckBtn.Size = UDim2.new(0.4, 0, 0.16, 0)
CheckBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
CheckBtn.Text = "CHECK KEY"
CheckBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckBtn.Font = Enum.Font.GothamBold
CheckBtn.TextSize = 12
Instance.new("UICorner", CheckBtn).CornerRadius = UDim.new(0, 6)

local GetBtn = Instance.new("TextButton")
GetBtn.Parent = MainFrame
GetBtn.Position = UDim2.new(0.52, 0, 0.76, 0)
GetBtn.Size = UDim2.new(0.4, 0, 0.16, 0)
GetBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
GetBtn.Text = "GET KEY"
GetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetBtn.Font = Enum.Font.GothamBold
GetBtn.TextSize = 12
Instance.new("UICorner", GetBtn).CornerRadius = UDim.new(0, 6)

local setclip = setclipboard or toclipboard or print
GetBtn.MouseButton1Click:Connect(function()
    pcall(function() setclip(_vye_discord) end)
    GetBtn.Text = "COPIED!"
    task.wait(2)
    GetBtn.Text = "GET KEY"
end)

CheckBtn.MouseButton1Click:Connect(function()
    if InputBox.Text == _vye_key then
        CheckBtn.Text = "SUCCESS!"
        task.wait(1)
        ScreenGui:Destroy()
    else
        CheckBtn.Text = "WRONG KEY!"
        task.wait(2)
        CheckBtn.Text = "CHECK KEY"
    end
end)
