if getgenv().Executed then return end
getgenv().Executed = true

repeat wait() until game:IsLoaded()

local plr = game.Players.LocalPlayer
if not getgenv().AntiCheatBypassed then 
	if game.PlaceId == 10464237910 then 
		local bypass
		for k,v in pairs(getgc(true)) do 
			if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and  (rawget(v,"indexInstance"))[1] == "kick" then
				v.tvk = {"kick",function() bypass = true return game.Workspace:WaitForChild("") end}
			end
		end
		repeat wait() until bypass
	end
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
if not getgenv().RejoinSetup then 
	game.CoreGui.DescendantAdded:Connect(function()
		wait(2)
		pcall(function()
			if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
				while wait() do
					game:GetService("TeleportService"):Teleport(10464237910, plr)
					wait(5)
				end
			end
		end)
	end)
	getgenv().RejoinSetup = true
end
local request = request
if syn and syn.request then request = syn.request end
for k,v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do v:Disable() end 

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
function GetZenoClick(zeno) 
	for k,v in pairs(zeno:GetChildren()) do 
		if v:FindFirstChild("ProximityPrompt") then return v end
	end
end
function Teleport(pos) 
	if not plr.Character then 
		return
	end
	if not plr.Character:FindFirstChild("HumanoidRootPart") then return end
	plr.Character.HumanoidRootPart.CFrame = pos
end
function QuayNgang(pos,quaylen) 
	if quaylen then 
	    return CFrame.new(pos.Position)*CFrame.Angles(math.rad(90),0,0)
	end
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
	return ret
end
function Add(a,b) 
	local rel = {}
	for k,v in pairs(a) do table.insert(rel,v) end
	for k,v in pairs(b) do table.insert(rel,v) end
	return rel
end
local FarmList = {}
local FarmListIndex = {}
local IndexLevel = {}

if game.Workspace:FindFirstChild("QuestFolder") then 
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
	for k in pairs(FarmList) do
		table.insert(FarmListIndex, k)
	end
	table.sort(FarmListIndex, Com)
	
	for _, k in ipairs(FarmListIndex) do
		table.insert(IndexLevel,k)
	end
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
function CheckMob(mob,nocheckhelth) 
	if not mob.Parent then return false end
	if not mob:FindFirstChild("HumanoidRootPart") then return false end
	if not mob:FindFirstChild("Humanoid") then return false end
	if not mob:FindFirstChild("Head") then return false end
	if not nocheckhelth then 
		if mob.Humanoid.Health == 0 then return false end
	end
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
	for k,v in pairs(plr.Character:GetChildren()) do 
		if v.Name == weapon and v:IsA("Tool") then return v end
	end
end
function EquipWeapon(weapon) 
	if plr.Character:FindFirstChild("Humanoid") and plr.Backpack:FindFirstChild(weapon) then
    	plr.Character.Humanoid:EquipTool(plr.Backpack[weapon])
    end
end
function IsSkillOnCooldown(Weapon,Skill) 
	local CooldownUi 
	for k,v in pairs(plr.PlayerGui:GetChildren()) do 
		if Weapon == "Sword" then 
			if string.match(v.Name,"SW") then 
				CooldownUi = v
				break;
			end
		elseif Weapon == "DF" then
			if string.match(v.Name,"DF") then 
				CooldownUi = v
				break;
			end
		end
	end
	if not CooldownUi then return end
	if not CooldownUi:FindFirstChild(Skill) then return end

	local cooldown = CooldownUi[Skill]
	if cooldown.Visible == false then return false end
	if cooldown.Size.X.Scale == 0 then return false end
	return true
end
function CheckMobLevel(mob,level) 
	if GetQuestLevel(mob.Name) == level then return true end
end
function KhoangCachTuyetDoi(a,b) 
	a = Vector3.new(a.X,0,a.Z)
	b = Vector3.new(b.X,0,b.Z)
	return (a-b).magnitude
end
function GetAllWeapon() 
	return Add(map(plr.Backpack:GetChildren(),function(a) return a.Name end),map(plr.Character:GetChildren(),function(a) return (a:IsA("Tool") and a.Name or nil) end))
