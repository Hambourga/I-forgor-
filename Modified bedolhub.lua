_G.UI_Size = 200
setfpscap(60)
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
wait(4)
local clientchar = game:GetService("Players").LocalPlayer.Character
local alive = clientchar.Parent ~= game.Workspace:FindFirstChild("Dead")
local dead = clientchar.Parent == game.Workspace:FindFirstChild("Dead")
local parryremote = game:GetService("ReplicatedStorage").Remotes.ParryButtonPress
local heartbeat = game:GetService("RunService").Heartbeat
local musicfolder = game:GetService("ReplicatedStorage"):FindFirstChild("Music")
if not _G.NoExecuted then
  _G.NoExecuted = true
  local soundIds = {
      "rbxassetid://14145625078",
      "rbxassetid://14145625743",
      "rbxassetid://14145624650",
      "rbxassetid://14145618923",
      "rbxassetid://14145627857",
  }
  
  local forcefieldlol = Instance.new("Part", game.Workspace)
        forcefieldlol.Name = "Visualizer"
        forcefieldlol.Material = Enum.Material.ForceField
        forcefieldlol.Color = Color3.fromRGB(93, 63, 211)
        forcefieldlol.Shape = Enum.PartType.Ball
        forcefieldlol.Anchored = true 
        forcefieldlol.CanCollide = false 
        forcefieldlol.Transparency = 0.7
        forcefieldlol.CastShadow = false  
        
    local ScreenGui = Instance.new("ScreenGui")
                ScreenGui.Name = "ArrayfieldToggelerlroe"
                ScreenGui.Parent = game.CoreGui.RobloxGui
                ScreenGui.ClipToDeviceSafeArea = false
                ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
                
                local frame = Instance.new("Frame")
                frame.Parent = ScreenGui
                frame.Size = UDim2.new(0, 60, 0, 50)
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
                Toggler.TextColor3 = Color3.new(1, 1, 0)
                Toggler.Font = Enum.Font.FredokaOne
                
                local UICorner = Instance.new("UICorner")
                UICorner.Parent = frame
                local cornerRadius = 10
                UICorner.CornerRadius = UDim.new(0, cornerRadius)
                
                local uiGradiente = Instance.new("UIGradient")
                uiGradiente.Rotation = 65
                uiGradiente.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(1, 1, 1))
                uiGradiente.Offset = Vector2.new(0.5, 0.1)
                uiGradiente.Parent = frame
                
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
                function SpamBlock()
                    AutoBlockState = not AutoBlockState
                    Toggler.Text = AutoBlockState and "On" or "Off"
                           if AutoBlockState then
                      if alive then
                        autoblockheartbeat = heartbeat:Connect(function()
                            task.spawn(function()
                               parryremote:Fire()
                            end)
                        end)
                        end
                    else
                    if autoblockheartbeat then
                   autoblockheartbeat:Disconnect()
               end
                           end
         if alive then 
local TweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local Tween = game:GetService("TweenService"):Create(game.Workspace:FindFirstChild("Visualizer"), TweenInfo, {Color = AutoBlockState and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(93, 63, 211)})
Tween:Play()
                  end
                end
                
    Toggler.MouseButton1Click:Connect(SpamBlock)
    for i,v in ipairs(game.Workspace:GetChildren()) do 
    if v:IsA("Part") and v.Name == "Part" and v.Material == Enum.Material.ForceField and v.Shape == Enum.PartType.Ball then
     task.spawn(function()
      v.Name = "Visualizerlolol"
      end)
    end 
    end
    
    for i, music in ipairs(musicfolder:GetChildren()) do
      if music:IsA("Sound") then
        task.spawn(function()
          local randomIndex = math.random(1, #soundIds)
          music.SoundId = soundIds[randomIndex]
          end)
      end
    end
    game.Workspace:FindFirstChild("Visualizerlolol"):GetPropertyChangedSignal("Size"):Connect(function()
         task.spawn(function()
          if (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") and not AutoBlockState) then
            local TweenInfoone = TweenInfo.new(0.5, Enum.EasingStyle.Linear,Enum.EasingDirection.InOut)
            local Tweene = game:GetService("TweenService"):Create(game.Workspace:FindFirstChild("Visualizer"), TweenInfoone, {Size = game.Workspace:FindFirstChild("Visualizerlolol").Size})
            Tweene:Play()
          end
          end)
        end)
       
        game.Workspace:FindFirstChild("Visualizerlolol"):GetPropertyChangedSignal("Position"):Connect(function()
          task.spawn(function()
         if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") and not AutoBlockState then
          game.Workspace:FindFirstChild("Visualizer").Position = game.Workspace:FindFirstChild("Visualizerlolol").Position
         end
      end)
      end)
    
    heartbeat:Connect(function()
      task.spawn(function()
           if game.Workspace:FindFirstChild("Visualizerlolol").Transparency ~= 1 then
            game.Workspace:FindFirstChild("Visualizerlolol").Transparency = 1
           end
          end)
    end) 
end

for i,v in ipairs(game.Lighting:GetChildren()) do 
  task.spawn(function()
  v:Destroy()
  end)
end
