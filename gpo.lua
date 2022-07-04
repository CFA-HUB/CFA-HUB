local plr = game.Players.LocalPlayer
local Settings = {
    AutoStat={ Strength=false,
    Stamina=false,
    Defense=false,
    GunMastery=false,
    SwordMastery=false}
}
local Temp = {
    Nodrown={},
    Noclip={},
    DashNoStam={},
    NoFallDame={}
}
local old = getrenv()._G.hitbox.start
getrenv()._G.hitbox.start=function(...) 
       local arg = {...}
    arg[3] = Vector3.new(30,30,30)
    return old(unpack(arg)) 
end
local data = game.ReplicatedStorage["Stats" .. game.Players.LocalPlayer.Name]
local path = {
    [1] = {
        Mob = "Fishman Karate User",
        Mobpos = CFrame.new(
            7670.65137, -2189.93994, -17322.8379, 1, 0, 0, 0, 1, 0, 0, 0, 1
        ),
        Questpos = CFrame.new(
            7730.92773,
            -2175.83203,
            -17222.5781,
            0.0217917003,
            -7.93145247e-08,
            0.999762535,
            -3.60022554e-08,
            1,
            8.01180988e-08,
            -0.999762535,
            -3.77396141e-08,
            0.0217917003
        ),
        Quest = "Help becky",
        Spawn = CFrame.new(
            7976.84131,
            -2152.8313,
            -17073.9063,
            0.647454381,
            1.1295689e-07,
            0.762104213,
            -4.50578455e-08,
            1,
            -1.09937709e-07,
            -0.762104213,
            3.68408735e-08,
            0.647454381
        ),
        Island = "Fishman Island",
        LevelReq = 190,
        SwordY=-2189.94,
        BlackLegY=-2182.94,

        
    }
}
local RiflePath = {

    [1] = {
        Mob = "Fishman Karate User",
        Mobpos = CFrame.new(
            7824.5166,
            -2138.18994,
            -17138.4766,
            0.916648865,
            0,
            0.399693429,
            0,
            1,
            0,
            -0.399693429,
            0,
            0.916648865
        ),
        Questpos = CFrame.new(
            7730.92773,
            -2175.83203,
            -17222.5781,
            0.0217917003,
            -7.93145247e-08,
            0.999762535,
            -3.60022554e-08,
            1,
            8.01180988e-08,
            -0.999762535,
            -3.77396141e-08,
            0.0217917003
        ),
        Quest = "Help becky",
        LevelRequest = 190,
        Spawn = CFrame.new(
            7976.84131,
            -2152.8313,
            -17073.9063,
            0.647454381,
            1.1295689e-07,
            0.762104213,
            -4.50578455e-08,
            1,
            -1.09937709e-07,
            -0.762104213,
            3.68408735e-08,
            0.647454381
        ),
        Island = "Fishman Island"
    }
}


function CheckQuest(a, b,d)
    if d=="Buso" then return BusoFarm[1] end
    local index = math.huge
    local questchecker
    local level = data.Stats.Level.Value
    local path = path
    if a == "Rifle" then
        path = RiflePath
    end
    for i, v in pairs(path) do
        if (level - i) >= 0 then
            if (level - i) < math.abs(level - index) then
                index = i
            end
        end
    end
    return path[index]
end
function CheckEN(str) 
    local cac = Temp[str]
    for k,v in pairs(cac) do if v then return true end end return false
end
function SetEN(str,cac,rac) 
    Temp[str][cac]=rac
end
function IsFishMan(pos)
    return pos.Y < -2000
end
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
loadstring([[
		local old
		old = hookmetamethod(game, "__namecall", function(...)
			local Self = ...
			if CheckEN("NoFallDame")
			and tostring(Self) == "FallDmg" then
				return nil
			end
			if CheckEN("DashNoStam")
			and tostring(Self) == "takestam" then
				return nil
			end
			return old(...)
		end)
	]])()
