


local rensderpt
 rensderpt = game:GetService("RunService").RenderStepped:Connect(function()
     if _G.Autofarm and _G.Slectbrlahlah == "Normal" then 
         spawn(function()
             if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/0" or game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/68408" then 
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
             elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 9/0" then 
                 fireclickdetector(game.Workspace.SoulKiller.Votes.ClickDetector)
            else
                 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
                 sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
                 for i,v in ipairs(game.Workspace:GetChildren()) do
                     if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("NPCTAG") ~= nil and v:FindFirstChild("Zombie") then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Torso").CFrame + Vector3.new(0,-7,-9)
                       wait()
                       v:FindFirstChild("Head"):Destroy()
                         v.Health = 0
                         v.MaxHealth = 0
                         v:FindFirstChild("Zombie").IsDied.Value = true
                     end
                 end
             end 
             settings().Physics.AllowSleep = false
              settings().Physics.ThrottleAdjustTime = math.huge-math.huge
         end)
 elseif rensderpt then 
     rensderpt:Disconnect()
     end
 end)
 
