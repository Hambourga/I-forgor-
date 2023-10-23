local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

if game:GetService("ReplicatedStorage").Security then
  if game:GetService("ReplicatedStorage").Security.RemoteEvent then
game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()
end
if game:GetService("ReplicatedStorage").Security[""] then
game:GetService("ReplicatedStorage").Security[""]:Destroy()
end
game:GetService("ReplicatedStorage").Security:Destroy()
end 
Notification:Notify(
            {
                Title = "Ac Bypasser",
                Description = "There is an 80% chance that the AC will be bypassed."
            },
            {
                OutlineColor = Color3.fromRGB(255,0,0),
                Time = 10,
                Type = "default"
            }
        )
wait(10)
Notification:Notify(
            {
                Title = "Ac Bypasser",
                Description = "Loaded!"
            },
            {
                OutlineColor = Color3.fromRGB(0,255,0),
                Time = 5,
                Type = "default"
            }
        )
_G.UI_Size = 200
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
wait(1)
-- i does catogories them so it would be easy to read and does not make anyone dizzy by looking at it
if not _G.Modified then
    _G.Modified = true
    -- / invisible the close button  and rename it \
    for i, v in ipairs(game:GetService("CoreGui"):GetChildren()) do
        if
            v.Name == "ScreenGui" and v:FindFirstChild("Frame") and
                v:FindFirstChild("Frame"):FindFirstChild("ImageButton")
         then
            v:FindFirstChild("Frame"):FindFirstChild("ImageButton").Visible = false
            v.Name = "Bedolhub"
        end
    end
    -- / change part name \
    for i, v in ipairs(game.Workspace:GetChildren()) do
        if
            v:IsA("Part") and v.Name == "Part" and v.Material == Enum.Material.ForceField and
                v.Shape == Enum.PartType.Ball
         then
            v.Name = "Visualizerlolol"
        end
    end
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
    -- /just normal variable \

    local heartbeat = game:GetService("RunService").Heartbeat
    local musicfolder = game:GetService("ReplicatedStorage"):FindFirstChild("Music")
    local remoteparry = game:GetService("ReplicatedStorage").Remotes.ParryButtonPress
    local client = game:GetService("Players").LocalPlayer
    local deadlol = game.Workspace:FindFirstChild("Dead")
    local tweenservicelol = game:GetService("TweenService")
    local bedolhub = game:GetService("CoreGui"):FindFirstChild("Bedolhub")
    local visualizerlmao = game.Workspace:FindFirstChild("Visualizerlolol") 
    local realvisualizeromg = game.Workspace:FindFirstChild("Visualizer")
    visualizerlmao.Transparency = 1
    
    -- / Hold Autoparry \
    -- / Gui \
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "Every toggler cute gui"
    ScreenGui.Parent = gethui()
    ScreenGui.ClipToDeviceSafeArea = false
    ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

    local frame = Instance.new("Frame")
    frame.Parent = ScreenGui
    frame.Size = UDim2.new(0.034, 0, 0.064, 0)
    frame.Position = UDim2.new(0.90, 0, 0.0, 0)
    frame.Active = true
    frame.BackgroundTransparency = 0.5
    frame.BackgroundColor3 = Color3.new(0, 0, 0)

    local ImageButton = Instance.new("ImageButton")
    ImageButton.Name = "Hide"
    ImageButton.Parent = frame
    ImageButton.Size = UDim2.new(1, 0, 1, 0)
    ImageButton.BackgroundTransparency = 1
    ImageButton.Image = "rbxassetid://7733774602"

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = frame
    local cornerRadius = 7
    UICorner.CornerRadius = UDim.new(0, cornerRadius)
    --
    local frame = Instance.new("Frame")
    frame.Parent = ScreenGui
    frame.Size = UDim2.new(0.062, 0, 0.08, 0)
    frame.Position = UDim2.new(0.2, 0, 0.2, 0)
    frame.Active = true
    frame.BackgroundTransparency = 0

    local Toggler = Instance.new("TextButton")
    Toggler.Name = "Toggler"
    Toggler.Parent = frame
    Toggler.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Toggler.BackgroundTransparency = 1
    Toggler.Size = UDim2.new(1, 0, 1, 0)
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
    
 local UIStroke = Instance.new("UIStroke")
  UIStroke.Parent = frame
  UIStroke.Color = Color3.new(0,0,0)  -- Set the color to white
  UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  UIStroke.Thickness = 1

 local framel = Instance.new("Frame")
framel.Parent = ScreenGui
framel.Size = UDim2.new(0.13, 0, 0.06, 0)
framel.Position = UDim2.new(0.7, 0, 0.050, 0)
framel.Active = true
framel.BackgroundColor3 = Color3.fromRGB(0,0,0)

local Ping = Instance.new("TextLabel")
Ping.Name = "Ping"
Ping.Parent = framel
Ping.BackgroundColor3 = Color3.fromRGB()
Ping.BackgroundTransparency = 1
Ping.BorderColor3 = Color3.fromRGB(255, 255, 255)
Ping.Size = UDim2.new(1, 0, 1, 0)
Ping.Font = Enum.Font.SourceSans
Ping.TextColor3 = Color3.fromRGB(253, 253, 253)
Ping.TextScaled = false
Ping.TextSize = 14.000
Ping.TextWrapped = false

local UICorner = Instance.new("UICorner")
UICorner.Parent = framel
local cornerRadius = 10
UICorner.CornerRadius = UDim.new(0, cornerRadius)

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = framel
UIStroke.Color = Color3.new(1, 1, 1)  -- Set the color to white
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 1

