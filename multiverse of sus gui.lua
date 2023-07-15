local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hambourga/I-forgor-/main/scripts"))()
local win = SolarisLib:New({
   Name = "Multiverse of Sus",
   FolderToSave = "SolarisLibStuff"
})
local tab = win:Tab("Tab 1")
local sec = tab:Section("Main")

getgenv().SusAmaount = nil
sec:Textbox("Sus Amount", true, function(t)
   getgenv().SusAmaount = t 
end)
sec:Button("Sus giver", function()
  local oldcf = game.players.localplayer.character.HumanoidRootPart.CFrame
  if game:GetService("Workspace").Doors.ReaperDoor.BrickColor ~= Limegreen then 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(318, 1447, 8093)
    wait(0.2)
   local args = {
    [1] = "ReaperDoor",
    [2] = "SUS",
    [3] = -tonumber(getgenv().SusAmaount)
}
game:GetService("ReplicatedStorage"):WaitForChild("DoorEvents"):WaitForChild("Buy"):FireServer(unpack(args))

elseif game:GetService("Workspace").Doors.ErrorDoor.Activator.BrickColor ~= Limegreen then
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(318, 1447, 8093)
wait(0.2)
  local args = {
    [1] = "ErrorDoor",
    [2] = "SUS",
    [3] = -tonumber(getgenv().SusAmaount)
}
game:GetService("ReplicatedStorage"):WaitForChild("DoorEvents"):WaitForChild("Buy"):FireServer(unpack(args))
elseif game:GetService("Workspace").Doors.CrossDoor.Activator.BrickColor ~= Limegreen then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(318, 1447, 8093)
wait(0.2)
  local args = {
    [1] = "CrossDoor",
    [2] = "SUS",
    [3] = -tonumber(getgenv().SusAmaount)
}
game:GetService("ReplicatedStorage"):WaitForChild("DoorEvents"):WaitForChild("Buy"):FireServer(unpack(args))
elseif game:GetService("Workspace").Doors.DustDustDoor.Activator.BrickColor ~= Limegreen then
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(318, 1447, 8093)
wait(0.2)
  local args = {
    [1] = "DustDustDoor",
    [2] = "SUS",
    [3] = -tonumber(getgenv().SusAmaount)
}
game:GetService("ReplicatedStorage"):WaitForChild("DoorEvents"):WaitForChild("Buy"):FireServer(unpack(args))
end
wait(.5)
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
end)


sec:Button("Get All Char/Assist/Upgrade/Accessories", function()
   for i,v in ipairs(game.Workspace.Doors:GetDescendants()) do
if v.Name == "Activator" and v:FindFirstChildOfClass("TouchTransmitter") then
v.CanTouch = false
v.CanCollide = false
v.Parent.CanCollide = false
end
end

for i,v in ipairs(game.Workspace.Doors:GetChildren()) do
if not v:FindFirstChild("Activator") and v:IsA("Part") then
v.CanCollide = false
end
end

for i,v in ipairs(game.Workspace:GetDescendants()) do
if v.Name == "Badge door" or v.Name == "GP Door" or v.Name == "revert dustDoor" then
v.CanTouch = false
v.CanCollide = false
end
end

end)
sec:Button("650k hp [Godmode Basically]", function()
  local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  local oldws = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56, 29, -493)
   wait()
   for i, v in ipairs(game.Workspace.other:GetDescendants()) do
            if v.Name == "Part" and v.CFrame == CFrame.new(50.4091797, 9.08373833, -473.016235, -1, 0, 0, 0, 1, 0, 0, 0, -1) then
                firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        end
   end
   wait()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
      wait(2)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = oldws
end)



local sec = tab:Section("Misc")
sec:Button("Hide Name", function()
  for i,v in ipairs(game.Players.LocalPlayer.Character.Head.BillboardGui:GetChildren()) do
if v.Name == "TextLabel" then
v:Destroy()
end
end
end)
sec:Button("Kill boss", function()
  setsimulationradius(10000,20000)
   for i, v in ipairs(game.Workspace:GetDescendants()) do
       if v:IsA("Humanoid") and not game.Players:GetPlayerFromCharacter(v.Parent) then
           v.Health = 0
           v.MaxHealth = 0
       end
   end
end)
