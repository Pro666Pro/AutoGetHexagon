--If you're skidding my script then please credit me at least 🙏
--Open source for educational purposes ( and also im just too lazy to obfuscate )


if game.PlaceId == 97220865182663 then
if not game.IsLoaded then
game.Loaded:Wait()
end

-- Credits, message is not squished up cuz it looks bad
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Nexer1234_AnotherAlt",
	Text = "Made by @nexer1234 ( youtube & discord )",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000
})

repeat task.wait(.1) until workspace:FindFirstChild("Part I") and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
-- Script not done yet

elseif game.PlaceId == 11520107397 or game.PlaceId == 9015014224 or game.PlaceId == 6403373529 then
if not game.IsLoaded then
game.Loaded:Wait()
end
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Nexer1234_AnotherAlt",
	Text = "Made by @nexer1234 ( youtube & discord )",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000
})
if game.Players.LocalPlayer.Character:FindFirstChild("entered") == nil then
if game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2130463063) then -- Checking for obby
fireclickdetector(workspace.Lobby["Obby"].ClickDetector) -- Equiping obby
repeat task.wait(.1) until game.Players.LocalPlayer.leaderstats.Glove.Value == "Obby"
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Lobby["Teleport1"].CFrame
repeat task.wait(.1) until game.Players.LocalPlayer.Character:FindFirstChild("entered") -- Waiting for our character to get teleported to arena
task.wait(.1)
-- Creating table so we can easily use all args
partspos = {
    [1] = CFrame.new(241.82754516601562, -18.416065216064453, 4.669858455657959) * CFrame.Angles(2.5299831118985594e-09, 1.1053541898727417, -2.506274521252294e-09),
    [2] = CFrame.new(232.99655151367188, -18.416065216064453, 5.007986545562744) * CFrame.Angles(-3.141592502593994, 1.0570828914642334, 3.141592502593994),
    [3] = CFrame.new(246.00315856933594, -18.416065216064453, 11.59123706817627) * CFrame.Angles(3.141592502593994, -0.12516921758651733, 3.1415927410125732),
    [4] = CFrame.new(228.64903259277344, -18.416065216064453, 12.657069206237793) * CFrame.Angles(-3.1415927410125732, -0.04263044893741608, -3.1415927410125732),
    [5] = CFrame.new(242.11700439453125, -18.416065216064453, 19.456865310668945) * CFrame.Angles(3.141592502593994, 0.9149928092956543, -3.141592502593994),
    [6] = CFrame.new(233.44776916503906, -18.416065216064453, 20.341604232788086) * CFrame.Angles(-1.062227994452769e-07, 1.0962058305740356, 8.786906846580678e-08)
}
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(238.15428161621094, -15.716065406799316, 13.426663398742676) -- Teleporting to place where we are going to place hexagon
task.wait(1)
for i,v in ipairs(partspos) do
game:GetService("ReplicatedStorage").GeneralAbility:FireServer(v,5) -- placing blocks
task.wait(3) -- obby cooldown
end
-- And now uh waiting until we get teleported
local teleport = queueonteleport or queue_on_teleport -- just look at function name bro
if teleport then
    teleport([[
if not game.IsLoaded then
game.Loaded:Wait()
end
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Credits to Nexer1234_AnotherAlt",
	Text = "Made by @nexer1234 ( youtube & discord )",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000
})
if workspace.Game.Buildings.City:FindFirstChild("City") == nil then
game:GetService("ReplicatedStorage").Remotes.PlaceBuilding:FireServer("City", Vector3.new(3.125, 43.4450798034668, -57.1875), 0)
end
while task.wait() do
if workspace.Game.Enemies:FindFirstChild("Rat") then
if workspace.Game.Enemies.Rat.Humanoid.Health ~= 0 then
workspace.Game.Enemies.Rat.Humanoid.Health = 0
end
end
game:GetService("ReplicatedStorage").Remotes.UnlockGloveWithOrbs:FireServer()
end
	]])
end
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Nexer1234_AnotherAlt",
	Text = "You don't have obby",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000,
	Button1 = "Oh..."
})
end
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Nexer1234_AnotherAlt",
	Text = "Use in lobby",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000,
	Button1 = "Oh..."
})
end
else
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Message from Nexer1234_AnotherAlt",
	Text = "Wrong game buddy",
    Icon = "rbxassetid://125704683916878",
	Duration = 36000,
	Button1 = "Oh..."
})
end
