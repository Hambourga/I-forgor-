local Arrayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hambourga/I-forgor-/main/Kys"))()
local Window = Arrayfield:CreateWindow({
   Name = "Rayfield Example Window",
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image
local Toggle = Tab:CreateToggle({
   Name = "AutoSkip Wave",
   CurrentValue = false,
   Flag = "AutoSkipWave", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     getgenv().AutoSkipWave = Value 
     while getgenv().AutoSkipWave do wait(.5)
       if game.Players.LocalPlayer.PlayerGui.GameGui:FindFirstChild("SkipWave").Visible == true then
       local args = {
         [1] = #game.Players:GetPlayers()
       }
  
       game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AddVoteEvent"):FireServer(unpack(args))
       end
   end
   end,
})

local Button = Tab:CreateButton({
   Name = "Get All Badges [Ingame]",
   Interact = 'Click',
   Callback = function()
local badgeid = {
2143482541,2145868670,2146413965,2146469777,2146469769,
2146646719,2146931737,2146931691,2146931769,2146931810,
2147042252,2147169244,2147086440,2147173153,2147221479,
2147173753,2147221516,2147281267,2147325207,2147378654,
2147426788,2147426926,2147430438,2147430765,2147463333,
2148935515,2148588190,2149785847,2149321947,2149225902,
2149126653,2150246492,2149906302,2149905651,2149905085,
2150515121,2150451947,2150419509,2150312084,2150974278,
2150906581,2148366990,2147659817,2147659950,2149066605,
}
for i,v in ipairs(badgeid) do
local args = {
    [1] = v
}

game:GetService("ReplicatedStorage").Events.AwardBadge:FireServer(unpack(args))
end
   end,
})

local Button = Tab:CreateButton({
   Name = "AdminShop/MobSpawner",
   Interact = 'Click',
   Callback = function()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("adminSecrets") then
  if game:GetService("Players").LocalPlayer.PlayerGui.adminSecrets.OpenAdminShop.Visible == true then 
  game:GetService("Players").LocalPlayer.PlayerGui.adminSecrets.OpenAdminShop.Visible = false 
elseif game:GetService("Players").LocalPlayer.PlayerGui.adminSecrets.OpenAdminShop.Visible == false then
  game:GetService("Players").LocalPlayer.PlayerGui.adminSecrets.OpenAdminShop.Visible = true
end 
elseif game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("GameGui") then
  if game:GetService("Players").LocalPlayer.PlayerGui.GameGui.buttons.Open.Visible == true then 
    game:GetService("Players").LocalPlayer.PlayerGui.GameGui.buttons.Open.Visible = false 
  elseif game:GetService("Players").LocalPlayer.PlayerGui.GameGui.buttons.Open.Visible == false then 
    game:GetService("Players").LocalPlayer.PlayerGui.GameGui.buttons.Open.Visible = true
    end
end
   end,
})
local Input = Tab:CreateInput({
   Name = "Stars Changer [Lobby]",
   PlaceholderText = "NumberHere",
   NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
   CharacterLimit = false, --max character limit. Remove or set to false
   OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
   RemoveTextAfterFocusLost = true, -- Speaks for itself.
   Callback = function(Number)
local args = {
   [1] = Number
}

game:GetService("ReplicatedStorage").SetMoney:InvokeServer(unpack(args))
   end,
})

