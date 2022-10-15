local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local player = game:GetService("Players").LocalPlayer
local plot = nil
local HumanoidRootPart = player.Character.HumanoidRootPart

function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

local Main = Laz:NewWindow("Main Menu")
local Teleport = Laz:NewWindow("Teleport Menu")
local Misc = Laz:NewWindow("Misc Menu")

local Merge = Main:NewSection("Merge Options")
local TP = Teleport:NewSection("Teleporting Options")
local Obby = Misc:NewSection("Obby Options")


Merge:CreateButton("Merge Cubes",function()
    for _, x in pairs(game:GetService("Workspace").Plots[player.Name].Blocks:GetChildren()) do
        x.CFrame = HumanoidRootPart.CFrame + Vector3.new(5,0,0)
    end
end)

Obby:CreateButton("Give 2x Frenzy",function()
    firetouchinterest(HumanoidRootPart,game:GetService("Workspace").Obby.Finish,0)    
end)

for _, x in pairs(game:GetService("Players"):GetChildren()) do
    if x ~= player.Name then
        TP:CreateButton("Teleport to "..x.Name,function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame 
        end)
    end
end
