local path = {
    [1] = {
        Mob ="Bandit",
        Mobpos = CFrame.new(1049.87622, 45.2688599, 1180.65149, -0.642921448, 7.48719629e-08, -0.765932143, 1.2813743e-08, 1, 8.69969128e-08, 0.765932143, 4.61177159e-08, -0.642921448),
        Questpos = CFrame.new(1013.84064, 8.99998856, 1231.17041, -0.616182745, -5.59716973e-05, -0.787603259, 1.16545916e-05, 1, -8.0183825e-05, 0.787603259, -5.85870912e-05, -0.616182745),
        Quest="Help Raphtalia"
    },
    [10] = {
        Mob ="Desert Bandit",
        Mobpos = CFrame.new(-1484.30933, 41.8159981, 1075.04431, -0.767555654, 3.08206877e-10, 0.64098233, -1.795323e-08, 1, -2.19792486e-08, -0.64098233, -2.83780004e-08, -0.767555654),
        Questpos = CFrame.new(-1405.50439, 10.4348574, 1119.62207, -0.156919166, -6.69804168e-09, 0.987611473, -4.3805537e-09, 1, 6.08604633e-09, -0.987611473, -3.37126771e-09, -0.156919166),
        Quest="Help Noah"
    },
    [30] = {
        Mob ="Zou Inhabitant",
        Mobpos = CFrame.new(-4501.4731445312, 29.592468261719, -2588.15234375),
        Questpos = CFrame.new(-4453.5249, 6.99241638, -2530.28125, 0.625322223, -7.77490143e-08, 0.780366778, 8.12765819e-08, 1, 3.45029818e-08, -0.780366778, 4.1850079e-08, 0.625322223),
        Quest="Help Zen"
    },
    [55] = {
        Mob ="Monkey",
        Mobpos = CFrame.new(-6649.3608398438, 34.919410705566, -10031.319335938),
        Questpos = CFrame.new(-6552.42627, 42.1655731, -9922.30957, -0.893526196, 0, 0.449011147, 0, 1, 0, -0.449011147, 0, -0.893526196),
        Quest="Help gonny"
    },
    -- [90] = {
    --     Mob ="Saw Shark Pirate",
    --     Mobpos = CFrame.new(339.469666, 29.1108437, -13180.877, -0.613318145, 8.1514413e-09, 0.78983593, 3.33472805e-08, 1, 1.55741873e-08, -0.78983593, 3.58908139e-08, -0.613318145),
    --     Questpos = CFrame.new(348.942413, 12.2988625, -13286.999, -0.587823987, -3.04750927e-08, 0.808988869, 1.39299647e-08, 1, 4.77923265e-08, -0.808988869, 3.93626607e-08, -0.587823987),
    --     Quest="Help Waby"
    -- },
    [160] = {
        Mob ="Gravito's Undermen",
        Mobpos = CFrame.new(2610.0737304688, 86.086631774902, -15617.121093755),
        Questpos = CFrame.new(2508.7863769531, 41.468124389648, -15542.967773438),
        Quest="Help Miska"
    },
    [190] = {
        Mob ="Fishman Karate User",
        Mobpos = CFrame.new(7824.5166, -2138.18994, -17138.4766, 0.916648865, 0, 0.399693429, 0, 1, 0, -0.399693429, 0, 0.916648865),
        Questpos = CFrame.new(7730.92773, -2175.83203, -17222.5781, 0.0217917003, -7.93145247e-08, 0.999762535, -3.60022554e-08, 1, 8.01180988e-08, -0.999762535, -3.77396141e-08, 0.0217917003),
        Quest="Help becky"
    }
}
local QuestPath = {
    [1] = {
        Mob ="Gravito's Undermen",
        Mobpos = CFrame.new(2610.0737304688, 86.086631774902, -15617.121093755),
        Questpos = CFrame.new(2508.7863769531, 41.468124389648, -15542.967773438),
        Quest="Help Miska",
        LevelRequest = 160,
        Spawn=CFrame.new(2586.60132, 7.64981413, -15365.8057, 0.998434007, -2.84509305e-08, -0.0559424609, 2.22223004e-08, 1, -1.11962002e-07, 0.0559424609, 1.10543496e-07, 0.998434007),
        Island="Gravito's Fort"
    },
    [190] = {
        Mob ="Fishman Karate User",
        Mobpos = CFrame.new(7824.5166, -2138.18994, -17138.4766, 0.916648865, 0, 0.399693429, 0, 1, 0, -0.399693429, 0, 0.916648865),
        Questpos = CFrame.new(7730.92773, -2175.83203, -17222.5781, 0.0217917003, -7.93145247e-08, 0.999762535, -3.60022554e-08, 1, 8.01180988e-08, -0.999762535, -3.77396141e-08, 0.0217917003),
        Quest="Help becky",
        LevelRequest = 190
    }
}


