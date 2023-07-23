

 game:GetService("RunService").RenderStepped:Connect(function()
     if _G.Autofarm then 
         spawn(function()
             if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/0" or game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/68408" then 
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
             elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 9/0" then 
                 fireclickdetector(game.Workspace.SoulKiller.Votes.ClickDetector)
            else
                 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", 69696969)
                 sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", math.huge)
                 for i,v in ipairs(game.Workspace:GetDescendants()) do
                     if v:IsA("Humanoid") and v.Parent:FindFirstChild("NPCTAG") ~= nil and v.Name == "Zombie" then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent:FindFirstChild("Torso").CFrame + Vector3.new(0,8,7)
                       wait()
                       v.Parent:FindFirstChild("Head"):Destroy()
                         v.Health = 0
                         v.MaxHealth = 0
                     end
                 end
             end 
             settings().Physics.AllowSleep = false
              settings().Physics.ThrottleAdjustTime = math.huge-math.huge
         end)
     end 
 end)
 