game:GetService("RunService").Stepped:Connect(
    function()
        -- if Settings.WaterWalker and not (tweening or Settings.Farm or Settings.Dungeon) then
        --     t.CFrame =
        --         CFrame.new(
        --         game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
        --         -5.8,
        --         game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
        --     )
        -- else
        --     t.CFrame = CFrame.new(0, -100000, 0)
        -- end
        pcall(
            function()
                -- if CheckEN("Nodrown") then
                --     plr.Character.HumanoidRootPart.SwimPosition.Position = Vector3.new(0, -2.71834, 0)
                -- end
                if CheckEN("Noclip") then plr.Character.Humanoid:ChangeState(11)
                end
                if CheckEN("Nodrown") then 
                    plr.Character.HumanoidRootPart.SwimPosition.Position = Vector3.new(0, -2.71834, 0)
                end
            end
        )
    end
)
local vt = 120
function RayCast2(a, b, c)
    local ignored = {game.Players.LocalPlayer.Character, game:GetService("Workspace").Effects, part0}

    local raycastParameters = RaycastParams.new()
    raycastParameters.FilterDescendantsInstances = ignored
    raycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParameters.IgnoreWater = false
    local rels = workspace:Raycast(a, b, raycastParameters)
    return rels
end
function IsSea()
    local t = RayCast2(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, -500, 0))
    --print(t.Instance)
    if t == nil or t.Instance.Name == "InvisSandd" then
        return true
    end
    return false
end

local plr = game:service "Players".LocalPlayer
local tween_s = game:service "TweenService"
function Tween2(t,cb) 
    
    local plr = game:service "Players".LocalPlayer
    local tween_s = game:service "TweenService"
    local info =
        TweenInfo.new(
        (game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position - t.p).magnitude / vt,
        Enum.EasingStyle.Linear
    )
    local tic_k = tick()
    local cframe = t
    local tween, err =
        pcall(
        function()
            local tween =
                tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = cframe})
            local done = false
            tween.Completed:Connect(
                function()
                    done = true
                end
            )
            cb(function() done=true tween:Cancel() end)
            noclip = true
            tween:Play()
            while (done == false) do
                SetEN("Noclip","Tween",true)

                wait()
            end
            noclip = false
        end
    )
    if not tween then
        return err
    end
end

local Last
function tpT(t, k, cur)
    if Last then Last() Last=nil end
    if not cur then cur = t end

    local info = TweenInfo.new((plr.Character.HumanoidRootPart.Position - t.p).magnitude / vt, Enum.EasingStyle.Linear)
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
    local Stop = function() tween:Cancel() done=true end
    Last=Stop
    while (done == false) do
        SetEN("Noclip","Tween",true)

        if plr:FindFirstChild("DEATHGUI") then
            return
        end
        if plr.Character.Humanoid.Sit then plr.Character.Humanoid.Sit=false end
        wait()
        if sp and not part.Parent then return end
        local hp = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local p1 = Vector3.new(t.X, 0, t.Z)
        local p2 = Vector3.new(hp.X, 0, hp.Z)
        if (p1 - p2).magnitude < 50 and not sp then
            tween:Cancel()
            Tween2(cur,function(a) Stop=function() Stop() a() end end)
            return
        end
        local pos = -2.7848949432373
        if not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) and  IsSea() and math.abs(plr.Character.HumanoidRootPart.Position.Y - pos) > .1 then
            tween:Cancel()
            local cf = plr.Character.HumanoidRootPart.CFrame
            Tween2(CFrame.new(cf.X, pos, cf.Z),function(a) Stop=function() Stop() a() end end)
            return tpT(CFrame.new(t.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, t.Z), k, cur,sp,part)
        end
        


        --    if (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial == Enum.Material.Air) then
        --     tween:Pause()

        --     local info = TweenInfo.new(10000/30, Enum.EasingStyle.Linear)

        --     local tween = tween_s:Create(plr.Character:WaitForChild("HumanoidRootPart"), info, {CFrame = plr.Character.HumanoidRootPart.CFrame+Vector3.new(0,-10000,0)})
        --     tween:Play()
        --     repeat wait() until (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air)
        --     tween:Pause()

        --    -- repeat wait() until (game.Players.LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air)

        --     end
        -- return tpT(CFrame.new(t.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, t.Z), k, cur)
    end
end
function TpTween(cf)
    SetEN("Nodrown","Tween",true)
    SetEN("Noclip","Tween",true)
    tpT(cf)
    SetEN("Noclip","Tween",false)
    SetEN("Nodrown","Tween",false)

end
local FishUp = CFrame.new(8580.072265625, -2138.8325195313, -17087.634765625)

