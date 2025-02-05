-- UI Library (สร้าง GUI)
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

-- องค์ประกอบใน Character Tab
local SpeedLabel = Instance.new("TextLabel")
local SpeedBox = Instance.new("TextBox")
local KillAuraToggle = Instance.new("TextButton")
local StopButton = Instance.new("TextButton")
local AttackDelayLabel = Instance.new("TextLabel")
local AttackDelayBox = Instance.new("TextBox")

-- องค์ประกอบใน World Tab
local ShowNPCButton = Instance.new("TextButton")

-- ตั้งค่า UI หลัก
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 350, 0, 350)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 0.8
MainFrame.Visible = true
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true

-- Top Bar
TopBar.Parent = MainFrame
TopBar.Size = UDim2.new(1, 0, 0, 40)
TopBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TopBar.BorderSizePixel = 0

MinimizeButton.Parent = TopBar
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.Position = UDim2.new(0, 10, 0, 0)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
MinimizeButton.Text = "–"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 20
MinimizeButton.BorderSizePixel = 0

CloseButton.Parent = TopBar
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.Position = UDim2.new(1, -40, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 20
CloseButton.BorderSizePixel = 0

-- Tab Bar
TabFrame.Parent = MainFrame
TabFrame.Size = UDim2.new(1, 0, 0, 40)
TabFrame.Position = UDim2.new(0, 0, 0, 40)
TabFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TabFrame.BorderSizePixel = 0

CharacterTab.Parent = TabFrame
CharacterTab.Size = UDim2.new(0.5, 0, 1, 0)
CharacterTab.Text = "Character"
CharacterTab.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
CharacterTab.TextColor3 = Color3.fromRGB(255, 255, 255)
CharacterTab.TextSize = 18
CharacterTab.BorderSizePixel = 0

WorldTab.Parent = TabFrame
WorldTab.Size = UDim2.new(0.5, 0, 1, 0)
WorldTab.Position = UDim2.new(0.5, 0, 0, 0)
WorldTab.Text = "World"
WorldTab.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
WorldTab.TextColor3 = Color3.fromRGB(255, 255, 255)
WorldTab.TextSize = 18
WorldTab.BorderSizePixel = 0

-- Character Tab Page
CharacterPage.Parent = MainFrame
CharacterPage.Size = UDim2.new(1, 0, 1, -80)
CharacterPage.Position = UDim2.new(0, 0, 0, 80)
CharacterPage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CharacterPage.BackgroundTransparency = 0.6
CharacterPage.BorderSizePixel = 0
CharacterPage.Visible = true

SpeedLabel.Parent = CharacterPage
SpeedLabel.Size = UDim2.new(0, 300, 0, 20)
SpeedLabel.Position = UDim2.new(0.5, -150, 0, 10)
SpeedLabel.Text = "Speed Multiplier"
SpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedLabel.TextSize = 14

SpeedBox.Parent = CharacterPage
SpeedBox.Size = UDim2.new(0, 300, 0, 30)
SpeedBox.Position = UDim2.new(0.5, -150, 0, 40)
SpeedBox.Text = "1"
SpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SpeedBox.BorderSizePixel = 0
SpeedBox.TextSize = 14

KillAuraToggle.Parent = CharacterPage
KillAuraToggle.Size = UDim2.new(0, 300, 0, 40)
KillAuraToggle.Position = UDim2.new(0.5, -150, 0, 80)
KillAuraToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
KillAuraToggle.Text = "Kill Aura: OFF"
KillAuraToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
KillAuraToggle.TextSize = 16
KillAuraToggle.BorderSizePixel = 0

StopButton.Parent = CharacterPage
StopButton.Size = UDim2.new(0, 300, 0, 40)
StopButton.Position = UDim2.new(0.5, -150, 0, 120)
StopButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
StopButton.Text = "Stop Auto Attack"
StopButton.TextColor3 = Color3.fromRGB(255, 255, 255)
StopButton.TextSize = 16
StopButton.BorderSizePixel = 0

AttackDelayLabel.Parent = CharacterPage
AttackDelayLabel.Size = UDim2.new(0, 300, 0, 20)
AttackDelayLabel.Position = UDim2.new(0.5, -150, 0, 170)
AttackDelayLabel.Text = "Attack Delay (Seconds)"
AttackDelayLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AttackDelayLabel.TextSize = 14

AttackDelayBox.Parent = CharacterPage
AttackDelayBox.Size = UDim2.new(0, 300, 0, 30)
AttackDelayBox.Position = UDim2.new(0.5, -150, 0, 200)
AttackDelayBox.Text = "0.1"
AttackDelayBox.TextColor3 = Color3.fromRGB(255, 255, 255)
AttackDelayBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AttackDelayBox.BorderSizePixel = 0
AttackDelayBox.TextSize = 14

-- World Tab Page
WorldPage.Parent = MainFrame
WorldPage.Size = UDim2.new(1, 0, 1, -80)
WorldPage.Position = UDim2.new(0, 0, 0, 80)
WorldPage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
WorldPage.BackgroundTransparency = 0.6
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

-- ฟังก์ชันเปลี่ยนความเร็วตัวละคร
SpeedBox.FocusLost:Connect(function()
    local newSpeed = tonumber(SpeedBox.Text)
    if newSpeed and newSpeed > 0 then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 * newSpeed
    else
        SpeedBox.Text = "1"
    end
end)

-- Kill Aura (ตีออโต้)
local autoAttack = false
local attackSpeed = 0.1

local function AutoAttack()
    while autoAttack do
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local tool = character:FindFirstChildOfClass("Tool")

        -- การโจมตีด้วยอาวุธ
        if tool then
            tool:Activate()
        end

        -- ดีเลย์โจมตี
        task.wait(attackSpeed)
    end
end

KillAuraToggle.MouseButton1Click:Connect(function()
    autoAttack = not autoAttack
    KillAuraToggle.Text = autoAttack and "Kill Aura: ON" or "Kill Aura: OFF"
    KillAuraToggle.BackgroundColor3 = autoAttack and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(100, 255, 100)

    -- เริ่มหรือหยุดการโจมตี
    if autoAttack then
        AutoAttack()
    end
end)

AttackDelayBox.FocusLost:Connect(function()
    local newDelay = tonumber(AttackDelayBox.Text)
    if newDelay and newDelay >= 0 then
        attackSpeed = newDelay
    else
        AttackDelayBox.Text = "0.1"
    end
end)

-- ฟังก์ชันแสดง NPC
ShowNPCButton.MouseButton1Click:Connect(function()
    for _, npc in pairs(workspace:GetChildren()) do
        if npc:IsA("Model") and npc:FindFirstChild("Humanoid") then
            npc.Head.BrickColor = BrickColor.new("Bright red") -- เปลี่ยนสีหัว NPC
        end
    end
end)