local uiGradient = Instance.new("UIGradient")
    uiGradient.Rotation = 65
    uiGradient.Color = ColorSequence.new(Color3.new(105,105,105), Color3.new(128,128,128))
    uiGradient.Offset = Vector2.new(0.5, 0.1)
    uiGradient.Parent = framel
    
    -- / Drag function \
    local isDragging = false
    local startDragPos = nil
    local draggingTouch = nil
    local offset = Vector2.new(0, 0)

    Toggler.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.Touch then
                isDragging = true
                startDragPos = input.Position
                draggingTouch = input
                offset = frame.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
            end
        end
    )

    game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if isDragging and input == draggingTouch then
                local newPosition = UDim2.new(0, input.Position.X, 0, input.Position.Y) + offset
                frame.Position = newPosition
                startDragPos = input.Position
            end
        end
    )

    game:GetService("UserInputService").InputEnded:Connect(
        function(input)
            if input == draggingTouch then
                isDragging = false
                draggingTouch = nil
            end
        end
    )
    -- / Function \
    local autoblockheartbeat = nil
    local AutoBlockState = false

    local function SpamBlock()
        AutoBlockState = not AutoBlockState
        Toggler.Text = AutoBlockState and "On" or "Off"
        Toggler.TextColor3 = AutoBlockState and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)

        if AutoBlockState then
            if client.Character.Parent ~= deadlol then
                autoblockheartbeat =
                    heartbeat:Connect(
                    function()
                        remoteparry:Fire()
                    end
                )
            end
        else
            if autoblockheartbeat then
                autoblockheartbeat:Disconnect()
            end
        end
    end
    local function ChangeVisualizerColor()
        if client.Character.Parent ~= deadlol then
            local TweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
            local color = AutoBlockState and Color3.new(1, 0, 0) or Color3.fromRGB(93, 63, 211)
            local Tween = tweenservicelol:Create(realvisualizeromg, TweenInfo, {Color = color})
            Tween:Play()
        end
    end

    local function hidebutton()
        if bedolhub.Enabled == true then
            bedolhub.Enabled = false
            ImageButton.Image = "rbxassetid://7733774495"
        else
            ImageButton.Image = "rbxassetid://7733774602"
            bedolhub.Enabled = true
        end
    end
    function checkfps()
        if
            game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() >= 150 and
                game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() < 259
         then
            Ping.TextColor3 = Color3.fromRGB(255, 255, 0)
        elseif game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() >= 260 then
            Ping.TextColor3 = Color3.fromRGB(255, 0, 0)
        else
            Ping.TextColor3 = Color3.fromRGB(0, 255, 0)
        end
        Ping.Text = tostring(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()) .. " MS"
    end
    local function visualizersizechange()
        if
            client.Character:FindFirstChild("Humanoid").Health ~= 0 and client.Character.Parent ~= deadlol and
                not AutoBlockState
         then
            realvisualizeromg.Size = visualizerlmao.Size
        end
    end

    local function visualizerpositionchange()
        if
            client.Character:FindFirstChild("Humanoid").Health ~= 0 and client.Character.Parent ~= deadlol and
                not AutoBlockState
         then
            realvisualizeromg.Position = visualizerlmao.Position
        end
    end
    -- / connect the function \

    Toggler.MouseButton1Click:Connect(
        function()
            task.spawn(
                function()
                    SpamBlock()
                end
            )
            task.spawn(
                function()
                    ChangeVisualizerColor()
                end
            )
        end
    )
    ImageButton.MouseButton1Click:Connect(
        function()
            hidebutton()
        end
    )
    task.spawn(
        function()
            while true do
                checkfps()
                wait(.7)
            end
        end
    )
    task.spawn(
        function()
            visualizerlmao:GetPropertyChangedSignal("Size"):Connect(visualizersizechange)
        end
    )
    task.spawn(
        function()
            visualizerlmao:GetPropertyChangedSignal("Position"):Connect(visualizerpositionchange)
        end
    )
    -- / music \
    local soundIds = {
        "14145625743",
        "14145625078",
        "14145627857",
        "14145618923",
        "14145624650"
    }
    for i, music in ipairs(musicfolder:GetChildren()) do
        if music:IsA("Sound") then
            local randomIndex = math.random(1, #soundIds)
            music.SoundId = "rbxassetid://" .. soundIds[randomIndex]
        end
    end

    -- / Unlock fps \

    setfpscap(6969)
    for i, v in ipairs(game.Lighting:GetChildren()) do
        v:Destroy()
    end
    workspace.Terrain:Clear()
    workspace:FindFirstChildOfClass("Terrain").Elasticity = 0
    sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
    sethiddenproperty(game.Lighting, "Technology", "Compatibility")
    game.Lighting.GlobalShadows = false
    game.Lighting.FogEnd = math.huge

    -- At this point why you even need dev console 💀
    game:GetService("CoreGui").ChildAdded:Connect(
        function(devconsole)
            if devconsole.Name == "DevConsoleMaster" then
                devconsole.Enabled = false
                game.StarterGui:SetCore(
                    "ChatMakeSystemMessage",
                    {
                        Text = "[System]: Nuh uh",
                        Color = Color3.fromRGB(255, 0, 0),
                        Font = Enum.Font.Code,
                        FontSize = Enum.FontSize.Size24
                    }
                )
            end
        end
    )
end




