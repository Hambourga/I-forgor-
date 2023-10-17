_G.UI_Size = 200 -- config ui size
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/-beta-/main/AutoParry.lua"))()
wait(5)
setfpscap(60)
for i,v in ipairs(game.Lighting:GetChildren()) do 
  v:Destroy()
  end
if not getgenv().Executedlol then 
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
        forcefieldlol.Transparency = 0.1
        forcefieldlol.CastShadow = false  
        
        
  getgenv().Executedlol = true
  task.spawn(function()
    if not getgenv().Executedlollol then
     getgenv().Executedlollol = true
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
                      if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent ~= game.Workspace:FindFirstChild("Dead") then
                        autoblockheartbeat = game:GetService("RunService").Heartbeat:Connect(function()
                            task.spawn(function()
                                game:GetService("ReplicatedStorage").Remotes.ParryButtonPress:Fire()
                            end)
                        end)
                        end
                    else
                        if autoblockheartbeat then
                            autoblockheartbeat:Disconnect()
                            
                        end
                    end
                    if game.Workspace:WaitForChild("Visualizer",5) then 
                          game.Workspace:FindFirstChild("Visualizer").Color = AutoBlockState  and Color3.fromRGB(255,0,0) or Color3.fromRGB(93, 63, 211)
                  end
                end
                
                
                Toggler.MouseButton1Click:Connect(SpamBlock)
                
        end        


  for i, music in ipairs(game:GetService("ReplicatedStorage"):FindFirstChild("Music"):GetChildren()) do
      if music:IsA("Sound") then
         
          local randomIndex = math.random(1, #soundIds)
          music.SoundId = soundIds[randomIndex]
      end
  end
  
  
  wait(1)
  for i,v in ipairs(game.Workspace:GetChildren()) do 
    if v:IsA("Part") and v.Name == "Part" and v.Material == Enum.Material.ForceField and v.Shape == Enum.PartType.Ball then
      v.Name = "Visualizerlolol"
    end 
  end
  wait(1)
  if game.Workspace:FindFirstChild("Visualizer") and  game.Workspace:FindFirstChild("Visualizerlolol") then
        game.Workspace:FindFirstChild("Visualizerlolol"):GetPropertyChangedSignal("Size"):Connect(function()
          game.Workspace:FindFirstChild("Visualizer").Size = game.Workspace:FindFirstChild("Visualizerlolol").Size + Vector3.new(0.3,0.3,0.3)
        end) 
         
         
      
        game.Workspace:FindFirstChild("Visualizerlolol"):GetPropertyChangedSignal("Position"):Connect(function()
          game.Workspace:FindFirstChild("Visualizer").Position = game.Workspace:FindFirstChild("Visualizerlolol").Position
        end)
      end
    
    game:GetService("RunService").Heartbeat:Connect(function()
           if game.Workspace:FindFirstChild("Visualizerlolol").Transparency ~= 1 then
            game.Workspace:FindFirstChild("Visualizerlolol").Transparency = 1
            end
    end) 
        
    end)
wait(5)
getgenv().Executedlol = false
end


