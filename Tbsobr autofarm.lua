while wait() do
     if _G.Autofarm then 
         spawn(function()
             if game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 0/0" then 
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                 firetouchinterest(game.Workspace.Start.Part, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
             elseif game.Players.LocalPlayer.PlayerGui["Wave Counter"].WAVE.TextLabel.Text == "Wave: 66/0" then 
                 fireclickdetector(game.Workspace.SoulKiller.Votes.ClickDetector)
            else
                 setsimulationradius(100000, 100000)  
                 for i, v in ipairs(game.Workspace:GetDescendants()) do
                     if v:IsA("Humanoid") and not game.Players:GetPlayerFromCharacter(v.Parent) then
                       v.Parent:FindFirstChild("Head"):Destroy()
                         v.Health = 0
                     end
                 end
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-116, 30, 518)
             end 
         end)
     end 
end
