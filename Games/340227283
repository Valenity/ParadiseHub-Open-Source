local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local player = game:GetService("Players").LocalPlayer

local Main = Laz:NewWindow("Main Menu")

local Permissions = Main:NewSection("Coins")

Permissions:CreateButton("Grab Coins",function()
    for _, x in pairs(game:GetService("Workspace").Coins:GetDescendants()) do
        if x.Name == "Coin" then
            firetouchinterest(player.Character.HumanoidRootPart, x, 0)
        end
    end
end)
