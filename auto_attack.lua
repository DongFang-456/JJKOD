-- UI Library (ใช้ Roblox Instance)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ToggleButton = Instance.new("TextButton")
local SpeedLabel = Instance.new("TextLabel")
local SpeedSlider = Instance.new("TextBox")

-- UI Properties
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderSizePixel = 2

ToggleButton.Parent = Frame
ToggleButton.Size = UDim2.new(0, 180, 0, 50)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 255, 100)
ToggleButton.Text = "Auto Attack: OFF"

SpeedLabel.Parent = Frame
SpeedLabel.Size = UDim2.new(0, 180, 0, 20)
SpeedLabel.Position = UDim2.new(0, 10, 0, 70)
SpeedLabel.Text = "Attack Speed (Sec):"

SpeedSlider.Parent = Frame
SpeedSlider.Size = UDim2.new(0, 180, 0, 30)
SpeedSlider.Position = UDim2.new(0, 10, 0, 95)
SpeedSlider.Text = "0.1"
SpeedSlider.BackgroundColor3 = Color3.fromRGB(200, 200, 200)

-- Auto Attack Variables
local autoAttack = false
local attackSpeed = 0.1

-- Function: Auto Attack Loop
local function AutoAttack()
    while autoAttack do
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local tool = character:FindFirstChildOfClass("Tool")

        if tool then
            tool:Activate() -- โจมตี
        end
        task.wait(attackSpeed) -- ใช้ค่าดีเลย์ที่ผู้ใช้กำหนด
    end
end

-- Toggle Auto Attack
ToggleButton.MouseButton1Click:Connect(function()
    autoAttack = not autoAttack
    ToggleButton.Text = autoAttack and "Auto Attack: ON" or "Auto Attack: OFF"
    ToggleButton.BackgroundColor3 = autoAttack and Color3.fromRGB(255, 100, 100) or Color3.fromRGB(100, 255, 100)

    if autoAttack then
        AutoAttack()
    end
end)

-- Update Attack Speed จาก TextBox
SpeedSlider.FocusLost:Connect(function()
    local newSpeed = tonumber(SpeedSlider.Text)
    if newSpeed and newSpeed >= 0 then
        attackSpeed = newSpeed
    else
        SpeedSlider.Text = tostring(attackSpeed) -- คืนค่าเดิมถ้าใส่ค่าผิด
    end
end)
