local notifications = loadstring(game:HttpGet("https://raw.githubusercontent.com/Valenity/NotificationUI/main/notif"))()
local Laz = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Replicated = game:GetService("ReplicatedStorage")
local player = game:GetService("Players").LocalPlayer
local HumanoidRootPart = player.Character.HumanoidRootPart
local orbs = 0
local currentamount = 0
local plr = nil
local FadeScreen = require(Replicated.GTycoonClient.Modules.FadeScreen)
local SharedUtility = require(Replicated.Modules.SharedUtility)


-- Menus
local Main = Laz:NewWindow("Main Menu")
local Slime = Laz:NewWindow("Slime Menu")
local Traveling = Laz:NewWindow("Travel Menu")
local Shop = Laz:NewWindow("Shop Menu")
local Ads = Laz:NewWindow("Misc Menu")

-- Options
local Grabbing = Main:NewSection("Orb Options")
local Rate = Shop:NewSection("Rate Options")
local Slimes = Slime:NewSection("Purchase Options")
local Travel = Traveling:NewSection("Travel Options")
local TP = Traveling:NewSection("Teleporting Options")
local Merging = Slime:NewSection("Merge Options")
local Bullshit = Ads:NewSection("Ad Options")
local MoreBullshit = Ads:NewSection("Purchase Options")

--Functions


function notify(a,b)
    notifications:message {
        Title = "Paradise Hub | <font color='rgb(0, 255, 255)'>"..a.."</font>",
        Description = b
    }
end

function Activate(acv)
    plr = SharedUtility.GetPlayerTycoon(game.Players.LocalPlayer)
    firetouchinterest(HumanoidRootPart,plr.Buttons[acv].Button,0)
    wait(0.1)
    firetouchinterest(HumanoidRootPart,plr.Buttons[acv].Button,1)
end



function Grab()
    notify("Drops", "Grabbing Drops")
    for _, x in pairs(game:GetService("Workspace").Drops:GetChildren()) do
        orbs = orbs + 1
        x.CFrame = HumanoidRootPart.CFrame
        task.wait(0.001)
    end
    notify("Drops", "Grabbed ".. nes .. " Drops")
    orbs = 0    
end


Grabbing:CreateButton("Grab all Drops",function()
    Grab()
end)

Grabbing:CreateButton("Deposit all Drops",function()
    notify("Drops", "Depositing Drops")
    Activate("DepositButton")
end)

Merging:CreateButton("Merge Slime(s)",function()
    Activate("MergeButton")
    notify("Slimes", "Merged Slime(s)")
end)

Slimes:CreateTextbox("Slime Amount",function(t)
    currentamount = t
    notify("Slimes", currentamount.." Slime(s) Selected!")
end)

Slimes:CreateButton("Purchase Slime(s)",function()
    game:GetService("ReplicatedStorage").GTycoonClient.Remotes.BuyDropper:FireServer(tonumber(currentamount))
    notify("Slimes", "Purchasing "..currentamount.. " Slime(s)!")
end)

Bullshit:CreateButton("Remove Ads",function()
    game:GetService("Workspace").ADS:Destroy()
    game:GetService("Workspace").BloxbizAdBoxUnit:Destroy()
    game:GetService("ReplicatedStorage").BloxbizRemotes:Destroy()
    game:GetService("ReplicatedStorage").Bloxbiz3DAdAssets:Destroy()
    game:GetService("ReplicatedStorage").BloxbizSDK:Destroy()
    notify("Ads", "Removed Bullshit Ads!")
end)

MoreBullshit:CreateButton("Remove R$ Items",function()
    plr = SharedUtility.GetPlayerTycoon(game.Players.LocalPlayer)
    for _, x in pairs(plr.Static.Part.SurfaceGui:GetChildren()) do
        if x.Text == ":)" then
            x.Text = ":("
        else
            x.Text = "Valenity Was Here!"
        end
    end
    plr.Buttons.ProductButton:Destroy()
    plr.Buttons.TenDroppers:Destroy()
    plr.Buttons.ObbyBoost:Destroy()
    plr.Buttons.QuickSell:Destroy()
    plr.Buttons.FiftySlimes:Destroy()
    plr.Buttons.DoubleCash:Destroy()
    plr.Buttons.DoubleDrops:Destroy()
    plr.Buttons.AutoCollect:Destroy()
    plr.Buttons.AutoDeposit:Destroy()
    notify("Ads", "Removed R$ Items!")
end)

Travel:CreateButton("My Plot",function()
    plr = SharedUtility.GetPlayerTycoon(game.Players.LocalPlayer)
    FadeScreen.Fade(Color3.fromRGB(70, 70, 70), 1, 1, true)
    player.Character:SetPrimaryPartCFrame(plr.Static.PlotTeleport.CFrame)
end)

Travel:CreateButton("Wizard Obby",function()
    Activate("ObbyPortal")
end)

Travel:CreateButton("Dungeon Realms",function()
    Activate("DungeonPortal")
end)

Travel:CreateButton("Hall of Fame",function()
    Activate("HallOfFamePortal")
end)

Rate:CreateButton("Increase Rate",function()
    Activate("BuySpeed")
end)

for _, x in pairs(game:GetService("Players"):GetChildren()) do
    if x ~= player then
        TP:CreateButton("Teleport to "..x.Name,function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = x.Character.HumanoidRootPart.CFrame 
        end)
    end
end