function Tp(pos,spt,par)
    if plr.Character:FindFirstChild("HumanoidRootPart") then
        if (plr.Character.HumanoidRootPart.Position - pos.p).magnitude < 25 then
            plr.Character.HumanoidRootPart.CFrame = pos
            return;
        end
    end
    if IsFishMan(pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
        TpTween(pos,sp,part)
        return
    end
    if not IsFishMan(pos) and IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
        TpTween(FishUp,sp,part)
        wait(1)
        if not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then 
            TpTween(pos,sp,part)
        end
       
    end
    if IsFishMan(pos) and not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then
        TpTween(CFrame.new(5638.99, -90, -16611.217),sp,part)
        wait(1)
        if IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position) then 
            TpTween(pos,sp,part)
        end
       -- TpTween(pos,sp,part)
    end
    if
        not IsFishMan(pos) and
            not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
     then
        TpTween(pos,sp,part)
    end
end
--tpT(CFrame.new(-1316.089, 15, 1129.95))

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("CFA Hub - Grand Piece Online",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
local tab = win:Tab("Farm")

tab:Toggle("Level Farm",false, function(t)
    Settings.Farm=t
    SetEN("Noclip","Farm",t)
    end)
    tab:Dropdown("Level Farm Method",{"Rifle","Sword"}, function(t)
        Settings.FarmMode=t
        end)
        local tab = win:Tab("Auto Stats")
        for k,v in pairs(Settings.AutoStat) do 
            tab:Toggle(k,v, function(t)
                Settings.AutoStat[k]=t
            
                end)
        end
        spawn(function() 
            while wait(.5) do 
                if Settings.AutoStat then
                    for k, v in pairs(Settings.AutoStat) do
                        if v and data.Stats.SkillPoints.Value > 0 then
                            game.ReplicatedStorage.Events.stats:FireServer(k, nil, 1)
                        end
                    end
                end
            end
        end)
        local tab = win:Tab("Misc")
        LocationsCoord = {
            ["Town of Beginnings"] = CFrame.new(965.146, 10, 1195.127);
            ["Marine Fort F-1"] = CFrame.new(2904.113, 25, -994.2);
            ["Sandora"] = CFrame.new(-1316.089, 15, 1129.95);
            ["Shell's Town"] = CFrame.new(-605.248, 15, -4430.41);
            ["Zou"] = CFrame.new(-4458.681, 10, -2502.741);
            ["Restaurant Baratie"] = CFrame.new(-3909.713, 55, -5569.912);
            ["Orange Town"] = CFrame.new(-6999.987, 10, -5345.705);
            ["Mysterious Cliff"] = CFrame.new(2180.005, 415, -8628.285);
            ["Roca Island"] = CFrame.new(5426.218, 20, -4918.854);
            ["Colosseum"] = CFrame.new(-2019.975, 10, -7661.091);
            ["Sphinx Island"] = CFrame.new(-6327.812, 45, -10129.278);
            ["Kori Island"] = CFrame.new(-6684.44, 10, 1828.623);
            ["Arlong Park"] = CFrame.new(652.855, 15, -13122.346);
            ["Land of the Sky"] = CFrame.new(9016.793, 1440, -10542.829);
            ["Knock-Up Stream Rock"] = CFrame.new(8116, 10, -9819);
            ["Gravito's Fort"] = CFrame.new(2611.159, 15, -15359.032);
            ["Fishman Cave"] = CFrame.new(5682.19, 5, -16458.479);
            ["Fishman Island"] = CFrame.new(8003.553, -2150, -17056.971);
            ["Marine Base G-1"] = CFrame.new(-9955.175, 70, -14910.613);
            ["Coco Island"] = CFrame.new(-4262.249, 10, -15531.864);
            ["Reverse Mountain"] = CFrame.new(-14338, 20, -9446);
            ["Shrine"] = CFrame.new(-12184.12890625, 3.2737002372742, -18545.69921875);
        }
        local rac = {}
        for k,v in pairs(LocationsCoord) do 
            table.insert(rac,k)
        end
        tab:Dropdown("Teleport",rac, function(rac)
            Tp(LocationsCoord[rac])
            end)
            
            tab:Toggle("Nodrown",false, function(t)
                Settings.Nodrown=t
                SetEN("Nodrown","Setting",t)
                end)
                tab:Toggle("No Fall Damage",false, function(t)
                    Settings.NoFallDame=t
                    SetEN("NoFallDame","Setting",t)
                    end)
                    tab:Toggle("Dash No Stamina",false, function(t)
                        Settings.NoFallDame=t
                        SetEN("DashNoStam","Setting",t)
                        end)
            function GetQuest(quest,rac)
                local t = tick()
                repeat
                    wait()
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, game)
                until game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") or tick() - t > 3
                if game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") and plr.Character:FindFirstChild("HumanoidRootPart") then
                    local cur = plr.Character.HumanoidRootPart.CFrame
                    
                    repeat
                        wait()
                        if plr.Character:FindFirstChild("HumanoidRootPart") and rac then 
                            plr.Character.HumanoidRootPart.CFrame= cur+Vector3.new(0,-13,0)
                        end
                        pcall(
                            function()
                                for k, v in pairs(
                                    getconnections(
                                        game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT").Frame.go.MouseButton1Click
                                    )
                                ) do
                                    v:Fire()
                                end
                            end
                        )
                    until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT")
                end
            
                --  game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"takequest",quest})
            end
            local g = {
                KeyCode = Enum.KeyCode.Unknown,
                UserInputState = Enum.UserInputState.Begin,
                UserInputType = Enum.UserInputType.MouseButton1
            }

            local shooting = false
