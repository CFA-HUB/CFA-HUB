local plr = game.Players.LocalPlayer
if not getgenv().AntiCheatBypassed then 
	local bypass
	for k,v in pairs(getgc(true)) do 
		if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and  (rawget(v,"indexInstance"))[1] == "kick" then
			v.tvk = {"kick",function() bypass = true return game.Workspace:WaitForChild("") end}
		end
	end
	repeat wait() until bypass

	local old
	old = hookmetamethod(Enum.HumanoidStateType,"__index",function(...) 
		local self,key = ...
		if key == "StrafingNoPhysics" then return end
		return old(...)
	end)
	
	local old
	old = hookfunction(game.FindService,function(...) 
		local a = ...
		if a == "VirtualUser" and not checkcaller() then return end
	end)
	local old
	old = hookmetamethod(game,"__namecall",function(...) 
		local self,key = ...
		if self == game and key == "VirtualUser" then 
			if not checkcaller() then return end
		end
		return old(...)
	end)
	print("Bypassed anti cheat")
	getgenv().AntiCheatBypassed = true
end
if not getgenv().OptimizeGame then 
	local old
	old = hookmetamethod(game,"__namecall",function(...) 
		local self = ...
		if self and getnamecallmethod() == "FireServer" and self.Name == "RemoteEvent" then 
			local s,e = pcall(function() 
				if self.Parent.Name == "LocalScript" and self.Parent.Parent.Name == "GPNotifier" then return game.Workspace:WaitForChild("") end
				error("a")
			end)
			if s then return end
		end
		return old(...)
	end)
	getgenv().OptimizeGame = true
end
if setfflag then
    setfflag("HumanoidParallelRemoveNoPhysics", "False")
    setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
end
if not getgenv().NoclipSetup then 
	game:GetService('RunService').Stepped:Connect(function()
		if getgenv().Noclip then 
			pcall(function() 
				plr.Character.Humanoid:ChangeState(11)
			end)
		end
	end)
	getgenv().NoclipSetup = true
end
local exploitSupported = true
if not isnetworkowner then exploitSupported = false isnetworkowner = function() return true end end
if not setsimulationradius then 
	if sethiddenproperty then 
		local s, e = pcall(function() 
			return sethiddenproperty(plr,"SimulationRadius",math.huge)
		end)
		if s then 
			setsimulationradius = function() 
				sethiddenproperty(plr,"SimulationRadius",math.huge)
			end
		end
	end
end
if not getgenv().SimulationRadiusSetup then 
	if not setsimulationradius then 
		getgenv().NoBringMob = true
	else
		spawn(function() 
			while wait() do setsimulationradius(math.huge,math.huge) end
		end)
		getgenv().SimulationRadiusSetup = true
	end
end
function Teleport(pos) 
	if not plr.Character then 
		return
	end
	if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
	plr.Character.HumanoidRootPart.CFrame = pos
end
function QuayNgang(pos) 
    return CFrame.new(pos.Position)*CFrame.Angles(math.rad(-90),0,0)
end
function GetQuestLevel(quest) 
	local ret = (string.gsub(quest, "%D", ""))
	return tonumber(ret)
end
function map(list,func)
	local ret = {}
	for k,v in pairs(list) do 
		ret[k] = func(v)
	end
end
local FarmList = {}
for k,v in pairs(game:GetService("Workspace").QuestFolder:GetChildren()) do 
	local lv = GetQuestLevel(v.Name)
	FarmList[lv] = {
		Mob = lv,
		Quest = v,
		Level = lv
	}
end
local function Com(a, b)
    return a < b
end
local FarmListIndex = {}
for k in pairs(FarmList) do
    table.insert(FarmListIndex, k)
end
table.sort(FarmListIndex, Com)

local IndexLevel = {}
for _, k in ipairs(FarmListIndex) do
	table.insert(IndexLevel,k)
end

function HasQuest(currquest) 
	if not plr:FindFirstChild("Quest") then return false end
	if not currquest then 
		return plr.Quest.Num.Value ~= 0
	end
	return plr.Quest.Num.Value == table.find(IndexLevel,currquest)
end
function CheckLevel() 
    local level = plr.Data.Levels.Value
    local index = math.huge
    local questchecker
    for _, i in ipairs(FarmListIndex) do
		local v = FarmList[k]
        if (level - i) >= 0 then
            if (level - i) < math.abs(level - index) then
                index = i
            end
        end
    end   
    return FarmList[index]
end
function CheckMob(mob) 
	if not mob.Parent then return false end
	if not mob:FindFirstChild("HumanoidRootPart") then return false end
	if not mob:FindFirstChild("Humanoid") then return false end
	if mob.Humanoid.Health == 0 then return false end
	return true
end
function ClickButton(v)
	v.BackgroundTransparency = 1
	v.Size = UDim2.new(100, 100, 100, 100)
	v.Position = UDim2.new(-1, 0, -5, 0)
	wait(.2)
	game:GetService("VirtualUser"):ClickButton1(Vector2.new(50, 50))
end
function CheckWeapon(weapon) 
	return plr.Character:FindFirstChild(weapon)
end
function EquipWeapon(weapon) 
	if plr.Character:FindFirstChild("Humanoid") and plr.Backpack:FindFirstChild(weapon) then
    	plr.Character.Humanoid:EquipTool(plr.Backpack[weapon])
    end
end

