local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SpaceHub - Game Name: "..GameName, "Ocean")
if game.PlaceId == 155615604 then
     -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
    MainSection:NewButton("Refresh Player", "Refreshes you", function()
        workspace.Remote.loadchar:InvokeServer(game:GetService("Players").LocalPlayer.Name)
    end)

    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)

    MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)
    
MainSection:NewDropdown("Team", "Switch Teams", {"Police", "Prisoner", "Neutral", "Criminal"}, function(v)
if v == "Police" then
    workspace.Remote.TeamEvent:FireServer("Bright blue")
elseif v == "Prisoner" then
    workspace.Remote.TeamEvent:FireServer("Bright orange")
elseif v == "Neutral" then
    workspace.Remote.TeamEvent:FireServer("Medium stone grey")
elseif v == "Criminal" then
-- Script generated by SimpleSpy - credits to exx#9394

local args = {
    [1] = game:GetService("Players").LocalPlayer,
    [2] = "Really red"
}

workspace.Remote.loadchar:InvokeServer(unpack(args))

end
end)


    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
elseif game.PlaceId == 3956818381 then
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)

    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)

    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

elseif    game.PlaceId == 734159876 then
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    local PB = Window:NewTab("PepsiByte")
    local PBPlayerSection = PB:NewSection("Load")

    PBPlayerSection:NewButton("Execute", "Executes PepsiByte", function()
        loadstring(game:GetObjects("rbxassetid://3623753581")[1].Source)()
    end)
elseif  game.PlaceId == 5897938254 then
    local Chat = Window:NewTab("Chat")
    local playername = "None"
    local ChatSection = Chat:NewSection("Chat as player on radio")
local newList = {}
for i,v in pairs(game.Players:GetPlayers())do
    if v ~= game.Players.LocalPlayer then
        table.insert(newList,v.Name)
    end
 end
      local dropdown = ChatSection:NewDropdown("Player Selection","Select Player", newList, function(selection)
        playername = selection
      end)
      game.Players.PlayerAdded:Connect(function(player)
        local name = player.Name
        table.insert(newList,name)
        dropdown:Refresh(newList)
     end)
     
     game.Players.PlayerRemoving:Connect(function(player)
        local name = player.Name
        for i,v in pairs(newList)do
            if v == name then  
                table.remove(newList,i)
            end
        end
        dropdown:Refresh(newList)
     end)
      ChatSection:NewButton("refresh players", "refresh players daddy", function()
        dropdown:Refresh(newList) -- we have python at school and ppl learning functions and shit and someone made some type of calculator and its erroring cause of a syntax thing and i said its something with the grammar of the code and he though it was that the code got corrupted
      end)
    ChatSection:NewTextBox("Message", "Message to send as player PRESS ENTER ONCE MESSAGE IS PUT IN", function(txt)
        local args = {
            [1] = "General",
            [2] = txt,
            [3] = game:GetService("Players"):WaitForChild(playername)
        }
        game:GetService("ReplicatedStorage").Events.Functions.Radio.SendMessage:InvokeServer(unpack(args))
    end)    
    ChatSection:NewButton("Chernobyl The Selected Person", "Bomb radio with the hub with the specific person", function()
        while true do
        local messages = {
            "YOKES HUB ON TOP! .gg/T7CpxxGbPH",
            "YOKES IS THE BEST! .gg/T7CpxxGbPH",
            ".gg/yokeshub",
            "BOMBED BY YOKES HUB .gg/T7CpxxGbPH"
        }
        local args = {
            [1] = "General",
            [2] = messages[math.random(1, #messages)],
            [3] = game:GetService("Players"):WaitForChild(playername)
        }
        game:GetService("ReplicatedStorage").Events.Functions.Radio.SendMessage:InvokeServer(unpack(args))
    end
    end)
    ChatSection:NewButton("Chernobyl The Radio", "Bomb radio with the hub", function()
        while true do
        local messages = {
            "YOKES HUB ON TOP! .gg/T7CpxxGbPH",
            "YOKES IS THE BEST! .gg/T7CpxxGbPH",
            ".gg/yokeshub",
            "BOMBED BY YOKES HUB .gg/T7CpxxGbPH"
        }
        local args = {
            [1] = "General",
            [2] = messages[math.random(1, #messages)],
            [3] = game:GetService("Players"):WaitForChild(newList[math.random(1, #newList)])
        }
        game:GetService("ReplicatedStorage").Events.Functions.Radio.SendMessage:InvokeServer(unpack(args))
    end
    end)
else
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
end
