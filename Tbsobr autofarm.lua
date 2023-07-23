_G.Autofarm =
 
 while wait() do
     if _G.Autofarm then 
         spawn(function()
             if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/0" then 
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
             elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 9/0" then 
                 fireclickdetector(game.Workspace.SoulKiller.Votes.Detector)
             else 
                 setsimulationradius(1000000, 10000000)  
                 for i, v in ipairs(game.Workspace:GetDescendants()) do
                     if v:IsA("Humanoid") and not game.Players:GetPlayerFromCharacter(v.Parent) then
                         v.Health = 0
                         v.MaxHealth = 0
                     end
                 end
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 30, 518)
             end 
         end)
     end 
 end
 