local data = game.ReplicatedStorage["Stats"..game.Players.LocalPlayer.Name]
function CheckQuest(a,b)
    local index = math.huge
    local questchecker
    local level = data.Stats.Level.Value
    
        for i, v in pairs(QuestPath) do
            if (level- i) >= 0 then
                if (level - i) < math.abs(level - index) then
                    index = i
                end
            end
        end
     return QuestPath[index]
end


local waterwalker = false
local waterwalker2=false
local NoDame = false
local nodrown=false
local nodrown2=false
local STOP = false
local plr = game.Players.LocalPlayer
local part0 = Instance.new("Part",workspace)
local t = Instance.new("Part",workspace)
t.Transparency=1
t.Anchored=true
t.Size=Vector3.new(2000,5,2000)
-- = game:GetService("ReplicatedStorage").Util.WaterLogia["Magu-Magu"].ball:Clone()
t.Parent = part0
local speaker=game.Players.LocalPlayer
local noclip = false
local OldEvent
OldEvent = hookfunction(Instance.new("RemoteEvent").FireServer, function(Self, ...)
    if tostring(Self)=="swim" and NoDame then return nil end
    return OldEvent(Self, ...)

end)
local function NoclipLoop()
    if speaker.Character ~= nil and noclip then
        for _, child in pairs(speaker.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    end
end
Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
game:GetService('RunService').Stepped:Connect(function() 
    if waterwalker or waterwalker2 then
    t.CFrame=CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,-5.8,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
    else
        t.CFrame = CFrame.new(0,-100000,0)
    end
    pcall(function() 
        if nodrown or nodrown2 then 
            plr.Character.HumanoidRootPart.SwimPosition.Position = Vector3.new(0, -2.71834, 0)
        end
    end)
end)
local ignored = {game.Players.LocalPlayer.Character,game:GetService("Workspace").Effects}
local vt = 100
function RayCast2(a, b, c)
    local raycastParameters = RaycastParams.new()
    raycastParameters.FilterDescendantsInstances = ignored
    raycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParameters.IgnoreWater = false
    local rels = workspace:Raycast(a, b, raycastParameters)
    return rels
end
local plr = game:service "Players".LocalPlayer
local tween_s = game:service "TweenService"

function tpT(t, k, cur)
    
    local info = TweenInfo.new((plr.Character.HumanoidRootPart.Position-t.p).magnitude/vt, Enum.EasingStyle.Linear)
    -- print(t,k)
    if k == nil then
        k = 1
    end
    local plr = game:service "Players".LocalPlayer
    local tween_s = game:service "TweenService"
    local tic_k = tick()
    local cframe = t

    local tween = tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = cframe})
    local done = false
    tween.Completed:Connect(
        function()
            done = true
        end
    )
    tween:Play()
    while (done == false) do
        if STOP then tween:Pause() STOP=false return end
        wait()
        local hp = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local p1 = Vector3.new(t.X, 0, t.Z)
        local p2 = Vector3.new(hp.X, 0, hp.Z)
        if (p1 - p2).magnitude < 10 then
            tween:Pause()
            local info = TweenInfo.new(1, Enum.EasingStyle.Linear)

            local tween = tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = cur})
            tween:Play()
            tween.Completed:Wait()
            return
        end

        
      
       if (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial == Enum.Material.Air) then 
        tween:Pause()

        local info = TweenInfo.new(10000/50, Enum.EasingStyle.Linear)

        local tween = tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = plr.Character.HumanoidRootPart.CFrame+Vector3.new(0,-10000,0)})
        tween:Play()
        repeat wait() until (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air)
        tween:Pause()

       -- repeat wait() until (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air)

        end
        return tpT(CFrame.new(t.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, t.Z), k, cur)


    end