local shootpos = CFrame.new(0, 0, 0)
local cf = getrenv()._G.MouseCF
getrenv()._G.MouseCF = nil
setmetatable(
    getrenv()._G,
    {
        __index = function(a, b)
            if b == "MouseCF" then
                if shooting then
                    return shootpos
                else
                    return cf
                end
            end
            return rawget(a, b)
        end,
        __newindex = function(a, b, c)
            if b == "MouseCF" then
                cf = c
                return
            end
            return rawset(a, b, c)
        end
    }
)
            local funcr
function GetReload()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "GunMain" and (getfenv(v).script.Parent) ~= nil then
            if tostring(debug.getconstant(v, 1)) == "Reloaded" then
                -- v(g,false)
                --  print(getfenv(v).script:GetFullName())
                return v
            end
        end
    end
end
local func
function GetClick(x,m)
    for i, v in ipairs(getgc()) do
        if tostring(getfenv(v).script) == x
        and (getfenv(v).script.Parent) ~= nil then
            if pcall(function() getconstant(v, m) end) == true then
                return v
            end
        end
    end
end
func=GetClick("MeleeScript",85)
function AttackInCooldown() 
    if not func or getfenv(func).script.Parent == nil then
        func=GetClick("MeleeScript",85)
    end
    return debug.getupvalue(func,11)>=4
end
function Click(type)
    getrenv().require=getgenv().require

    -- print(getfenv(func).script.Parent,getfenv(func).script,getfenv(func).script:GetFullName())
    spawn(function() 
        if not func or getfenv(func).script.Parent == nil then
            func=GetClick("MeleeScript",85)

        end
        if AttackInCooldown() then return end
        pcall(
            function()
                local t = tick()
                func(g, false)
                if tick() - t < 0.01 then
                    func = GetClick()
                    wait(.5)
                end
            end
        )
    end)
   
end
function GetClickGun()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "GunMain" and (getfenv(v).script.Parent) ~= nil then
            print(k,v,tostring(debug.getconstant(v, 1)))
            if tostring(debug.getconstant(v, 1)) == "script" then
                -- v(g,false)
                --  print(getfenv(v).script:GetFullName())
                
                return v
            end
        end
    end
end
local reloadfunc
function Reload() 
    if not reloadfunc or getfenv(reloadfunc).script.Parent == nil then
        reloadfunc = GetReload()
    end
    spawn(
        function()
            --local t=tick()
            reloadfunc()

            -- local g = {
            --     KeyCode = Enum.KeyCode.Unknown,
            --     UserInputState = Enum.UserInputState.End,
            --     UserInputType = Enum.UserInputType.MouseButton1
            -- }

            --   funcr(g, false)

            --if tick()-t < 0.1 then funcr=GetClickGun() wait(.5) end
        end
    )
