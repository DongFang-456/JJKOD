-- สร้าง UI หลัก
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local MinimizeButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local TabFrame = Instance.new("Frame")
local CharacterTab = Instance.new("TextButton")
local WorldTab = Instance.new("TextButton")
local CharacterPage = Instance.new("Frame")
local WorldPage = Instance.new("Frame")

-- UI Elements ใน Character Tab
local SpeedLabel = Instance.new("TextLabel")
local SpeedBox = Instance.new("TextBox")
local KillAuraToggle = Instance.new("TextButton")
local AttackDelayLabel = Instance.new("TextLabel")
local AttackDelayBox = Instance.new("TextBox")

-- UI Elements ใน World Tab
local ShowNPCButton = Instance.new("TextButton")

-- ตั้งค่า ScreenGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 400, 0, 500)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -250)
MainFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
MainFrame.BackgroundTransparency = 0.85
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Visible = true

-- ตั้งค่า TopBar
TopBar.Parent = MainFrame
TopBar.Size = UDim2.new(1, 0, 0, 50)
TopBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
TopBar.BorderSizePixel = 0
TopBar.BorderRadius = UDim.new(0, 10)

MinimizeButton.Parent = TopBar
MinimizeButton.Size = UDim2.new(0, 40, 1, 0)
MinimizeButton.Position = UDim2.new(0, 10, 0, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
MinimizeButton.Text = "–"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 22
MinimizeButton.BorderSizePixel = 0
MinimizeButton.BorderRadius = UDim.new(0, 10)

CloseButton.Parent = TopBar
CloseButton.Size = UDim2.new(0, 40, 1, 0)
CloseButton.Position = UDim2.new(1, -50, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 22
CloseButton.BorderSizePixel = 0
CloseButton.BorderRadius = UDim.new(0, 10)

-- Tab Bar
TabFrame.Parent = MainFrame
TabFrame.Size = UDim2.new(1, 0, 0, 50)
TabFrame.Position = UDim2.new(0, 0, 0, 50)
TabFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TabFrame.BorderSizePixel = 0

CharacterTab.Parent = TabFrame
CharacterTab.Size = UDim2.new(0.5, 0, 1, 0)
CharacterTab.Text = "Character"
CharacterTab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CharacterTab.TextColor3 = Color3.fromRGB(255, 255, 255)
CharacterTab.TextSize = 18
CharacterTab.BorderSizePixel = 0
CharacterTab.BorderRadius = UDim.new(0, 10)

WorldTab.Parent = TabFrame
WorldTab.Size = UDim2.new(0.5, 0, 1, 0)
WorldTab.Position = UDim2.new(0.5, 0, 0, 0)
WorldTab.Text = "World"
WorldTab.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WorldTab.TextColor3 = Color3.fromRGB(255, 255, 255)
WorldTab.TextSize = 18
WorldTab.BorderSizePixel = 0
WorldTab.BorderRadius = UDim.new(0, 10)

-- Character Page
CharacterPage.Parent = MainFrame
CharacterPage.Size = UDim2.new(1, 0, 1, -100)
CharacterPage.Position = UDim2.new(0, 0, 0, 100)
CharacterPage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CharacterPage.BackgroundTransparency = 0.7
CharacterPage.BorderSizePixel = 0
CharacterPage.Visible = true

SpeedLabel.Parent = CharacterPage
SpeedLabel.Size = UDim2.new(0, 300, 0, 30)
SpeedLabel.Position = UDim2.new(0.5, -150, 0, 10)
SpeedLabel.Text = "Speed Multiplier"
SpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedLabel.TextSize = 16

SpeedBox.Parent = CharacterPage
SpeedBox.Size = UDim2.new(0, 300, 0, 30)
SpeedBox.Position = UDim2.new(0.5, -150, 0, 40)
SpeedBox.Text = "1"
SpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedBox.BorderSizePixel = 0
SpeedBox.TextSize = 16
SpeedBox.BorderRadius = UDim.new(0, 5)

KillAuraToggle.Parent = CharacterPage
KillAuraToggle.Size = UDim2.new(0, 300, 0, 40)
KillAuraToggle.Position = UDim2.new(0.5, -150, 0, 80)
KillAuraToggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
KillAuraToggle.Text = "Kill Aura: OFF"
KillAuraToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAuraToggle.TextSize = 16
KillAuraToggle.BorderSizePixel = 0
KillAuraToggle.BorderRadius = UDim.new(0, 5)

AttackDelayLabel.Parent = CharacterPage
AttackDelayLabel.Size = UDim2.new(0, 300, 0, 30)
AttackDelayLabel.Position = UDim2.new(0.5, -150, 0, 150)
AttackDelayLabel.Text = "Attack Delay (s)"
AttackDelayLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AttackDelayLabel.TextSize = 16

AttackDelayBox.Parent = CharacterPage
AttackDelayBox.Size = UDim2.new(0, 300, 0, 30)
AttackDelayBox.Position = UDim2.new(0.5, -150, 0, 180)
AttackDelayBox.Text = "0.1"
AttackDelayBox.TextColor3 = Color3.fromRGB(255, 255, 255)
AttackDelayBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
AttackDelayBox.BorderSizePixel = 0
AttackDelayBox.TextSize = 16
AttackDelayBox.BorderRadius = UDim.new(0, 5)

-- World Page
WorldPage.Parent = MainFrame
WorldPage.Size = UDim2.new(1, 0, 1, -100)
WorldPage.Position = UDim2.new(0, 0, 0, 100)
WorldPage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WorldPage.BackgroundTransparency = 0.7
WorldPage.BorderSizePixel = 0
WorldPage.Visible = false

ShowNPCButton.Parent = WorldPage
ShowNPCButton.Size = UDim2.new(0, 300, 0, 40)
ShowNPCButton.Position = UDim2.new(0.5, -150, 0, 10)
ShowNPCButton.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ShowNPCButton.Text = "Show All NPCs"
ShowNPCButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ShowNPCButton.TextSize = 16
ShowNPCButton.BorderSizePixel = 0
ShowNPCButton.BorderRadius = UDim.new(0, 5)

-- ฟังก์ชันเปิดปิด UI
MinimizeButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- ฟังก์ชันสลับแท็บ
CharacterTab.MouseButton1Click:Connect(function()
    CharacterPage.Visible = true
    WorldPage.Visible = false
end)

WorldTab.MouseButton1Click:Connect(function()
    CharacterPage.Visible = false
    WorldPage.Visible = true
end)

-- เปลี่ยนความเร็วตัวละคร
SpeedBox.FocusLost:Connect(function()
    local newSpeed = tonumber(SpeedBox.Text)
    if newSpeed and newSpeed > 0 then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 * newSpeed
    else
        SpeedBox.Text = "1"
    end
end)

-- Kill Aura Toggle
local autoAttack = false
local attackSpeed = 0.1

local function AutoAttack()
    while autoAttack do
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local tool = character:FindFirstChildOfClass("Tool")

        if tool then
            tool:Activate()
        end

        task.wait(attackSpeed)
    end
end

KillAuraToggle.MouseButton1Click:Connect(function()
    autoAttack = not autoAttack
    KillAuraToggle.Text = autoAttack and "Kill Aura: ON" or "Kill Aura: OFF"
    KillAuraToggle.BackgroundColor3 = autoAttack and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(100, 255, 100)

    if autoAttack then
        AutoAttack()
    end
end)

-- Attack Delay Box
AttackDelayBox.FocusLost:Connect(function()
    local newDelay = tonumber(AttackDelayBox.Text)
    if newDelay and newDelay >= 0 then
        attackSpeed = newDelay
    else
        AttackDelayBox.Text = "0.1"
    end
end)

-- แสดง NPC
ShowNPCButton.MouseButton1Click:Connect(function()
    for _, npc in pairs(workspace:GetChildren()) do
        if npc:IsA("Model") and npc:FindFirstChild("Humanoid") then
            npc.Head.BrickColor = BrickColor.new("Bright red") 
        end
    end
end)
