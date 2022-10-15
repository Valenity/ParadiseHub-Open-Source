local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Main = Laz:NewWindow("Main Menu")
local Teleport = Laz:NewWindow("Teleport")

local Click = Main:NewSection("Trick-or-Treating")

function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

Click:CreateButton("Knock on Random Door",function()
    for _, x in pairs(game:GetService("Workspace"):GetDescendants()) do
        if x.Name == "House" then
            fireclickdetector(x.DoorBell.ClickDetector)
        end
    end
    notify("Door","Knocked on Door")
end)


Click:CreateButton("Grab All Candy",function()
    for _, x in pairs(game:GetService("Workspace"):GetChildren()) do
        if x.Name == "Candy" then
            fireclickdetector(x.ClickDetector)
        end
    end
    notify("Candy","Grabbed Candy")
end)

Click:CreateButton("Teleport to Sell",function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(52.341774, 92.8757935, 485.490814, 1, 2.38451445e-08, 4.40917102e-05, -2.38458959e-08, 1, 1.70744769e-08, -4.40917102e-05, -1.70755285e-08, 1)
end)
