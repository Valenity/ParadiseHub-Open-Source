local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Replicated = game:GetService("ReplicatedStorage")
local player = game:GetService("Players").LocalPlayer
local HumanoidRootPart = player.Character.HumanoidRootPart

-- Menus
local Speed = Laz:NewWindow("Speed Menu")
local Teleport = Laz:NewWindow("Teleport Menu")
local Misc = Laz:NewWindow("Misc Menu")

-- Options
local SpeedHax = Speed:NewSection("Click Options")
local TP = Teleport:NewSection("Players")
local Friend = Misc:NewSection("Star Rewards")
--Functions


function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

Friend:CreateToggle("Manipulate Reward",function(g)
    getgenv().h = g
end)

SpeedHax:CreateToggle("Spam Click",function(g)
    getgenv().g = g
end)

for _, x in pairs(game:GetService("Players"):GetChildren()) do
    if x ~= player then
        TP:CreateButton("Teleport to "..x.Name,function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame 
        end)
    end
end

while true do
    task.wait(0.01)
    if getgenv().g == true then
        game:GetService("ReplicatedStorage").RemoteEvents["Rocket_RemoteEvent"]:FireServer("ClickPower", 1000)
    end
    
    if getgenv().h == true then
        game:GetService("ReplicatedStorage").RemoteEvents["Friend_RemoteEvent"]:FireServer(1000000 * 5)
    end
end