
   local repsosowown
   repsosowown = game:GetService("RunService").RenderStepped:Connect(function()
       if _G.Autofarm and _G.Slectbrlahlah == "Normal" then
           spawn(function()
               if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/0" or game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/68408" then
                   firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                   firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
               elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 9/0" then
                   fireclickdetector(game.Workspace.SoulKiller.ClickDetector)
               else
                   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
                   sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
                   for i, v in ipairs(game.Workspace:GetChildren()) do
                       if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("NPCTAG") and v:FindFirstChild("Zombie") then
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Torso").CFrame + Vector3.new(0,7, -8)
                           wait()
                           v:FindFirstChild("Head"):Destroy()
                           v:FindFirstChild("Torso"):Destroy()
                           v:FindFirstChildOfClass("Humanoid").Health = 0
                           v:FindFirstChildOfClass("Humanoid").MaxHealth = 0
                       end
                   end
               end
               settings().Physics.AllowSleep = false
               settings().Physics.ThrottleAdjustTime = math.huge - math.huge
           end)
       elseif _G.Autofarm and _G.Slectbrlahlah == "BR" then
           spawn(function()
               if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/0" and game:GetService("Workspace").Skippy then
                   fireclickdetector(game.Workspace:WaitForChild("Skippy").ClickDetector)
                   wait(5)
                   fireclickdetector(game.Workspace:WaitForChild("MegaSkippy").ClickDetector)
                   wait(1)
                   firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                   firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
               else
                   sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
                   sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
                   for i, v in ipairs(game.Workspace:GetChildren()) do
                       if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("NPCTAG") and v:FindFirstChild("Zombie") then
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Torso").CFrame + Vector3.new(0, 7, -8)
                           wait()
                           v:FindFirstChild("Head"):Destroy()
                           v:FindFirstChild("Torso"):Destroy()
                           v:FindFirstChildOfClass("Humanoid").Health = 0
                           v:FindFirstChildOfClass("Humanoid").MaxHealth = 0
                       end
                   end
               end
               settings().Physics.AllowSleep = false
               settings().Physics.ThrottleAdjustTime = math.huge - math.huge
           end)
       else
           repsosowown:Disconnect()
       end
   end)
   
