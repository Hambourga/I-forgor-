 _G.UI_Size = 200
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
wait(1)

if not _G.Modified then
  _G.Modified = true 
      -- / invisible the close button  and rename it \
  for i, v in ipairs(game:GetService("CoreGui"):GetChildren()) do
                    if v.Name == "ScreenGui" and v:FindFirstChild("Frame") and v:FindFirstChild("Frame"):FindFirstChild("ImageButton") then 
                      v:FindFirstChild("Frame"):FindFirstChild("ImageButton").Visible = false
                      v.Name = "Bedolhub"
      end
  end
-- /just normal variable \

local heartbeat = game:GetService("RunService").Heartbeat
local musicfolder = game:GetService("ReplicatedStorage"):FindFirstChild("Music")
local remoteparry = game:GetService("ReplicatedStorage").Remotes.ParryButtonPress
local client = game:GetService("Players").LocalPlayer
local deadlol = game.Workspace:FindFirstChild("Dead")
local tweenservicelol = game:GetService("TweenService")
local bedolhub = game:GetService("CoreGui"):FindFirstChild("Bedolhub")

      -- / change part name \
    for i, v in ipairs(game.Workspace:GetChildren()) do 
            if v:IsA("Part") and v.Name == "Part" and v.Material == Enum.Material.ForceField and v.Shape == Enum.PartType.Ball then
                v.Name = "Visualizerlolol"
            end
    end

    
    
   local visualizerlmao = game.Workspace:FindFirstChild("Visualizerlolol")

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
    local realvisualizeromg = game.Workspace:FindFirstChild("Visualizer")
    -- / Gui \
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "Hider"
    ScreenGui.Parent = game.CoreGui.RobloxGui
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
     
    local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Name = "Spam block"
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
        Toggler.Size = UDim2.new(1,0,1, 0)
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
   
    -- / Drag function \
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
-- / the button function \ 
    local autoblockheartbeat = nil
    local AutoBlockState = false
    
  local function SpamBlock()
        AutoBlockState = not AutoBlockState
        Toggler.Text = AutoBlockState and "On" or "Off"
        Toggler.TextColor3 = AutoBlockState and Color3.new(0,1, 0) or Color3.new(1,0, 0)
      
        if AutoBlockState then
                if client.Character.Parent ~= deadlol then
                  task.spawn(function()
                    autoblockheartbeat = heartbeat:Connect(function()
                        remoteparry:Fire()
                    end)
                    end)
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
        local color = AutoBlockState and Color3.new(1,0, 0) or Color3.fromRGB(93, 63, 211)
        local Tween = tweenservicelol:Create(realvisualizeromg, TweenInfo, { Color = color })
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
 -- / connect the function to the button \ 
    
    Toggler.MouseButton1Click:Connect(function()
      SpamBlock()
      ChangeVisualizerColor()
      end)
    ImageButton.MouseButton1Click:Connect(function()
      hidebutton()
    end)
    
    -- / music \
   --[[ for i, music in ipairs(musicfolder:GetChildren()) do
        if music:IsA("Sound") then
            task.spawn(function()
                local randomIndex = math.random(1, #soundIds)
                music.SoundId = soundIds[randomIndex]
            end)
        end
    end]]

    -- / viewpart \
   local function visualizersizechange()
        task.spawn(function()
            if client.Character and client.Character.Parent ~= deadlol and not AutoBlockState then
                local TweenInfoone = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
                local Tweene = tweenservicelol:Create(realvisualizeromg, TweenInfoone, {Size = visualizerlmao.Size})
                Tweene:Play()
            end
        end)
    end

   local function visualizerpositionchange()
        task.spawn(function()
            if client.Character and client.Character.Parent ~= deadlol and not AutoBlockState then
                realvisualizeromg.Position = visualizerlmao.Position
            end
        end)
    end
   
    visualizerlmao.Transparency = 1
    visualizerlmao:GetPropertyChangedSignal("Size"):Connect(visualizersizechange)
    visualizerlmao:GetPropertyChangedSignal("Position"):Connect(visualizerpositionchange)
    
-- / Unlock fps \

setfpscap(150)
for i, v in ipairs(game.Lighting:GetChildren()) do 
            v:Destroy()
    end
workspace.Terrain:Clear()
workspace:FindFirstChildOfClass("Terrain").Elasticity = 0
sethiddenproperty(workspace:FindFirstChildOfClass("Terrain"), "Decoration", false)
sethiddenproperty(game.Lighting, "Technology", "Compatibility")
game.Lighting.GlobalShadows = false
game.Lighting.FogEnd = 9e9
end
