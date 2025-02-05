-- UI Library (สร้าง GUI)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TabFrame = Instance.new("Frame")
local CharacterTab = Instance.new("TextButton")
local WorldTab = Instance.new("TextButton")
local CharacterPage = Instance.new("Frame")
local WorldPage = Instance.new("Frame")

-- ปุ่ม UI Toggle
local ShowHideButton = Instance.new("TextButton")

-- องค์ประกอบใน Character Tab
local SpeedLabel = Instance.new("TextLabel")
local SpeedBox = Instance.new("TextBox")
local KillAuraToggle = Instance.new("TextButton")
local StopButton = Instance.new("TextButton")
local ExitButton = Instance.new("TextButton")  -- ปุ่ม Exit
local AttackDelayLabel = Instance.new("TextLabel")
local AttackDelayBox = Instance.new("TextBox")

-- องค์ประกอบใน World Tab
local ShowNPCButton = Instance.new("TextButton")

-- ตั้งค่า UI หลัก
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 250)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -125)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Visible = true

-- ปุ่ม Show/Hide UI
ShowHideButton.Parent = ScreenGui
ShowHideButton.Size = UDim2.new(0, 50, 0, 50)
ShowHideButton.Position = UDim2.new(0, 10, 0, 10)
ShowHideButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
ShowHideButton.Text = "⚙️"

-- Tab Bar
TabFrame.Parent = MainFrame
TabFrame.Size = UDim2.new(1, 0, 0, 30)
TabFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

CharacterTab.Parent = TabFrame
CharacterTab.Size = UDim2.new(0.5, 0, 1, 0)
CharacterTab.Text = "Character"
CharacterTab.BackgroundColor3 = Color3.fromRGB(80, 80, 80)

WorldTab.Parent = TabFrame
WorldTab.Size = UDim2.new(0.5, 0, 1, 0)
WorldTab.Position = UDim2.new(0.5, 0, 0, 0)
WorldTab.Text = "World"
WorldTab.BackgroundColor3 = Color3.fromRGB(80, 80, 80)

-- Character Tab Page
CharacterPage.Parent = MainFrame
CharacterPage.Size = UDim2.new(1, 0, 1, -30)
CharacterPage.Position = UDim2.new(0, 0, 0, 30)
CharacterPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

SpeedLabel.Parent = CharacterPage
SpeedLabel.Size = UDim2.new(0, 280, 0, 20)
SpeedLabel.Position = UDim2.new(0, 10, 0, 10)
SpeedLabel.Text = "Speed Multiplier:"

SpeedBox.Parent = CharacterPage
SpeedBox.Size = UDim2.new(0, 280, 0, 30)
SpeedBox.Position = UDim2.new(0, 10, 0, 35)
SpeedBox.Text = "1"

KillAuraToggle.Parent = CharacterPage
KillAuraToggle.Size = UDim2.new(0, 280, 0, 50)
KillAuraToggle.Position = UDim2.new(0, 10, 0, 75)
KillAuraToggle.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
KillAuraToggle.Text = "Kill Aura: OFF"

StopButton.Parent = CharacterPage
StopButton.Size = UDim2.new(0, 280, 0, 50)
StopButton.Position = UDim2.new(0, 10, 0, 135)
StopButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
StopButton.Text = "Stop"

ExitButton.Parent = CharacterPage  -- ปุ่ม Exit
ExitButton.Size = UDim2.new(0, 280, 0, 50)
ExitButton.Position = UDim2.new(0, 10, 0, 195)
ExitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
ExitButton.Text = "Exit"

AttackDelayLabel.Parent = CharacterPage
AttackDelayLabel.Size = UDim2.new(0, 280, 0, 20)
AttackDelayLabel.Position = UDim2.new(0, 10, 0, 190)
AttackDelayLabel.Text = "Attack Delay:"

AttackDelayBox.Parent = CharacterPage
AttackDelayBox.Size = UDim2.new(0, 280, 0, 30)
AttackDelayBox.Position = UDim2.new(0, 10, 0, 215)
AttackDelayBox.Text = "0.1"

-- World Tab Page
WorldPage.Parent = MainFrame
WorldPage.Size = UDim2.new(1, 0, 1, -30)
WorldPage.Position = UDim2.new(0, 0, 0, 30)
WorldPage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
WorldPage.Visible = false

ShowNPCButton.Parent = WorldPage
ShowNPCButton.Size = UDim2.new(0, 280, 0, 50)
ShowNPCButton.Position = UDim2.new(0, 10, 0, 10)
ShowNPCButton.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
ShowNPCButton.Text = "Show All NPCs"

-- ฟังก์ชันเปิดปิด UI
ShowHideButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    ShowHideButton.Text = MainFrame.Visible and "⚙️" or "🔲"
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
local attackDelay = 0.1

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

-- ฟังก์ชันปิดโปรแกรม (Exit)
ExitButton.MouseButton1Click:Connect(function()
    -- ปิด UI ทั้งหมด
    ScreenGui:Destroy()
end)