end
function GetAllWeaponInstance() 
	return Add(map(plr.Backpack:GetChildren(),function(a) return a end),map(plr.Character:GetChildren(),function(a) return (a:IsA("Tool") and a or nil) end))
end
function GetWeaponType(wp) 
	for k,v in pairs(wp:GetChildren()) do 
		if string.match(v.Name:lower(),"sword") then return "Sword"	 end
	end
	if wp:FindFirstChild("Melee") then return "Melee" end
	if wp:FindFirstChild("skill") and not wp:FindFirstChild("Attack") then return "DF" end
end
function ValidRaidHealth() 
	if plr.Character:FindFirstChild("Humanoid") then 
		return (plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth)*100 >= 40
	end
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
    List = GetAllWeapon(),
    Default = Settings.Weapon
}, function(item)
    Settings.Weapon = item
end)

local Section2 = Tab2:CreateSection("Auto Raids")
Section2:CreateDropdown("Select Reward", {
    List = {"Beli","Gem","Random"},
    Default = Settings.RaidReward
}, function(item)
    Settings.RaidReward = item
end)
Section2:CreateToggle("Webhook when done", {Toggled=Settings.RaidWH,Description = false}, function(state)
    Settings.RaidWH = state
end)
Section2:CreateToggle("Auto Raids", {Toggled=Settings.AutoRaid,Description = false}, function(state)
    Settings.AutoRaid = state
end)
Section2:CreateToggle("Use Melee Skill", {Toggled=Settings.RaidMeleeSkill,Description = false}, function(state)
    Settings.RaidMeleeSkill = state
end)
Section2:CreateToggle("Use DF Skill", {Toggled=Settings.RaidDFSkill,Description = false}, function(state)
    Settings.RaidDFSkill = state
end)
Section2:CreateToggle("Use Sword Skill", {Toggled=Settings.RaidSwordSkill,Description = false}, function(state)
    Settings.RaidSwordSkill = state
end)

local Tab2 = Window:CreatePage("Misc")

local Section2 = Tab2:CreateSection("Webhook")

Section2:CreateTextbox("Web Hook Url", "Enter here!", function(args)
    Settings.WebHookUrl=args
end,Settings.WebHookUrl)

local Section2 = Tab2:CreateSection("Auto Stats")

local ListStats = {"Melee","MaxHealth","Sword","DevilFruit"}
local TFListStats = {}
for k,v in pairs(ListStats) do TFListStats[v] = false end

for k,v in pairs(ListStats) do 
	Section2:CreateToggle(tostring(v), {Toggled=TFListStats[v],Description = false}, function(state)
		TFListStats[v] = state
	end)
end


function SendRaidWH(msgg) 
	local msg = {
		["content"] = "",
		["embeds"] = {{
			["title"] = "Dragon Sea",
			["description"] = "Raid Completed",
			["type"] = "rich",
			["color"] = tonumber(47103),
			["fields"] = {
				{
					["name"] = "Name",
					["value"] = "||" .. plr.Name .. "||",
					["inline"] = false
				},
				{
					["name"] = "Item",
					["value"] = msgg,
					["inline"] = false
				}
			},
			["footer"] = {
				["icon_url"] = "https://cdn.discordapp.com/attachments/880433061307772958/994650337485000804/dc6e727bd4a71a981a037834b8c8fe38.png",
				["text"] = "CFA Hub (" .. os.date("%X") .. ")"
			}
		}}
	}
	local function SendWebHook()
		request({
			Url = Settings.WebHookUrl,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = game:GetService("HttpService"):JSONEncode(msg)
		})
	end
	spawn(SendWebHook)