end
-- function Tp(pos) 
--     while wait(.5) do 
--         game.Players.LocalPlayer.Character.Humanoid:MoveTo(pos)
--         local humpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
--         local magnitude =math.sqrt((humpos.X-pos.X)^2 + (humpos.Z-pos.Z)^2)
--         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=150

--         if magnitude<5 then 
--             game.Players.LocalPlayer.Character.Humanoid:Move(Vector3.new(0,0,0))
--             tpT(CFrame.new(pos),60)
--             break
--         end
--     end
--     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=16
-- end
function GetQuest(quest) 
repeat wait()        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, game)
until game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT")
    repeat wait()
        pcall(function() 
            for k,v in pairs(getconnections( game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT").Frame.go.MouseButton1Click)) do 
                v:Fire()
            end
        end)
       
    until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT")
  --  game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"takequest",quest})
end
function UpPoint() 
    -- Script generated by TurtleSpy, made by Intrer#0421
    game:GetService("ReplicatedStorage").Events.stats:FireServer("GunMastery",nil,1)
end
-- Script generated by TurtleSpy, made by Intrer#0421

--game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"takequest","Help becky"})

local fisspawn = Vector3.new( 7975.7153320313, -2152.83203125, -17078.828125)
local FarmPos = CFrame.new(7488.34082, -2148.83179, -17295.6797, -0.0148289539, 3.28105827e-08, -0.999890029, 1.15261685e-08, 1, 3.26432534e-08, 0.999890029, -1.10408358e-08, -0.0148289539)
local QuestPos = CFrame.new(7732.57764, -2175.8313, -17223.1543, 0.17765291, -0.000231144528, 0.98409313, -1.46613202e-05, 1, 0.000237527449, -0.98409313, -5.66255367e-05, 0.17765291) 
local Mob = "Fishman Karate User"
--game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=100
--Tp(Vector3.new(2904.113, 25, -994.2))
local islandpos = {
    ["Beginner"] = {
        pos = Vector3.new(963.68322753906, 6.999988079071, 930.81439208984),
        cframe = CFrame.new(963.68322753906, 6.999988079071, 930.81439208984),
    },
    ["Sandora"] = {
        pos = Vector3.new(-1183.6104736328, 3.999988079071, 1160.6843261719),
        cframe = CFrame.new(-1183.6104736328, 3.999988079071, 1160.6843261719),
    },
    ["Shell Town"] = {
        pos = Vector3.new(-522.48345947266, 1.330083489418, -4415.0463867188),
        cframe = CFrame.new(-522.48345947266, 1.330083489418, -4415.0463867188),
    },
    ["Roca"] = {
        pos = Vector3.new(5361.7734375, 4.385636806488, -4922.6181640625),
        cframe = CFrame.new(5361.7734375, 4.385636806488, -4922.6181640625),
    },
    ["Orange Town"] = {
        pos = Vector3.new(-6946.1884765625, 6.7007327079773, -5304.4321289063),
        cframe = CFrame.new(-6946.1884765625, 6.7007327079773, -5304.4321289063),
    },
    ["Zou Island"] = {
        pos = Vector3.new(-4305.59375, 7.2924075126648, -2547.3698730469),
        cframe = CFrame.new(-4305.59375, 7.2924075126648, -2547.3698730469),
    },
    ["Colloseum"] = {
        pos = Vector3.new(-2041.0588378906, 6.8539614677429, -7575.888671875),
        cframe = CFrame.new(-2041.0588378906, 6.8539614677429, -7575.888671875),
    },
    ["Fort F1"] = {
        pos = Vector3.new(2830.8464355469, 6.4515147209167, -990.10711669922),
        cframe = CFrame.new(2830.8464355469, 6.4515147209167, -990.10711669922),
    },
    ["Fort C1"] = {
        pos=Vector3.new(-9910.03125, 66.870376586914, -14847.78125),
cframe=CFrame.new(-9910.03125, 66.870376586914, -14847.78125)
    },
    ["Gravito Fort"] = {
        pos = Vector3.new(2463.2507324219, 3.693286895752, -15327.31640625),
        cframe = CFrame.new(2463.2507324219, 3.693286895752, -15327.31640625),
    },
    ["Fishman Island"] = {
        pos = Vector3.new(5638.99, -90, -16611.217),
        cframe = CFrame.new(5638.99, -90, -16611.217),
    },
    ["Fishman Cave"] = {
        pos = Vector3.new(5682.5888671875, 4.0750117301941, -16458.37890625),
        cframe = Vector3.new(5682.5888671875, 4.0750117301941, -16458.37890625),
    },
    ["Restaurant"] = {
        pos = Vector3.new(-3909.71289, 49.753788, -5569.91211),
        cframe = CFrame.new(-3909.71289, 49.753788, -5569.91211, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    },
    ["Arlong"] = {
        pos = Vector3.new(805.336426, 15.4988766, -13050.21, -0.584341884, 0, -0.811507583, -0, 1, 0, 0.811507583, 0, -0.584341884),
        cframe = CFrame.new(805.336426, 15.4988766, -13050.21),
    },
    ["Coco"] = {
        pos = Vector3.new(-4023.6276855469, 7.5435557365417, -15541.575195313),
        cframe = CFrame.new(-4023.6276855469, 7.5435557365417, -15541.575195313),
    }
}
function IsFishMan(pos) 
    return pos.Y<-2000
end
function GetListIsland() 
    local tb = {}
    for k,v in pairs(islandpos) do table.insert(tb,k) end
    return tb
end
function TpTween(pos)
    noclip=true
    nodrown2=true
    waterwalker2=true
    tpT(pos,nil,pos)
    waterwalker2=false
    nodrown2=false
    noclip=false
end
local FishUp = CFrame.new(8580.072265625, -2138.8325195313, -17087.634765625)

function Tp(pos) 
    if IsFishMan(pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then 
        TpTween(pos)
    end
    if not IsFishMan(pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then 
        TpTween(FishUp)
        wait(1)
        TpTween(pos)
    end
    if IsFishMan(pos) and not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then 
        TpTween(CFrame.new(5638.99, -90, -16611.217))
        wait(1)
        TpTween(pos)
    end
    if not IsFishMan(pos) and not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then 
        TpTween(pos)
    end
end

local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
local win = DiscordLib:Window("CFA Hub - Grand Piece Online")
local serv = win:Server("Farming", "")
local toolmob = "Bandit"
local AutoBuso = false
local SFarm = false
local Detect=false
local KillAura = false
local bringdf=false
local btns = serv:Channel("Farming")
local Farm=false
local AutoPoint = false



local drop2 =
    btns:Toggle(
    "Level Farm",
    false,
    function(bool)
       -- print("Cac")
      -- print(bool)
       Farm=bool
      --  tpT(CFrame.new(islandpos[toolmob].pos),nil,CFrame.new(islandpos[toolmob].pos))
       --- noclip=false
    end
)
local drop2 =
    btns:Toggle(
    "Auto Up Gun Point",
    false,
    function(bool)
       -- print("Cac")
      -- print(bool)
       AutoPoint=bool
      --  tpT(CFrame.new(islandpos[toolmob].pos),nil,CFrame.new(islandpos[toolmob].pos))
       --- noclip=false
    end
)

-- local drop2 =
--     btns:Toggle(
--     "Ship Farm",
--     false,
--     function(bool)
--        -- print("Cac")
--       -- print(bool)
--        SFarm=bool
--       --  tpT(CFrame.new(islandpos[toolmob].pos),nil,CFrame.new(islandpos[toolmob].pos))
--        --- noclip=false
--     end
-- )

local btns = serv:Channel("Extras")
local drop2 =
    btns:Dropdown(
    "Sellect Island",
    GetListIsland(),
    function(bool)
        toolmob = bool
    end
)
local drop2 =
    btns:Button(
    "Tp",
    function(bool)
       -- print("Cac")
       --noclip=true
       

        Tp(CFrame.new(islandpos[toolmob].pos))
      --  noclip=false
    end
)
local drop2 =
    btns:Button(
    "Stop Tween",
    function(bool)
        STOP=true
      --  noclip=false
    end
)
local drop2 =
    btns:Toggle(
    "No Drown",
    false,
    function(bool)
       -- print("Cac")
      -- print(bool)
       nodrown=bool
      --  tpT(CFrame.new(islandpos[toolmob].pos),nil,CFrame.new(islandpos[toolmob].pos))
       --- noclip=false
    end
)
local drop2 =
    btns:Toggle(
    "Water No Damage",
    false,
    function(bool)
       -- print("Cac")
      -- print(bool)
       NoDame=bool
      --  tpT(CFrame.new(islandpos[toolmob].pos),nil,CFrame.new(islandpos[toolmob].pos))
       --- noclip=false
    end
)

local drop2 =
    btns:Toggle(
    "Water Walker",
    false,
    function(bool)
       -- print("Cac")
       waterwalker=bool
    end
)
spawn(function() 
    while wait(.5) do
        if AutoPoint and data.Stats.SkillPoints.Value>0 then 
            UpPoint()
        end 
    end
end)

local valid = function() 
    if data.Stats.Level.Value<190 then 
        return false
    end
    if not game.Players.LocalPlayer.QuestCD.Value and game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible==false then 
        return true
    end
end
local valid2 = function() 
    if data.Stats.Level.Value<190 then 
        return true
    end
    if  game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible==true then 
        return true
    end
end
local shooting = false
local shootpos = CFrame.new(0,0,0)
local cf = getrenv()._G.MouseCF
getrenv()._G.MouseCF=nil
setmetatable(getrenv()._G,{
    __index=function(a,b) 
        if b=="MouseCF" then 
            if shooting then 
                return shootpos
            else
                return cf
            end
        end
        return rawget(a,b)    
    end,
    __newindex=function(a,b,c) 
       if b=="MouseCF" then cf = c return end
        return rawset(a,b,c)    
    end
})
function Shoot(pos) 
shooting=true
shootpos=pos
game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0, 0, true, game, 1)
game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0, 0, false, game, 1)
wait(.5)
shooting=false
end
local olddd

local ShipFarm = CFrame.new(5721.49463, -2.78487206, -16249.9336, -0.879883647, -2.75375555e-07, 0.475189209, 1.9259998e-08, 1, 6.15169938e-07, -0.475189209, 5.50430116e-07, -0.879883647)
spawn(function() 
    while wait() do 
        if SFarm then 
            if not game.Workspace.Ships:FindFirstChild(game.Players.LocalPlayer.Name.."Ship") then 
                Tp(ShipFarm)
                game:GetService("ReplicatedStorage").Events.ShipEvents.Spawn:InvokeServer("true")
                
            end
        end
    end
end)
spawn(
    function()
        while wait() do
            if Farm then
                local questdata = CheckQuest()
                if data.Stats.SpawnPoint.Value ~= questdata.Island and questdata.Spawn then
                    Tp(questdata.Spawn)
                    GetQuest(questdata.Quest)
                end

                if game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true then
                    if olddd and olddd ~= questdata then
                        -- Script generated by TurtleSpy, made by Intrer#0421

                        game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"quit"})
                    end
                end
                if
                    game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == false and
                        not game.Players.LocalPlayer.QuestCD.Value and
                        data.Stats.Level.Value >= questdata.LevelRequest
                 then
                    Tp(questdata.Questpos)
                    wait(1)
                    GetQuest(questdata.Quest)
                end
                olddd = questdata

                Tp(questdata.Mobpos)

                for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if
                        (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                            game.Players.LocalPlayer.QuestCD.Value or
                            data.Stats.Level.Value <= questdata.LevelRequest) and
                            v.Name == questdata.Mob and
                            Farm and
                            v:FindFirstChild("HumanoidRootPart") and
                            v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("Head") and
                            v.Humanoid.Health > 0
                     then
                        Tp(questdata.Mobpos)

                        repeat
                            wait()
                            -- Tp(questdata.Mobpos)
                            if
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                             then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                                    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle")
                                )
                            end
                            Shoot(v.HumanoidRootPart.CFrame)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.R, false, game)
                            --wait()
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.R, false, game)
                        until -- local ohString1 = "fire"
                        -- local ohTable2 = {
                        --     ["Start"] = v.HumanoidRootPart.CFrame,
                        --     ["Gun"] = "Rifle",
                        --     ["joe"] = "true",
                        --     ["Position"] = v.Head.Position
                        -- }

                        -- game:GetService("ReplicatedStorage").Events.CIcklcon:FireServer(ohString1, ohTable2)
                        -- -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
                        -- local ohString1 = "reload"
                        -- local ohTable2 = {
                        --     ["Gun"] = "Rifle"
                        -- }

                        -- game:GetService("ReplicatedStorage").Events.CIcklcon.gunFunctions:InvokeServer(ohString1, ohTable2)

                        not Farm or
                            not (v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") and
                                v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0)
                    end
                end
            --repeat wait() until not Farm
            end
        end
    end
)