end
function ClickR(type)
    getrenv().require=getgenv().require

    -- print(getfenv(func).script.Parent,getfenv(func).script,getfenv(func).script:GetFullName())
    if not funcr or getfenv(funcr).script.Parent == nil then
        funcr = GetClickGun()
        print(funcr)
    end
    spawn(
        function()
            funcr(g, false) 
            Reload()
        end
    )
end
function ShootSuke(pos)
  
end
function Shoot(pos)
    shooting = true
    shootpos = pos
    spawn(function() 
        ClickR("Rifle")
    end)
    
    wait(.3)
    shooting = false
end
function GetSword()
    for k, v in pairs(plr.Character:GetChildren()) do
        if v:FindFirstChild("SwordEquip") then
            return v, true
        end
    end
    for k, v in pairs(plr.Backpack:GetChildren()) do
        if v:FindFirstChild("SwordEquip") then
            return v, false
        end
    end
end
function GetNearestMob(mob) 
    local nr = nil
    for k,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
        if v.Name==mob and not v:FindFirstChild("Rac") then 
            
            if plr.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health>0 and v:FindFirstChild("Info") and v.Info:FindFirstChild("Target") then 
                local kiet = true
                if mob=="Yeti" then 
                    local yetiY = 79
                    if math.abs(v.HumanoidRootPart.Position.Y-yetiY)>5 then kiet=false end
                end
                if v.Info.Target.Value==game.Players.LocalPlayer.Character.HumanoidRootPart and kiet then 
                    return v
                end
                
                if not nr and kiet then nr=v end
                if nr and nr:FindFirstChild("HumanoidRootPart") and (plr.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).magnitude<(plr.Character.HumanoidRootPart.Position-nr.HumanoidRootPart.Position).magnitude and kiet then 
                    nr=v
                end
            end
        end
    end
    return nr
end
function IsSkillUnlocked(skill) 
    if plr.PlayerGui:FindFirstChild("Keys") then 
        if plr.PlayerGui.Keys:FindFirstChild("Frame") then 
            if plr.PlayerGui.Keys.Frame:FindFirstChild(skill) then 
                if plr.PlayerGui.Keys.Frame[skill].TextLabel.TextLabel.Text~="???" then 
                    return true
                end
            end
        end
    end
    return false
end
function CountNear(mob,mag,k) 
    local c = 0
    for k,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do 
        if v.Name==mob then 
            if plr.Character:FindFirstChild("HumanoidRootPart") then 
                -- local c = false
                -- if not k then 
                --     c=true
                -- else
                --     if v:FindFirstChild("Info") and v.Info.Target==plr.Character.HumanoidRootPart then 
                --         c=true
                --     end
                -- end
                if (plr.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).magnitude<mag and c then 
                   c=c+1
                end
            end
        end
    end
    return c
