local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local player = game:GetService("Players").LocalPlayer
local character = player.Character

function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

local Attack = Laz:NewWindow("Attack Menu")
local Travel = Laz:NewWindow("Travel Menu")
local Level = Laz:NewWindow("Level Menu")

local Kill = Attack:NewSection("Murder Enemies")

local FT = Travel:NewSection("Fast Travel")

local LastNext = Level:NewSection("Change Levels")

Kill:CreateToggle("Murder The Fucker",function(v)
    getgenv().shitter = v
end)

FT:CreateButton("Travel Home",function()
    game:GetService("ReplicatedStorage").Packages["_Index"]["sleitnick_knit@1.4.7"].knit.Services.WeaponService.RE.TeleportToPlot:FireServer(game:GetService("Players").LocalPlayer)
end)


LastNext:CreateButton("Last Level",function()
    local saved = character.HumanoidRootPart.CFrame
    for _, x in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if x:IsA("ObjectValue") and x.Value == player then
            for _, x in pairs(x.Parent.Buttons:GetChildren()) do
                if x.Name == "LastLevel" then
                    character.HumanoidRootPart.CFrame = x.Touch.CFrame
                    wait(0.5)
                    character.HumanoidRootPart.CFrame = saved
                end
            end
        end
    end
end)

LastNext:CreateButton("Next Level",function()
    local saved = character.HumanoidRootPart.CFrame
    for _, x in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
        if x:IsA("ObjectValue") and x.Value == player then
            for _, x in pairs(x.Parent.Buttons:GetChildren()) do
                if x.Name == "NextLevel" then
                    character.HumanoidRootPart.CFrame = x.Touch.CFrame
                    wait(0.5)
                    character.HumanoidRootPart.CFrame = saved
                end
            end
        end
    end
end)

while true do
    task.wait(0.1)
    if getgenv().shitter == true then
        for _, x in pairs(game:GetService("Workspace").Plots:GetDescendants()) do
            if x:IsA("ObjectValue") and x.Value == player then
                for _, x in pairs(x.Parent.Enemy:GetChildren()) do
                    character.HumanoidRootPart.CFrame = x.CFrame + Vector3.new(0,5,0)
                    game:GetService("ReplicatedStorage").Packages["_Index"]["sleitnick_knit@1.4.7"].knit.Services.WeaponService.RE.Swing:FireServer(x)
                end
            end
        end
    end
end
