local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Replicated = game:GetService("ReplicatedStorage")
local nes = 0
local toggle = false
function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

local Main = Laz:NewWindow("Main Menu")
local Misc = Laz:NewWindow("Misc Menu")
local Teleport = Laz:NewWindow("Teleport Menu")

local Permissions = Main:NewSection("Permissions")
local Janitor = Main:NewSection("Trash")
local Editing = Misc:NewSection("Park Info Editing")
local TP = Teleport:NewSection("Players")

function Clean()
    notify("Cleaning", "Cleaning Park")
    for _, x in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
        if x.Name == "OwnerName" and x.Value == tostring(game:GetService("Players").LocalPlayer) then
            local b = tostring(x.Parent)
            b = tonumber(b)
            game:GetService("ReplicatedStorage").Communication.SReplicateCleaningState:FireServer(b, true)
            for _, c in pairs(x.Parent.Trash:GetChildren()) do
            nes = nes + 1
            game:GetService("ReplicatedStorage").Communication.SSetCleaningState:InvokeServer(c, 1)     
            end
        end
    end
    game:GetService("ReplicatedStorage").Communication.SReplicateCleaningState:FireServer(0, false)
    notify("Cleaning", "Cleaned up ".. nes .. " trash piles")
    nes = 0    
end

Janitor:CreateButton("Clean My Park Trash",function()
    Clean()
end)

Editing:CreateTextbox("Park Name",function(v)
    local d = v
    game:GetService("ReplicatedStorage").Communication.SEditTycoonParam:FireServer("name", d)
    notify("Name", "Changed to: "..v)
end)

Editing:CreateTextbox("Park Price (Number)",function(v)
    local d = v
    game:GetService("ReplicatedStorage").Communication.SEditTycoonParam:FireServer("cost", tonumber(v))
    notify("Name", "Changed to: "..v)
end)

Editing:CreateButton("Park State Toggle",function()
    if toggle == false then
        toggle = true
        game:GetService("ReplicatedStorage").Communication.SEditTycoonParam:FireServer("state", 1)
        notify("Name", "Park is: Open") 
        else
        toggle = false
        game:GetService("ReplicatedStorage").Communication.SEditTycoonParam:FireServer("state", 0)
        notify("Name", "Park is: Closed") 
    end
end)

for _, x in pairs(game:GetService("Players"):GetChildren()) do
    if x ~= player then
        TP:CreateButton("Teleport to "..x.Name,function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame 
        end)
    end
end