end
local mob = "Bandit"
local olddd
local pos =
    CFrame.new(
    1054.63916,
    8.99998665,
    1298.18445,
    0.69716531,
    -9.41179668e-09,
    0.716910422,
    -2.24304877e-08,
    1,
    3.49409817e-08,
    -0.716910422,
    -4.04402911e-08,
    0.69716531
)
local lastclick=tick()
local lastup = tick()
while wait() do
    if Settings.Farm then
        if Settings.FarmMode == "Sword" or Settings.FarmMode=="Black Leg" then
            if Settings.FarmMode=="Black Leg" then 
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and plr.Backpack:FindFirstChild("BlackLeg") then 
                    plr.Character.Humanoid:EquipTool(plr.Backpack.BlackLeg)
                end
            else
                local sword, equip = GetSword()
                if sword and not equip then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(sword)
                    end
                end
            end

            local Dt = CheckQuest()
            if Settings.AutoBusoQuest and data.Stats.BusoMastery.Value==0 and data.Stats.Level.Value>80 and data.Stats.Peli.Value>25000 and Settings.FarmMode=="Sword" then 
                Dt=CheckQuest(nil,nil,"Buso")
            end
            local mob = Dt.Mob
            local Quest = Dt.Questpos

            if data.Stats.SpawnPoint.Value ~= Dt.Island then
                Tp(Dt.Spawn)
                wait(1)
                GetQuest()
            end

            if not game.Workspace.NPCs:FindFirstChild(mob) and not plr.PlayerGui:FindFirstChild("DEATHGUI") then
                Tp(Dt.Mobpos)
            end
            if game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true then
                if olddd and olddd ~= Dt then
                    -- Script generated by TurtleSpy, made by Intrer#0421

                    game:GetService("ReplicatedStorage").Events.Quest:InvokeServer({"quit"})
                end
            end
            if true and
                game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == false and
                    not game.Players.LocalPlayer.QuestCD.Value and data.Stats.Level.Value>=Dt.LevelReq
             then
                Tp(Dt.Questpos)
                wait(1)
                GetQuest(Dt.Quest,true)
            end
            olddd = Dt
            
            local v = GetNearestMob(mob)
            if v then 
                if v.Name == mob and Settings.Farm and not plr.PlayerGui:FindFirstChild("DEATHGUI") and not v:FindFirstChild("Rac") then
                    if
                    (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                    game.Players.LocalPlayer.QuestCD.Value or
                    ((Dt.LevelReq and data.Stats.Level.Value <= Dt.LevelReq) or not Dt.LevelReq)) and
                            v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0
                     then

                        

                        AutoClick = true
                        local orgin = v.HumanoidRootPart.Position.Y
                        
                        local tk=tick()
                        local curstate = 1 -- 1: UP 0: DOWN
                        local curr = v.HumanoidRootPart.CFrame
                        repeat
                            
                           
                            if Settings.FarmMode=="Black Leg" and IsSkillUnlocked("Party Table Kick Course") and CountNear(mob,15)<CountNear(mob,1000,true) then 
                                for k,v in pairs(game.Workspace.NPCs:GetChildren()) do 
                                    if v.Name==mob then 
                                        
                                        if
                                        (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                                        game.Players.LocalPlayer.QuestCD.Value or
                                        ((Dt.LevelReq and data.Stats.Level.Value <= Dt.LevelReq) or not Dt.LevelReq)) and
                                                v:FindFirstChild("Humanoid") and
                                                v:FindFirstChild("HumanoidRootPart") and
                                                v.Humanoid.Health > 0 and v:FindFirstChild("Info") and v.Info:FindFirstChild("Target") and v.Info.Target.Value==nil and Settings.Farm then 
                                                    local t=tick()
                                                    repeat wait()
                                                        if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and plr.Backpack:FindFirstChild("BlackLeg") then 
                                                            plr.Character.Humanoid:EquipTool(plr.Backpack.BlackLeg)
                                                        end
                                                        local curr = v.HumanoidRootPart.CFrame
                                                        local cf=CFrame.new(curr.X,Dt.BlackLegY,curr.Z)
                                                        Tp(cf)
                                                        Click()
                                                    until not v.Parent or
                                                    not (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                        v.Humanoid.Health > 0) or
                                                    not Settings.Farm or
                                                        not (
                                                            v:FindFirstChild("Humanoid") and
                                                            v:FindFirstChild("HumanoidRootPart") and
                                                            v.Humanoid.Health > 0) or v.Info.Target.Value~=nil
                                                            curr=v.HumanoidRootPart.CFrame or tick()-t>6
                                                end
                                    end
                                end
                            end
                            wait()
                 
                            if Settings.FarmMode=="Black Leg" then 
                                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and plr.Backpack:FindFirstChild("BlackLeg") then 
                                    plr.Character.Humanoid:EquipTool(plr.Backpack.BlackLeg)
                                end
                            else
                                local sword, equip = GetSword()
                                if sword and not equip then
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(sword)
                                    end
                                end
                            end
                            
                            
                            

                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
                                    game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
                                    not plr.PlayerGui:FindFirstChild("DEATHGUI") and v:FindFirstChild("HumanoidRootPart")
                             then
                                if v:FindFirstChild("Info") and v.Info:FindFirstChild("Target") and v.Info.Target.Value~=plr.Character.HumanoidRootPart then 
                                    curr=v.HumanoidRootPart.CFrame
                                end
                                local cf 
                                if Settings.FarmMode=="Black Leg" then 
                                    cf=Vector3.new(curr.X,Dt.BlackLegY,curr.Z)
                                else
                                    if Dt.SwordY then 
                                        cf=Vector3.new(curr.X,Dt.SwordY,curr.Z)
                                    else
                                        cf=curr+Vector3.new(0,-11,0)
                                    end
                                  
                                end
                               
                                if true or not AttackInCooldown() then
                                    local dist = -1
                                if Settings.FarmMode=="Black Leg" then 
                                    dist=14
                                else
                                    dist=20
                                end
                                if CountNear(mob,dist)>0 then 
                                    if Settings.FarmMode=="Black Leg" and IsSkillUnlocked("Party Table Kick Course") and CountNear(mob,23)==CountNear(mob,1000,true) and CountNear(mob,18)>1 then game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.X, false, game) end
                                    if not AttackInCooldown() and curstate==1 and tick()-lastup>0.4 then
                                    Click()
                                    lastclick=tick()
                                    end
                                end
                               
                                end
                                
                                local oldstate=curstate
                                if Settings.FarmMode~="Black Leg" then 
                                    if AttackInCooldown and tick()-lastclick>0.6 then 
                                        if Dt.CooldownY then 
                                            cf= CFrame.new(cf.X,Dt.CooldownY,cf.Z)
                                            curstate=0
                                        end
                                    else
                                        curstate=1
                                        if v.Humanoid.Jump or v:FindFirstChild("Tvk") then
                                            if Dt.Mob=="Yeti" then cf=cf+Vector3.new(0,3,0) else  
                                            cf= cf+Vector3.new(0,6,0)
                                            end
                                         
                                            if not v:FindFirstChild("Tvk") then 
                                                local t = Instance.new("BoolValue",v)
                                                t.Name="Tvk"
                                                game.Debris:AddItem(t,4)
                                            end
                                        else
                                           
                                        end
                                        
                                    end
                                end
                                print(curstate,oldstate)
                                if oldstate==0 and curstate==1 then 
                                    lastup=tick()
                                    print("Changed")
                                end
                                
                                local pos = CFrame.new(cf.X, cf.Y, cf.Z)
                               
                                if
                                    (pos.p - plr.Character.HumanoidRootPart.Position).magnitude >
                                        25
                                 then
                                    Tp(pos)
                                else
                                    plr.Character.HumanoidRootPart.CFrame = pos
                                end
                            end
                        until not v.Parent or
                            not (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                v.Humanoid.Health > 0) or
                            not Settings.Farm or
                                not (
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0) or tick()-tk >60*5
                        AutoClick = false
                    end
                end
            end
        elseif Settings.FarmMode == "Rifle" or Settings.FarmMode=="Suke" then
            local questdata = CheckQuest("Rifle")
            if data.Stats.SpawnPoint.Value ~= questdata.Island then
                Tp(questdata.Spawn)
                GetQuest(questdata.Quest,true)
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
                    ((questdata.LevelRequest and data.Stats.Level.Value >= questdata.LevelRequest))
             then
                Tp(questdata.Questpos)
                wait(1)
                GetQuest(questdata.Quest,true)
            end
            olddd = questdata

            Tp(questdata.Mobpos)

            for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if
                    (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                        game.Players.LocalPlayer.QuestCD.Value or
                        ((questdata.LevelRequest and data.Stats.Level.Value <= questdata.LevelRequest) or not questdata.LevelRequest)) and
                        v.Name == questdata.Mob and
                        Settings.Farm and
                        v:FindFirstChild("HumanoidRootPart") and
                        v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("Head") and
                        v.Humanoid.Health > 0
                 then
                    Tp(questdata.Mobpos)
                    local tkk = tick()
                    repeat
                        wait()
                        Tp(questdata.Mobpos)
                        if
                           Settings.FarmMode=="Rifle" and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle") and
                                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                         then
                            game.Players.LocalPlayer.Character.Humanoid:EquipTool(
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rifle")
                            )
                        end
                        if v:FindFirstChild("HumanoidRootPart") then 
                            if Settings.FarmMode=="Rifle"  then 
                            
                                Shoot(v.HumanoidRootPart.CFrame)
                            else
                                ShootSuke(v.HumanoidRootPart.CFrame)
                            end
                        end
                        
                        -- local ohString1 = "fire"
                    until 
                    not Settings.Farm or
                        not (v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0) or tick()-tkk >60*5
                    if tick()-tkk>60*5 then 
                        if v and not v:FindFirstChild("Rac") then 
                            local t = Instance.new("BoolValue",v)
                            t.Name="Rac"
                        end
                    end
                end
            end
        end
    end
end