end
local LastSafeZone = 0
spawn(function() 
	while wait() do 
		if Settings.AutoRaid then 
			if game.PlaceId == 10464237910 then 
				Teleport(CFrame.new(game:GetService("Workspace")["5 Player"].Gate.Gate.Position))
			elseif game.PlaceId == 13373351184 then
				if game:GetService("Workspace"):FindFirstChild("Zeno") then
					if plr.PlayerGui:FindFirstChild("WishGui") then 
						local RewardReward = Settings.RaidReward
						if Reward == "Random" then 
							if math.random(0,1) == 1 then Reward = "Beli" else Reward = "Gem" end
						end
						if Settings.RaidWH then 
							if Settings.WebHookUrl then 
								SendRaidWH(Reward)
							end
						end
						if Reward == "Beli" then 
							ClickButton(plr.PlayerGui.WishGui.Frame.Wish1)
						else
							ClickButton(plr.PlayerGui.WishGui.Frame.Wish2)
						end
					else
						local ZenoClick = GetZenoClick(game:GetService("Workspace").Zeno)
						if ZenoClick then 
							Teleport(CFrame.new(ZenoClick.Position))
							wait(1)
							fireproximityprompt(ZenoClick.ProximityPrompt,1)
							wait(1)
						end
					end		
				end

				local standpos = CFrame.new(-70.7223, 0, 30.1395)
				local hg
				local mobcount = 0
				for k,v in pairs(game:GetService("Workspace").SpawnEnemy:GetChildren()) do 
					for k,v in pairs(v:GetChildren()) do 
						if CheckMob(v) and KhoangCachTuyetDoi(v.HumanoidRootPart.Position,plr.Character.HumanoidRootPart.Position) < 40 then 
							if not hg then hg = v end
							if hg.HumanoidRootPart.Position.Y > v.HumanoidRootPart.Position.Y then 
								hg = v
							end
							mobcount = mobcount + 1
						end
						if CheckMob(v) then
							v.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
							v.HumanoidRootPart.CanCollide = false
						end
					end
				end

				local noclick = false
				local NoValid
				if not ValidRaidHealth() then 
					NoValid = true
					LastSafeZone = tick()
				end
				if tick() - LastSafeZone < 10 then NoValid = true end
				if hg and not NoValid then
					if mobcount == 1 then 
						hg = hg.HumanoidRootPart.Position.Y + 9
					else
						hg = hg.HumanoidRootPart.Position.Y - 8 
					end
				else 
					noclick = true
					hg = 400 
				end
				standpos = standpos + Vector3.new(0,hg,0)
				if mobcount <= 1 then 
					standpos = QuayNgang(standpos,false)
				else
					standpos = QuayNgang(standpos,true)
				end
				if NoValid then 
					standpos = CFrame.new(-70.7223, 0, 30.1395) + Vector3.new(50,400,50)
				end
				Teleport(standpos)
				if not CheckWeapon(Settings.Weapon) then 
					EquipWeapon(Settings.Weapon)
				else
					if not noclick then 
						local wp = CheckWeapon(Settings.Weapon)
						if wp then 
							if wp:FindFirstChild("Attack") and wp.Attack:FindFirstChild("RemoteEvent") then 
								wp.Attack.RemoteEvent:FireServer(math.random(1,2),plr)
							end
						end
						local allwp = GetAllWeaponInstance()
						local usedskill = false

						for k,v2 in pairs(allwp) do 
							if v2:FindFirstChild("skill") and v2:FindFirstChild("Skill_list") then 
								local typ = GetWeaponType(v2)
								local NoSkill = false
								if typ == "Sword" then 
									if not Settings.RaidSwordSkill then 
										NoSkill = true
									end
								elseif typ == "DF" then
									if not Settings.RaidDFSkill then 
										NoSkill = true
									end
								elseif typ == "Melee" then
									if not Settings.RaidMeleeSkill then 
										NoSkill = true
									end
								end
								if not NoSkill then 
									for k,v in pairs(v2.skill:GetChildren()) do 
										if not v.Value and v2.Skill_list:FindFirstChild(v.Name) then 
											if not CheckWeapon(v2.Name) then 
												EquipWeapon(v2.Name)
											end
											usedskill = true
											game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode[v.Name], false, game)
										end
									end
								end
							end
							if usedskill then 
								wait(.5)
							end
						end
					end
				end
				getgenv().Noclip = true
			end
		end
	end
end)

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
