_G.UI_Size = 200
setfpscap(60)
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
wait(3)
local heartbeat = game:GetService("RunService").Heartbeat
local musicfolder = game:GetService("ReplicatedStorage"):FindFirstChild("Music")
local remoteparry = game:GetService("ReplicatedStorage").Remotes.ParryButtonPress

if not _G.Modified then
    _G.Modified = true 

    -- / ViewPart \
    local forcefieldlol = Instance.new("Part", game.Workspace)
    forcefieldlol.Name = "Visualizer"
    forcefieldlol.Material = Enum.Material.ForceField
    forcefieldlol.Color = Color3.fromRGB(93, 63, 211)
    forcefieldlol.Shape = Enum.PartType.Ball
    forcefieldlol.Anchored = true
    forcefieldlol.CanCollide = false
    forcefieldlol.Transparency = 0.7
    forcefieldlol.CastShadow = false 

    -- / SpamBlock \
    local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "ArrayfieldToggelerlroe"
        ScreenGui.Parent = game.CoreGui.RobloxGui
        ScreenGui.ClipToDeviceSafeArea = false
        ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
    
        local frame = Instance.new("Frame")
        frame.Parent = ScreenGui
        frame.Size = UDim2.new(0.062,0,0.08,0)
        frame.Position = UDim2.new(0.2, 0, 0.2, 0)
        frame.Active = true
        frame.BackgroundTransparency = 0
    
        local Toggler = Instance.new("TextButton")
        Toggler.Name = "Toggler"
        Toggler.Parent = frame
        Toggler.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        Toggler.BackgroundTransparency = 1
        Toggler.Size = UDim2.new(1,0, 1, 0)
        Toggler.Text = "Off"
        Toggler.TextScaled = true
        Toggler.TextWrapped = true
        Toggler.TextColor3 = Color3.new(1, 0, 0)
        Toggler.Font = Enum.Font.FredokaOne
    
        local UICorner = Instance.new("UICorner")
        UICorner.Parent = frame
        local cornerRadius = 10
        UICorner.CornerRadius = UDim.new(0, cornerRadius)
    
        local uiGradient = Instance.new("UIGradient")
        uiGradient.Rotation = 65
        uiGradient.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(1, 1, 1))
        uiGradient.Offset = Vector2.new(0.5, 0.1)
        uiGradient.Parent = frame

    local isDragging = false
    local startDragPos = nil
    local draggingTouch = nil
    local offset = Vector2.new(0, 0)

    Toggler.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            isDragging = true
            startDragPos = input.Position
            draggingTouch = input
            offset = frame.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if isDragging and input == draggingTouch then
            local newPosition = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
            frame.Position = newPosition
            startDragPos = input.Position
        end
    end)

    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input == draggingTouch then
            isDragging = false
            draggingTouch = nil
        end
    end)

    local autoblockheartbeat = nil
    local AutoBlockState = false

  local function SpamBlock()
        AutoBlockState = not AutoBlockState
        Toggler.Text = AutoBlockState and "On" or "Off"
        Toggler.TextColor3 = AutoBlockState and Color3.new(0,1, 0) or Color3.new(1,0, 0)
        if AutoBlockState then
            task.spawn(function()
                if game:GetService("Players").LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") then
                    autoblockheartbeat = heartbeat:Connect(function()
                        remoteparry:Fire()
                    end)
                end
            end)
        else
            if autoblockheartbeat then
                autoblockheartbeat:Disconnect()
            end
        end

        task.spawn(function()
            if game:GetService("Players").LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") then 
                local TweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
                local Tween = game:GetService("TweenService"):Create(game.Workspace:FindFirstChild("Visualizer"), TweenInfo, {
                    Color = AutoBlockState and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(93, 63, 211)
                })
                Tween:Play()
            end
        end)
    end

    Toggler.MouseButton1Click:Connect(SpamBlock)

    -- / change part name \
    for i, v in ipairs(game.Workspace:GetChildren()) do 
        task.spawn(function()
            if v:IsA("Part") and v.Name == "Part" and v.Material == Enum.Material.ForceField and v.Shape == Enum.PartType.Ball then
                v.Name = "Visualizerlolol"
            end
        end)
    end

    -- / music \
    for i, music in ipairs(musicfolder:GetChildren()) do
        if music:IsA("Sound") then
            task.spawn(function()
                local randomIndex = math.random(1, #soundIds)
                music.SoundId = soundIds[randomIndex]
            end)
        end
    end

    -- / viewpart \
   local function visualizersizechange()
        task.spawn(function()
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") and not AutoBlockState then
                local TweenInfoone = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
                local Tweene = game:GetService("TweenService"):Create(game.Workspace:FindFirstChild("Visualizer"), TweenInfoone, {Size = game.Workspace:FindFirstChild("Visualizerlolol").Size})
                Tweene:Play()
            end
        end)
    end

   local function visualizerpositionchange()
        task.spawn(function()
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") and not AutoBlockState then
                game.Workspace:FindFirstChild("Visualizer").Position = game.Workspace:FindFirstChild("Visualizerlolol").Position
            end
        end)
    end

    game.Workspace:FindFirstChild("Visualizerlolol"):GetPropertyChangedSignal("Size"):Connect(visualizersizechange)
    game.Workspace:FindFirstChild("Visualizerlolol"):GetPropertyChangedSignal("Position"):Connect(visualizerpositionchange)

    heartbeat:Connect(function()
        task.spawn(function()
            if game.Workspace:FindFirstChild("Visualizerlolol").Transparency ~= 1 then
                game.Workspace:FindFirstChild("Visualizerlolol").Transparency = 1
            end
        end)
    end)

    for i, v in ipairs(game.Lighting:GetChildren()) do 
        task.spawn(function()
            v:Destroy()
        end)
    end

    game.Players.LocalPlayer.Chatted:Connect(function(message)
        message = string.lower(message)
        task.spawn(function()
            if string.find(message, "hideb") then 
                for i, v in ipairs(game:GetService("CoreGui"):GetChildren()) do
                    if v.Name == "ScreenGui" and v:FindFirstChild("Frame") and v:FindFirstChild("Frame"):FindFirstChild("UserData") then 
                        v.Enabled = false
                    end
                end
            elseif string.find(message, "showb") then
                for i, v in ipairs(game:GetService("CoreGui"):GetChildren()) do
                    if v.Name == "ScreenGui" and v:FindFirstChild("Frame") and v:FindFirstChild("Frame"):FindFirstChild("UserData") then 
                        v.Enabled = true
                    end
                end
            end
        end)
    end)
end
