local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Replicated = game:GetService("ReplicatedStorage")
local Code = Replicated:WaitForChild("Events"):WaitForChild("Functions"):WaitForChild("Code")


local Main = Laz:NewWindow("Main Menu")
local Misc = Laz:NewWindow("Misc Menu")

local Codes = Misc:NewSection("Codes")
local Package = Misc:NewSection("Package")
local Click = Main:NewSection("Lemonade Production")

Codes:CreateButton("Redeem All Codes",function()
    for _, x in pairs(require(Replicated.Codes)) do
        Code:InvokeServer(_)
        notifications:message {
            Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>Codes</font>",
            Description = "Redeemed code for $"..x
        }
        wait(1)
    end
end)

Package:CreateButton("Remove Package",function()
    for _, x in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
        if x.Name == "Owner" and x.Value == game:GetService("Players").LocalPlayer then
            game:GetService("Workspace").Tycoons[tostring(x.Parent)].Core.Package:Destroy()
        end
    end
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>Package</font>",
        Description = "Package Removed"
    }
end)

Click:CreateToggle(
    "Harvest Trees",
    function(value)
        if value == true then
            getgenv().Test = true
            value = true
        else
            getgenv().Test = false
            value = false
        end
    end
)

Click:CreateToggle(
    "Make Lemonade",
    function(value)
        if value == true then
            getgenv().Test2 = true
            value = true
        else
            getgenv().Test2 = false
            value = false
        end
    end
)

while true do
task.wait(0.3)
    if getgenv().Test == true then
        for _, x in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
            if x.Name == "Owner" and x.Value == game:GetService("Players").LocalPlayer then
                for _, c in pairs(x.Parent.Purchases:GetChildren()) do
                local str = tostring(c)
                    if string.find(str, "Tree") then
                        local cew = game:GetService("Workspace").Tycoons[tostring(x.Parent)].Purchases[str]
                        game:GetService("ReplicatedStorage").Events.Remotes.Harvest:FireServer(cew)
                    end
                end
            end
        end
    end
    
    if getgenv().Test2 == true then
        for _, x in pairs(game:GetService("Workspace").Tycoons:GetDescendants()) do
            if x.Name == "Owner" and x.Value == game:GetService("Players").LocalPlayer then
                fireproximityprompt(game:GetService("Workspace").Tycoons[tostring(x.Parent)].Core.JuicerStand.LemonadeTank.Glass.Make,1000)
            end
        end
    end
end