function CheckMobLevel(mob,level) 
	if GetQuestLevel(mob.Name) == level then return true end
end

local SaveFileName = plr.Name.."_Dragon Sea.json"
local Settings = {}
function SaveSettings()
    local HttpService = game:GetService("HttpService")
    if not isfolder("CFA HUB") then
        makefolder("CFA HUB")
    end
    writefile("CFA HUB/" .. SaveFileName, HttpService:JSONEncode(Settings))
end

function ReadSetting() 
    local s,e = pcall(function() 
        local HttpService = game:GetService("HttpService")
        if not isfolder("CFA HUB") then
            makefolder("CFA HUB")
        end
        return HttpService:JSONDecode(readfile("CFA HUB/" .. SaveFileName))
    end)
	print(s,e)
    if s then return e 
    else
        SaveSettings()
        return ReadSetting()
    end
end

Settings = ReadSetting()
spawn(function() 
	while wait(2) do SaveSettings() end
end)

local CFAHub = 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiet1308/tvkhub/main/rac"))()
local txt="Dragon Sea"
local Window = CFAHub:CreateWindow("<font color=\"#4FC3F7\">CFA Hub</font>", txt, true)

local Tab2 = Window:CreatePage("Farm")
local Section2 = Tab2:CreateSection("Main Farm")
local lf = Section2:CreateToggle("Level Farm", {Toggled=Settings.Farm,Description = "Will auto detect best lv to farm"}, function(state)
    Settings.Farm = state
end)
local text = false
if not exploitSupported then 
	text = "Your exploit is not fully supported bring mob"
end
if not NoBringMob then 
	local lf = Section2:CreateToggle("Bring mob", {Toggled=Settings.Farm,Description = text}, function(state)
		Settings.BringMob = state
	end)
end
Section2:CreateDropdown("Select Weapon", {
    List = map(plr.Backpack:GetChildren(),function(a) return a.Name end),
    Default = "Combat"
}, function(item)
    Settings.Weapon = item
end)

local Tab2 = Window:CreatePage("Misc")
local Section2 = Tab2:CreateSection("Auto Stats")

local ListStats = {"Melee","MaxHealth","Sword","DevilFruit"}
local TFListStats = {}
for k,v in pairs(ListStats) do TFListStats[v] = false end

for k,v in pairs(ListStats) do 
	Section2:CreateToggle(tostring(v), {Toggled=TFListStats[v],Description = false}, function(state)
		TFListStats[v] = state
	end)
end

-- Auto Stats
spawn(function() 
	while wait(1) do 
		local count = 0
		while plr.Data.Points.Value > 0 and count < 100 and wait() do 
			for k,v in pairs(TFListStats) do 
				if v then 
					game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(k)
				end
			end
			count = count +1
		end
	end
end)
-- Auto Farm
spawn(function() 
	while wait() do 
		if Settings.Farm then 
			local CurrentFarmData = CheckLevel()
			getgenv().Noclip = true

			Teleport(CFrame.new(CurrentFarmData.Quest.ClickPart.Position))
			if not HasQuest(CurrentFarmData.Level) then
				if HasQuest() then 
					for k,v in pairs(plr.PlayerGui:GetChildren()) do 
						if v.Name == "QuestBar" then 
							if v:FindFirstChild("Background") and v.Background:FindFirstChild("Cancle") then 
								ClickButton(v.Background.Cancle)
								wait(1)
							end
						end
					end
				else 
					if not plr.PlayerGui:FindFirstChild("QuestTake") then 
						fireclickdetector(CurrentFarmData.Quest.ClickPart.ClickDetector,1)
						wait(1)
					end
					if plr.PlayerGui:FindFirstChild("QuestTake") then 
						ClickButton(plr.PlayerGui.QuestTake.Accept)
						wait(1)
					end
				end
			else
				local hasmob = false
				for k,v in pairs(game.Workspace.Npc:GetChildren()) do 
					if CheckMobLevel(v,CurrentFarmData.Level) and CheckMob(v) and Settings.Farm then 
						hasmob = true
						local pos = v.HumanoidRootPart.CFrame
						local lastbring = tick()
						repeat wait() 
							if CheckMob(v) then 
								if Settings.BringMob then 
									if not NoBringMob and (exploitSupported or tick() - lastbring > 1) then 
										lastbring = tick()
										for k,v2 in pairs(game.Workspace.Npc:GetChildren()) do 
											if CheckMobLevel(v2,CurrentFarmData.Level) and CheckMob(v2) then 
												if isnetworkowner(v2.HumanoidRootPart) then 
													v2.HumanoidRootPart.CFrame = pos
												end
											end
										end
									end
								end
								Teleport(QuayNgang(v.HumanoidRootPart.CFrame+Vector3.new(0,9,0)))
								if not CheckWeapon(Settings.Weapon) then 
									EquipWeapon(Settings.Weapon)
								else
									local wp = CheckWeapon(Settings.Weapon)
									if wp then 
										if wp:FindFirstChild("Attack") and wp.Attack:FindFirstChild("RemoteEvent") then 
											wp.Attack.RemoteEvent:FireServer(math.random(1,2),plr)
										end
									end
								end
							end
						until not CheckMob(v) or not Settings.Farm
					end
				end
				if not hasmob then 
					Teleport(CFrame.new(CurrentFarmData.Quest.ClickPart.Position))
				end
			end
			getgenv().Noclip = true
		end
	end
end)
