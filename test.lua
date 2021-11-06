--Insiprational for cleaner code and Credits: Twink Marie (736578#6459)
syn.queue_on_teleport([[
    repeat wait() until game:IsLoaded()
    if game.PlaceId==1730877806 then 
        game:GetService("ReplicatedStorage"):WaitForChild("Events")
    wait(5)
    print(game:GetService("ReplicatedStorage").Events.reserved:InvokeServer("40W6QKK"))
    else
        repeat wait() until game.ReplicatedStorage:FindFirstChild("Stats" .. game.Players.LocalPlayer.Name)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CFA-HUB/CFA-HUB/main/test.lua"))()
    end
    
    


]])


local path = {
    [1] = {
        Mob = "Bandit",
        Mobpos = CFrame.new(
            1049.87622,
            45.2688599,
            1180.65149,
            -0.642921448,
            7.48719629e-08,
            -0.765932143,
            1.2813743e-08,
            1,
            8.69969128e-08,
            0.765932143,
            4.61177159e-08,
            -0.642921448
        ),
        Questpos = CFrame.new(
            1013.84064,
            8.99998856,
            1231.17041,
            -0.616182745,
            -5.59716973e-05,
            -0.787603259,
            1.16545916e-05,
            1,
            -8.0183825e-05,
            0.787603259,
            -5.85870912e-05,
            -0.616182745
        ),
        Quest = "Help Raphtalia",
        Spawn = CFrame.new(
            982.202759,
            8.99998856,
            1208.23499,
            -0.974838078,
            1.86531133e-06,
            -0.222913831,
            -2.2131924e-07,
            1,
            9.33572301e-06,
            0.222913831,
            9.15015244e-06,
            -0.974838078
        ),
        Island = "Town of Beginnings"
    },
    [10] = {
        Mob = "Desert Bandit",
        Mobpos = CFrame.new(
            -1484.30933,
            41.8159981,
            1075.04431,
            -0.767555654,
            3.08206877e-10,
            0.64098233,
            -1.795323e-08,
            1,
            -2.19792486e-08,
            -0.64098233,
            -2.83780004e-08,
            -0.767555654
        ),
        Questpos = CFrame.new(
            -1405.50439,
            10.4348574,
            1119.62207,
            -0.156919166,
            -6.69804168e-09,
            0.987611473,
            -4.3805537e-09,
            1,
            6.08604633e-09,
            -0.987611473,
            -3.37126771e-09,
            -0.156919166
        ),
        Quest = "Help Noah",
        Spawn = CFrame.new(
            -1315.35559,
            10.4348574,
            1113.92542,
            0.637805581,
            -1.9881762e-08,
            0.770197392,
            6.26306829e-08,
            1,
            -2.60510333e-08,
            -0.770197392,
            6.48534808e-08,
            0.637805581
        ),
        Island = "Sandora"
    },
    [30] = {
        Mob = "Zou Inhabitant",
        Mobpos = CFrame.new(-4501.4731445312, 29.592468261719, -2588.15234375),
        Questpos = CFrame.new(
            -4453.5249,
            6.99241638,
            -2530.28125,
            0.625322223,
            -7.77490143e-08,
            0.780366778,
            8.12765819e-08,
            1,
            3.45029818e-08,
            -0.780366778,
            4.1850079e-08,
            0.625322223
        ),
        Quest = "Help Zen",
        Spawn = CFrame.new(
            -4486.7334,
            6.99241638,
            -2516.32153,
            0.799994111,
            1.70960845e-08,
            0.600007832,
            4.41554135e-08,
            1,
            -8.73657839e-08,
            -0.600007832,
            9.63857119e-08,
            0.799994111
        ),
        Island = "Island Of Zou"
    },
    [55] = {
        Mob = "Monkey",
        Mobpos = CFrame.new(-6649.3608398438, 34.919410705566, -10031.319335938),
        Questpos = CFrame.new(
            -6552.42627,
            42.1655731,
            -9922.30957,
            -0.893526196,
            0,
            0.449011147,
            0,
            1,
            0,
            -0.449011147,
            0,
            -0.893526196
        ),
        Quest = "Help gonny",
        Spawn = CFrame.new(
            -6304.95459,
            42.1655655,
            -10147.3047,
            0.954604685,
            3.27212319e-08,
            -0.297875643,
            -2.81672659e-08,
            1,
            1.95807512e-08,
            0.297875643,
            -1.03015347e-08,
            0.954604685
        ),
        Island = "Sphinx Island"
    },
    -- [90] = {
    --     Mob ="Saw Shark Pirate",
    --     Mobpos = CFrame.new(339.469666, 29.1108437, -13180.877, -0.613318145, 8.1514413e-09, 0.78983593, 3.33472805e-08, 1, 1.55741873e-08, -0.78983593, 3.58908139e-08, -0.613318145),
    --     Questpos = CFrame.new(348.942413, 12.2988625, -13286.999, -0.587823987, -3.04750927e-08, 0.808988869, 1.39299647e-08, 1, 4.77923265e-08, -0.808988869, 3.93626607e-08, -0.587823987),
    --     Quest="Help Waby"
    -- },
    [160] = {
        Mob = "Gravito's Undermen",
        Mobpos = CFrame.new(2610.0737304688, 86.086631774902, -15617.121093755),
        Questpos = CFrame.new(2508.7863769531, 41.468124389648, -15542.967773438),
        Quest = "Help Miska",
        Spawn = CFrame.new(
            2587.75439,
            7.64981413,
            -15364.0664,
            0.282930493,
            -8.70877148e-09,
            -0.95914042,
            7.34239514e-09,
            1,
            -6.91388191e-09,
            0.95914042,
            -5.08623987e-09,
            0.282930493
        ),
        Island = "Gravito's Fort"
    },
    [190] = {
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
local RiflePath = {
    [1] = {
        Mob = "Gravito's Undermen",
        Mobpos = CFrame.new(2610.0737304688, 86.086631774902, -15617.121093755),
        Questpos = CFrame.new(2508.7863769531, 41.468124389648, -15542.967773438),
        Quest = "Help Miska",
        LevelRequest = 160,
        Spawn = CFrame.new(
            2586.60132,
            7.64981413,
            -15365.8057,
            0.998434007,
            -2.84509305e-08,
            -0.0559424609,
            2.22223004e-08,
            1,
            -1.11962002e-07,
            0.0559424609,
            1.10543496e-07,
            0.998434007
        ),
        Island = "Gravito's Fort"
    },
    [190] = {
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

local Settings = {
    Farm = false,
    Block = false,
    FarmMode = "",
    --Misc
    NoFall = false,
    WaterNoDame = false,
    InfRoll = false,
    WaterWalker = false,
    NoDrown = false,
    NoFog = false,
    SafeMode = false,
    AutoStat={
        Strength=false,
        Stamina=false,
        Defense=false,
        GunMastery=false,
        SwordMastery=false
    },
    Rejoin=false,
    AutoKick=false,
    RejoinTime=30,
    JoinPs=false,
    --ESP
    DFe = false,
    PLRe = false,
    ItemE = false,
    IslandE = false,
    --LocalPlayer
    WalkSpeed = 20,
    ChangeSpeed = false,
    --Settings
    FarmType="Behind",
    AutoSave=false
}
local Default = Settings
local FolderName="Sun Hub V2"
local FileName="Grand Piece Online.json"
local SaveFileName = FileName
local HttpService = game:GetService("HttpService")
local function SaveSettings()
    writefile(FolderName.."/" .. SaveFileName, HttpService:JSONEncode(Settings))
end
if not isfolder(FolderName) then
    makefolder(FolderName)
end
if
            not pcall(
                function()
                    readfile(FolderName.."/" .. SaveFileName)
                end
            )
         then
            writefile(FolderName.."/" .. SaveFileName, HttpService:JSONEncode(Settings))
end
       
        
        
        
        
        function k()
           local s,e = pcall(
                function()
                    Settings = HttpService:JSONDecode(readfile(FolderName.."/" .. SaveFileName))
                end
            )
            if e then 
                SaveSettings()
                k()
            end
        end
        k()
        for k,v in pairs(Default) do 
            if not Settings[k] then 
                Settings[k]=v
            end
        end
   spawn(function() 
    while wait(1) do 
        if Settings.AutoSave then 
            SaveSettings()
        end
    end
end)






local data = game.ReplicatedStorage["Stats" .. game.Players.LocalPlayer.Name]
local islandstring =
    '{"Fishman Cave":{"Y":9.2382411956787109375,"X":5683.76904296875,"Z":-16452.0703125},"Coco Island":{"Y":91.40644073486328125,"X":-4235.26708984375,"Z":-15581.541015625},"Restaurant Baratie":{"Y":55.295459747314453125,"X":-3891.420166015625,"Z":-5617.267578125},"Marine Fort F-1":{"Y":38.62652587890625,"X":2980.4814453125,"Z":-1018.49383544921875},"Shark Park":{"Y":69.80466461181640625,"X":480.110076904296875,"Z":-13159.2802734375},"Fishman Island":{"Y":-2130.90625,"X":8140.201171875,"Z":-17359.685546875},"Land of the Sky":{"Y":2013.4683837890625,"X":9287.9501953125,"Z":-10914.0078125},"Roca Island":{"Y":5.31069850921630859375,"X":5284.46240234375,"Z":-5071.08935546875},"Marine Base G-1":{"Y":75.89556884765625,"X":-9964.1884765625,"Z":-14955.8779296875},"Shell Town":{"Y":8.143646240234375,"X":-427.08148193359375,"Z":-4397.76220703125},"Sandora":{"Y":15.2598667144775390625,"X":-1249.070068359375,"Z":1169.697998046875},"Kori Island":{"Y":179.197418212890625,"X":-6599.4990234375,"Z":1999.422607421875},"Colosseum":{"Y":36.32498931884765625,"X":-2023.145751953125,"Z":-7615.869140625},"Orange Town":{"Y":22.668609619140625,"X":-7005.22802734375,"Z":-5381.982421875},"Island Of Zou":{"Y":21.2927761077880859375,"X":-4345.171875,"Z":-2548.62109375},"Gravito Fort":{"Y":13.8824863433837890625,"X":2671.119873046875,"Z":-15288.0234375},"Sphinx Island":{"Y":36.030242919921875,"X":-6359.98828125,"Z":-9928.98046875},"Town of Beginnings":{"Y":42.125,"X":920.8499755859375,"Z":1529.199951171875},"???? Shrine":{"Y":-61.465911865234375,"X":-12185.525390625,"Z":-18545.005859375},"Mysterious Cliff":{"Y":230.769012451171875,"X":2198.412109375,"Z":-8606.2548828125},"Reverse Mountain":{"Y":10.15185546875,"X":-14479.544921875,"Z":-8711.90234375}}'
local islandpos = game:GetService("HttpService"):JSONDecode(islandstring)

function WTS(part, toggle)
    local screen = workspace.CurrentCamera:WorldToViewportPoint(part)
    return Vector2.new(screen.x, screen.y)
end

function ESP(part, text, color, toggle)
    local name = Drawing.new("Text")
    name.Text = text
    name.Color = color
    name.Position = WTS(part)
    name.Size = 20.0
    name.Outline = true
    name.Center = true
    name.Visible = true

    game:GetService("RunService").Stepped:connect(
        function()
            pcall(
                function()
                    if part ~= nil then
                        name.Position = WTS(part)
                    end
                    local _, screen = workspace.CurrentCamera:WorldToViewportPoint(part)
                    if screen and Settings[toggle] then
                        name.Visible = true
                    else
                        name.Visible = false
                    end
                end
            )
        end
    )
end
for k, v in pairs(islandpos) do
    --  print(k,v)
    ESP(Vector3.new(v.X, v.Y, v.Z), k, Color3.fromRGB(255, 255, 255), "IslandE")
end

function CheckQuest(a, b)
    local index = math.huge
    local questchecker
    local level = data.Stats.Level.Value
    level=1
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

local plr = game:GetService("Players").LocalPlayer
local TweenService = game:GetService("TweenService")
local inpService = game:GetService("UserInputService")
local Mouse = plr:GetMouse()

local Instances = {}
local Library = {
    Pages = {
        Buttons = {}, --done
        Toggles = {}, -- done
        Binds = {}, -- done
        Sliders = {}, -- done
        Labels = {}, -- done
        Dropdowns = {}, -- done
        Boxes = {}, -- in quee
        Notifications = {} -- in quee
    }
}

local function Tween(object, time, properties)
    local info = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    TweenService:Create(object, info, properties):Play()
end

local Objects = {
    Gui = "ScreenGui",
    Frame = "Frame",
    Image = "ImageLabel",
    Radius = "UICorner",
    Text = "TextLabel",
    List = "UIListLayout",
    Box = "TextBox",
    Button = "TextButton",
    SFrame = "ScrollingFrame",
    Pad = "UIPadding",
    Stroke = "UIStroke"
}

local ExtraProps = {
    Shadow = {
        ClassName = "ImageLabel",
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(1, 30, 1, 30),
        Image = "rbxassetid://5554236805",
        BackgroundTransparency = 1,
        ImageColor3 = Color3.fromRGB(0, 0, 0),
        ScaleType = Enum.ScaleType.Slice,
        SliceCenter = Rect.new(23, 23, 277, 277),
        SliceScale = 1
    }
}

function Instances:new(Object, props)
    props = props or {}
    if Objects[Object] then
        local new = Instance.new(Objects[Object])
        for Property, Value in next, props do
            new[Property] = Value
        end
        return new
    elseif ExtraProps[Object] then
        local new = Instance.new(ExtraProps[Object].ClassName)
        print(ExtraProps[Object].ClassName)
        for Property, Value in next, ExtraProps[Object] do
            if Property ~= "ClassName" then
                new[Property] = Value
            end
        end
        new.Parent = props.Parent
        return new
    end
end

function Instances:Radius(Object, Radius)
    local radius =
        Instances:new(
        "Radius",
        {
            Name = "Radius",
            CornerRadius = Radius,
            Parent = Object
        }
    )
    return radius
end

function Instances:Shadow(Object)
    local Shadow = Instances:new("Shadow", {Parent = Object})
    return Shadow
end
local CurrentCamera

while (not CurrentCamera) do
    CurrentCamera = workspace.CurrentCamera
    wait()
end
local minimized = false

local function ToBounds(X, Y, MW)
    if (X < 0) then
        X = 0
    end

    if ((MW.AbsoluteSize.Y - Y) >= MW.AbsoluteSize.Y) then
        Y = 0
    end

    if ((X + MW.AbsoluteSize.X) >= (CurrentCamera.ViewportSize.X)) then
        X = CurrentCamera.ViewportSize.X - MW.AbsoluteSize.X
    end

    if (((Y + MW.AbsoluteSize.Y) + 35) >= (CurrentCamera.ViewportSize.Y)) then
        Y = (CurrentCamera.ViewportSize.Y - MW.AbsoluteSize.Y) - 35
    end

    return UDim2.new(0, X, 0, Y)
end

local function ApplyTween(Object, Seconds, Goals)
    local Tween = game:GetService("TweenService"):Create(Object, TweenInfo.new(Seconds), Goals)

    Tween:Play()

    return Tween
end

local function ApplyDrag(Component, MainWindow)
    local MouseDown = false
    local MB1 = Enum.UserInputType.MouseButton1 -- no way in hell am i indexing that 24/7
    local MM = Enum.UserInputType.MouseMovement -- no way in hell am i indexing that 24/7

    local Position = Vector2.new()

    local InputBegan =
        Component.InputBegan:Connect(
        function(input)
            if (input.UserInputType == MB1) then
                MouseDown = true
                Position =
                    Vector2.new(
                    input.Position.X - MainWindow.AbsolutePosition.X,
                    input.Position.Y - MainWindow.AbsolutePosition.Y
                )
            end
        end
    )

    local InputEnded =
        Component.InputEnded:Connect(
        function(input)
            if (input.UserInputType == MB1) then
                MouseDown = false
            end
        end
    )

    local InputChanged

    InputChanged =
        game:GetService("UserInputService").InputChanged:Connect(
        function(input)
            if (MouseDown and input.UserInputType == MM) then
                MainWindow.Position = ToBounds((Mouse.X - Position.X), (Mouse.Y - Position.Y), MainWindow)
            end
        end
    )
end

function Library.new(Title)
    pcall(
        function()
            game.CoreGui:FindFirstChild("SunHub"):Destroy()
        end
    )

    local Screen =
        Instances:new(
        "Gui",
        {
            Name = "SunHub",
            Parent = game.CoreGui
        }
    )
    function Library.Hide()
        Screen.Enabled = not Screen.Enabled
    end
    table.insert(Library, Title)

    local Main =
        Instances:new(
        "Frame",
        {
            Parent = Screen,
            Name = "Main",
            Size = UDim2.new(0, 600, 0, 400),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Position = UDim2.new(0.5, 0, 0.5),
            BackgroundColor3 = Color3.fromRGB(22, 22, 22)
        }
    )

    Main.Position = UDim2.new(0, Main.AbsolutePosition.X, 0, Main.AbsolutePosition.Y)
    Main.AnchorPoint = Vector2.new()

    Instances:Shadow(Main)
    Instances:Radius(Main, UDim.new(0, 12))

    local Header =
        Instances:new(
        "Frame",
        {
            Name = "Header",
            Parent = Main,
            Position = UDim2.new(0, 0, 0, 0),
            Size = UDim2.new(1, 0, 0, 0),
            BackgroundColor3 = Color3.fromRGB(17, 17, 17),
            ClipsDescendants = true,
            BorderSizePixel = 0,
            ZIndex = 99
        }
    )

    local NotificationContainer =
        Instances:new(
        "Frame",
        {
            Parent = Screen,
            Size = UDim2.new(1, 0, 1, 0),
            BackgroundTransparency = 1
        }
    )

    local NotificationList =
        Instances:new(
        "List",
        {
            Parent = NotificationContainer,
            FillDirection = Enum.FillDirection.Vertical,
            HorizontalAlignment = Enum.HorizontalAlignment.Right,
            VerticalAlignment = Enum.VerticalAlignment.Bottom,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 10)
        }
    )

    local NotificationPad =
        Instances:new(
        "Pad",
        {
            Parent = NotificationContainer,
            PaddingBottom = UDim.new(0, 10),
            PaddingRight = UDim.new(0, 10)
        }
    )

    local Cover_Header =
        Instances:new(
        "Frame",
        {
            Parent = Header,
            Name = "Header_Cover",
            AnchorPoint = Vector2.new(0.5, 1),
            Size = UDim2.new(1, 0, 0, 4),
            Position = UDim2.new(0.5, 0, 1, 0),
            BackgroundColor3 = Color3.fromRGB(17, 17, 17),
            BackgroundTransparency = 1,
            BorderSizePixel = 0
        }
    )

    local Title =
        Instances:new(
        "Text",
        {
            Text = Title,
            Name = Title,
            AnchorPoint = Vector2.new(0, 0.5),
            Size = UDim2.new(1, 0, 1, 0),
            Position = UDim2.new(0, -30, 0.5, 0),
            BackgroundTransparency = 1,
            TextTransparency = 1,
            TextColor3 = Color3.fromRGB(255, 255, 255),
            TextXAlignment = Enum.TextXAlignment.Left,
            Font = Enum.Font.Gotham,
            TextSize = 14,
            Parent = Header,
            RichText = true,
            ZIndex = 99
        }
    )

    local TabsFrame =
        Instances:new(
        "Frame",
        {
            Parent = Main,
            Name = "TabsFrame",
            Size = UDim2.new(1, -20, 0, 30),
            AnchorPoint = Vector2.new(0.5, 0),
            Position = UDim2.new(0.5, 0, 0, -40),
            BackgroundColor3 = Color3.fromRGB(17, 17, 17)
        }
    )

    local TabsFrame1 =
        Instances:new(
        "SFrame",
        {
            Parent = TabsFrame,
            Name = "TabsFrame1",
            Size = UDim2.new(1, 0, 1, 0),
            AnchorPoint = Vector2.new(0.5, 0.4),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            BackgroundColor3 = Color3.fromRGB(17, 17, 17),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            ScrollBarThickness = 0,
            CanvasPosition = Vector2.new(0, 0, 0, -5)
        }
    )

    local TabsListlayout =
        Instances:new(
        "List",
        {
            Parent = TabsFrame1,
            FillDirection = Enum.FillDirection.Horizontal,
            HorizontalAlignment = Enum.HorizontalAlignment.Left,
            VerticalAlignment = Enum.VerticalAlignment.Top,
            SortOrder = Enum.SortOrder.LayoutOrder
        }
    )

    local Container =
        Instances:new(
        "Frame",
        {
            Name = "Container",
            Size = UDim2.new(1, -20, 1, -90),
            Position = UDim2.new(0.5, 0, -1, 0),
            AnchorPoint = Vector2.new(0.5, 0),
            BackgroundColor3 = Color3.fromRGB(17, 17, 17),
            Parent = Main
        }
    )

    ApplyDrag(Header, Main)
    Main.ClipsDescendants = true

    Instances:Radius(Header, UDim.new(0, 6))
    Instances:Radius(TabsFrame, UDim.new(0, 6))
    Instances:Radius(Container, UDim.new(0, 6))

    wait(0.4)
    Tween(Header, 0.2, {Size = UDim2.new(1, 0, 0, 30)})
    Tween(Cover_Header, 0.2, {BackgroundTransparency = 0})
    wait(0.4)
    Tween(Title, 0.2, {Position = UDim2.new(0, 10, 0.5, 0), TextTransparency = 0})
    wait(0.4)
    Tween(Container, 0.2, {Position = UDim2.new(0.5, 0, 0, 80)})
    wait(0.4)
    Tween(TabsFrame, 0.2, {Position = UDim2.new(0.5, 0, 0, 40)})

    wait(0.1)

    Main.ClipsDescendants = false

    TabsFrame1.ChildAdded:Connect(
        function()
            TabsFrame1.CanvasSize = UDim2.new(0, TabsListlayout.AbsoluteContentSize.X, 0, 0)
        end
    )

    local First = true

    function Library.Pages:Tab(Title)
        table.insert(Library.Pages, Title)
        local TabButton =
            Instances:new(
            "Button",
            {
                Name = Title .. "Tab",
                Parent = TabsFrame1,
                BackgroundTransparency = 1,
                Text = Title,
                Font = Enum.Font.Gotham,
                TextSize = 14,
                TextTransparency = 1,
                TextColor3 = Color3.fromRGB(116, 116, 116)
            }
        )

        local Page =
            Instances:new(
            "SFrame",
            {
                Name = Title .. "_Page",
                Parent = Container,
                Size = UDim2.new(1, 0, 0, 0),
                BorderSizePixel = 0,
                BackgroundTransparency = 1,
                Visible = false,
                ScrollBarThickness = 0,
                Visible = false,
                Position = UDim2.new(0.5, 0, 1, 0),
                AnchorPoint = Vector2.new(0.5, 1)
            }
        )

        local PageListlayout =
            Instances:new(
            "List",
            {
                Name = "PageListlayout",
                Parent = Page,
                VerticalAlignment = Enum.VerticalAlignment.Top,
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                FillDirection = Enum.FillDirection.Vertical,
                SortOrder = Enum.SortOrder.LayoutOrder,
                Padding = UDim.new(0, 6)
            }
        )

        local PagePad =
            Instances:new(
            "Pad",
            {
                Parent = Page,
                PaddingTop = UDim.new(0, 10)
            }
        )

        wait(0.4)
        if First then
            First = false
            TabButton.TextColor3 = Color3.fromRGB(255, 204, 0)
            TabButton.Font = Enum.Font.GothamSemibold
            Page.Size = UDim2.new(1, 0, 1, 0)
            Page.Visible = true
        end

        TabButton.Size = UDim2.new(0, TabButton.TextBounds.X + 10, 1, -6)
        Tween(TabButton, 0.2, {TextTransparency = 0})

        TabButton.MouseButton1Click:Connect(
            function()
                for i, v in pairs(TabsFrame1:GetChildren()) do
                    if v:IsA("TextButton") then
                        Tween(v, 0.2, {TextColor3 = Color3.fromRGB(116, 116, 116)})
                        v.Font = Enum.Font.Gotham
                    end
                end
                for _, IPage in pairs(Container:GetChildren()) do
                    if IPage:IsA("ScrollingFrame") then
                        Tween(IPage, 0.2, {Size = UDim2.new(1, 0, 0, 0)})
                        IPage.Visible = false
                    end
                end
                Tween(Page, 0.2, {Size = UDim2.new(1, 0, 1, 0)})
                Page.Visible = true
                Tween(TabButton, 0.2, {TextColor3 = Color3.fromRGB(255, 204, 0)})
                TabButton.Font = Enum.Font.GothamSemibold
            end
        )

        PageListlayout.Changed:Connect(
            function()
                wait(0.02)
                Page.CanvasSize = UDim2.new(0, 0, 0, PageListlayout.AbsoluteContentSize.Y + 18)
            end
        )

        local Components = {}

        function Components:Button(Title, Info, Callback)
            table.insert(Library.Pages.Buttons, Title)
            local Disabled = false
            local Button =
                Instances:new(
                "Button",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    AutoButtonColor = false,
                    Text = Title,
                    RichText = true,
                    Name = Title .. "_Button",
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    TextXAlignment = Enum.TextXAlignment.Center,
                    ClipsDescendants = true
                }
            )

            Button.MouseEnter:Connect(
                function()
                    if Disabled then
                        return
                    end
                    Tween(Button, 0.2, {BackgroundColor3 = Color3.fromRGB(30, 30, 30), TextTransparency = 1})
                    wait(0.2)
                    pcall(
                        function()
                            Button.Text =
                                "<font color='rgb(255,204,0)'><b>" ..
                                tostring(Title) ..
                                    "</b></font>" .. "<font color='rgb(100,100,100)'>" .. " | " .. Info .. "</font>"
                        end
                    )
                    Tween(Button, 0.2, {TextTransparency = 0})
                end
            )

            Button.MouseLeave:Connect(
                function()
                    if Disabled then
                        return
                    end
                    Tween(Button, 0.2, {BackgroundColor3 = Color3.fromRGB(24, 24, 24), TextTransparency = 1})
                    wait(0.2)
                    Button.Text = Title
                    Tween(Button, 0.2, {TextTransparency = 0})
                end
            )

            Button.MouseButton1Click:Connect(
                function()
                    if Disabled then
                        return
                    end
                    local Rel = Vector2.new(plr:GetMouse().X, plr:GetMouse().Y) - Button.AbsolutePosition
                    local Circle =
                        Instances:new(
                        "Frame",
                        {
                            Parent = Button,
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            Position = UDim2.new(0, Rel.X, 0, Rel.Y),
                            BackgroundTransparency = 0.6,
                            Size = UDim2.new(0, 6, 0, 6),
                            BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        }
                    )
                    Instances:Radius(Circle, UDim.new(1, 0))
                    Tween(Circle, 0.4, {Size = UDim2.new(0, 500, 0, 500), BackgroundTransparency = 1})
                    Callback()
                    wait(0.4)
                    Circle:Destroy()
                end
            )

            Instances:Radius(Button, UDim.new(0, 6))
            local ButtonLibrary = {}
            function ButtonLibrary:State(state)
                Disabled = state
                Tween(
                    Button,
                    0.2,
                    {
                        BackgroundTransparency = Disabled and 0.2 or 0,
                        TextColor3 = Disabled and Color3.fromRGB(100, 100, 100) or Color3.fromRGB(255, 255, 255)
                    }
                )
            end
            return ButtonLibrary
        end

        function Components:Toggle(Title, default, Callback)
            table.insert(Library.Pages.Toggles, Title)
            local ToggleLibrary = {}
            local Toggled = default

            local ToggleFrame =
                Instances:new(
                "Frame",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_Toggle",
                    ClipsDescendants = true
                }
            )

            local ToggleClick =
                Instances:new(
                "Frame",
                {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Parent = ToggleFrame,
                    Position = UDim2.new(0, 12, 0.5, 0),
                    Size = UDim2.new(0, 12, 0, 12),
                    BackgroundTransparency = default and 0 or 1,
                    BackgroundColor3 = Color3.fromRGB(255, 204, 0)
                }
            )

            local Stroke =
                Instances:new(
                "Stroke",
                {
                    Parent = ToggleClick,
                    Color = default and Color3.fromRGB(255, 204, 0) or Color3.fromRGB(60, 60, 60),
                    Thickness = 1.8
                }
            )

            local Info =
                Instances:new(
                "Text",
                {
                    Parent = ToggleFrame,
                    BackgroundTransparency = 1,
                    Text = Title,
                    TextColor3 = default and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(70, 70, 70),
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    Size = UDim2.new(1, 0, 1, 0),
                    Position = UDim2.new(0, 32, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    TextXAlignment = Enum.TextXAlignment.Left
                }
            )

            ToggleFrame.InputBegan:Connect(
                function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                        local Rel = Vector2.new(plr:GetMouse().X, plr:GetMouse().Y) - ToggleFrame.AbsolutePosition
                        local Circle =
                            Instances:new(
                            "Frame",
                            {
                                Parent = ToggleFrame,
                                AnchorPoint = Vector2.new(0.5, 0.5),
                                Position = UDim2.new(0, Rel.X, 0, Rel.Y),
                                BackgroundTransparency = 0.6,
                                Size = UDim2.new(0, 6, 0, 6),
                                BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                            }
                        )
                        Instances:Radius(Circle, UDim.new(1, 0))
                        Tween(Circle, 0.4, {Size = UDim2.new(0, 500, 0, 500), BackgroundTransparency = 1})
                        ToggleLibrary:SetState(not Toggled)
                        wait(0.4)
                        Circle:Destroy()
                    end
                end
            )

            Instances:Radius(ToggleFrame, UDim.new(0, 6))
            Instances:Radius(ToggleClick, UDim.new(0, 1))

            function ToggleLibrary:SetState(state)
                Toggled = state
                Tween(ToggleClick, 0.2, {BackgroundTransparency = Toggled and 0 or 1})
                Tween(Stroke, 0.2, {Color = Toggled and Color3.fromRGB(255, 204, 0) or Color3.fromRGB(60, 60, 60)})
                Tween(Info, 0.2, {TextColor3 = Toggled and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(70, 70, 70)})
                Callback(Toggled)
            end

            function ToggleLibrary:GetState()
                return Toggled
            end

            function ToggleLibrary:SetText(text)
                Info.Text = text
            end

            ToggleLibrary:SetState(default)

            return ToggleLibrary
        end

        function Components:Seperator()
            local Sep =
                Instances:new(
                "Frame",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 4),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = "Seperator",
                    ClipsDescendants = true
                }
            )
            Instances:Radius(Sep, UDim.new(1, 0))
        end

        function Components:Label(Title)
            table.insert(Library.Pages.Labels, Title)
            local LabelLibrary = {}

            local Label =
                Instances:new(
                "Text",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "Label",
                    ClipsDescendants = true,
                    Text = "  " .. Title,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(200, 200, 200)
                }
            )

            Instances:Radius(Label, UDim.new(0, 6))

            function LabelLibrary:SetText(text)
                Label.Text = "  " .. text
            end

            function LabelLibrary:GetText()
                return Label.Text
            end

            return LabelLibrary
        end

        function Components:Slider(Title, Default, Min, Max, Callback)
            table.insert(Library.Pages.Sliders, Title)
            local SliderLibrary = {}

            if Default < Min then
                Default = Min
            end

            if Default > Max then
                Default = Max
            end

            local ValueS = Default
            local Active = false
            local SliderFrame =
                Instances:new(
                "Frame",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 48),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_Slider",
                    ClipsDescendants = true
                }
            )

            local Info =
                Instances:new(
                "Text",
                {
                    Parent = SliderFrame,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_Info",
                    ClipsDescendants = true,
                    Text = "  " .. Title,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    BackgroundTransparency = 1,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(255, 255, 255)
                }
            )

            local Value =
                Instances:new(
                "Text",
                {
                    Parent = SliderFrame,
                    Size = UDim2.new(1, -10, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_Value",
                    ClipsDescendants = true,
                    Text = Default,
                    TextXAlignment = Enum.TextXAlignment.Right,
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    BackgroundTransparency = 1,
                    RichText = true,
                    TextColor3 = Color3.fromRGB(200, 200, 200)
                }
            )

            local LightSlider =
                Instances:new(
                "Frame",
                {
                    AnchorPoint = Vector2.new(0.5, 0),
                    Size = UDim2.new(1, -24, 0, 4),
                    BackgroundColor3 = Color3.fromRGB(34, 34, 34),
                    Position = UDim2.new(0.5, 0, 0, 32),
                    Parent = SliderFrame
                }
            )

            local Drag =
                Instances:new(
                "Frame",
                {
                    AnchorPoint = Vector2.new(0, 0.5),
                    Size = UDim2.new((Default - Min) / (Max - Min), 0, 1, 0),
                    Position = UDim2.new(0, 0, 0.5, 0),
                    BackgroundColor3 = Color3.fromRGB(255, 204, 0),
                    Parent = LightSlider,
                    BorderColor3 = Color3.fromRGB(255, 204, 0),
                    BorderSizePixel = 0,
                    BorderMode = Enum.BorderMode.Inset
                }
            )

            local Circle =
                Instances:new(
                "Frame",
                {
                    Parent = Drag,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Size = UDim2.new(0, 10, 0, 10),
                    Position = UDim2.new(1, 5, 0.5, 0),
                    BackgroundColor3 = Color3.fromRGB(255, 204, 0),
                    BackgroundTransparency = 1
                }
            )

            local Stroke =
                Instances:new(
                "Stroke",
                {
                    Parent = Circle,
                    Transparency = 1,
                    Color = Color3.fromRGB(255, 204, 0),
                    Thickness = 3
                }
            )

            SliderFrame.InputBegan:Connect(
                function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                        SliderLibrary:Drag(inp)
                        Tween(Circle, 0.2, {BackgroundTransparency = 0})
                        Tween(Stroke, 0.2, {Transparency = 0.8})
                        Active = true
                    end
                end
            )

            SliderFrame.InputEnded:Connect(
                function(inp)
                    if inp.UserInputType == Enum.UserInputType.MouseButton1 then
                        Tween(Circle, 0.2, {BackgroundTransparency = 1})
                        Tween(Stroke, 0.2, {Transparency = 1})
                        Active = false
                    end
                end
            )

            SliderFrame.InputChanged:Connect(
                function(inp)
                    if Active and inp.UserInputType == Enum.UserInputType.MouseMovement then
                        SliderLibrary:Drag(inp)
                    end
                end
            )

            Instances:Radius(SliderFrame, UDim.new(0, 6))
            Instances:Radius(LightSlider, UDim.new(1, 0))
            Instances:Radius(Drag, UDim.new(1, 0))
            Instances:Radius(Circle, UDim.new(1, 0))

            function SliderLibrary:Drag(input)
                local Size1 =
                    UDim2.new(
                    math.clamp((input.Position.X - LightSlider.AbsolutePosition.X) / LightSlider.AbsoluteSize.X, 0, 1),
                    0,
                    0,
                    4
                )
                Tween(Drag, 0.1, {Size = Size1})
                ValueS = math.floor(((Size1.X.Scale * Max) / Max) * (Max - Min) + Min)
                Value.Text = tostring(ValueS)
                Callback(ValueS)
            end

            function SliderLibrary:SetText(text)
                Info.Text = "  " .. text
            end

            return SliderLibrary
        end

        function Components:Keybind(Title, default, Callback)
            local first = default.Name
            table.insert(Library.Pages.Binds, Title)
            local KeybindLibrary = {}

            local binding = false

            local KeybindFrame =
                Instances:new(
                "Button",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_Keybind",
                    AutoButtonColor = false,
                    Text = "",
                    ClipsDescendants = true
                }
            )

            local Info =
                Instances:new(
                "Text",
                {
                    Parent = KeybindFrame,
                    BackgroundTransparency = 1,
                    Text = Title,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    Size = UDim2.new(1, 0, 1, 0),
                    Position = UDim2.new(0, 10, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    TextXAlignment = Enum.TextXAlignment.Left
                }
            )

            local Key =
                Instances:new(
                "Text",
                {
                    Parent = KeybindFrame,
                    AnchorPoint = Vector2.new(1, 0.5),
                    Text = first,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    Position = UDim2.new(1, 0, 0.5, 0),
                    Size = UDim2.new(0, 50, 1, 0),
                    BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                }
            )

            local keyCover =
                Instances:new(
                "Frame",
                {
                    Parent = Key,
                    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                    Size = UDim2.new(0, 4, 1, 0),
                    BorderSizePixel = 0
                }
            )

            KeybindFrame.MouseButton1Click:Connect(
                function()
                    Key.Text = ". . ."
                    binding = true
                    Tween(Key, 0.2, {TextColor3 = Color3.fromRGB(255, 204, 0)})
                    local a, b = inpService.InputBegan:wait()
                    if a.UserInputType.Name ~= "Unknown" then
                        Tween(Key, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                        Key.Text = a.UserInputType.Name
                        first = a.UserInputType.Name
                        binding = false
                    end
                    if a.KeyCode.Name ~= "Unknown" then
                        Tween(Key, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                        Key.Text = a.KeyCode.Name
                        first = a.KeyCode.Name
                        binding = false
                    end
                end
            )

            inpService.InputBegan:Connect(
                function(c, ok)
                    if not ok then
                        if c.KeyCode.Name == first or c.UserInputType.Name == first then
                            Callback()
                        end
                    end
                end
            )

            Instances:Radius(KeybindFrame, UDim.new(0, 6))
            Instances:Radius(Key, UDim.new(0, 6))

            Key.Changed:Connect(
                function()
                    Key.Size = UDim2.new(0, Key.TextBounds.X + 28, 1, 0)
                end
            )

            function KeybindLibrary:SetKey(key)
                first = key.Name
                Key.Text = key.Name
            end

            function KeybindLibrary:GetKey()
                return first
            end

            function KeybindLibrary:SetText(text)
                Info.Text = text
            end
            return KeybindLibrary
        end

        function Components:Dropdown(Title, multiSelection, list,DefaultValue, Callback)
            multiSelection = multiSelection or false
            list = list or {}
            local Selected = {}
            local Opened = false
            local DropdownLibrary = {}

            table.insert(Library.Pages.Dropdowns, Title)

            local DropdownMain =
                Instances:new(
                "Frame",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(20, 20, 20),
                    Name = Title .. "_Dropdown",
                    ClipsDescendants = true
                }
            )

            local DropdownClick =
                Instances:new(
                "Button",
                {
                    Parent = DropdownMain,
                    Size = UDim2.new(1, 0, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_DropClick",
                    AutoButtonColor = false,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    Text = "  " .. Title,
                    ClipsDescendants = true
                }
            )

            local Dropcover =
                Instances:new(
                "Frame",
                {
                    AnchorPoint = Vector2.new(0.5, 1),
                    Position = UDim2.new(0.5, 0, 1, 0),
                    Size = UDim2.new(1, 0, 0, 6),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    Parent = DropdownClick
                }
            )

            local Line =
                Instances:new(
                "Frame",
                {
                    Parent = DropdownMain,
                    Size = UDim2.new(0, 2, 1, -42),
                    AnchorPoint = Vector2.new(0, 0),
                    Position = UDim2.new(0, 14, 0, 36),
                    BorderSizePixel = 0,
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                }
            )

            local OptionContainer =
                Instances:new(
                "Frame",
                {
                    Parent = DropdownMain,
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    Position = UDim2.new(1, -10, 0, 36),
                    AnchorPoint = Vector2.new(1, 0),
                    ClipsDescendants = true
                }
            )

            local OptionList =
                Instances:new(
                "List",
                {
                    Parent = OptionContainer,
                    FillDirection = Enum.FillDirection.Vertical,
                    HorizontalAlignment = Enum.HorizontalAlignment.Center,
                    VerticalAlignment = Enum.VerticalAlignment.Top,
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Padding = UDim.new(0, 4)
                }
            )

            local Arrow =
                Instances:new(
                "Image",
                {
                    Parent = DropdownClick,
                    BackgroundTransparency = 1,
                    Image = "rbxassetid://3926305904",
                    ImageRectOffset = Vector2.new(404, 284),
                    Size = UDim2.new(0, 20, 0, 20),
                    ImageRectSize = Vector2.new(36, 36),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    Rotation = 0
                }
            )

            Instances:Radius(DropdownMain, UDim.new(0, 6))
            Instances:Radius(DropdownClick, UDim.new(0, 6))
            Instances:Radius(Line, UDim.new(1, 0))

            DropdownClick.MouseButton1Click:Connect(
                function()
                    local Rel = Vector2.new(plr:GetMouse().X, plr:GetMouse().Y) - DropdownClick.AbsolutePosition
                    local Circle =
                        Instances:new(
                        "Frame",
                        {
                            Parent = DropdownClick,
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            Position = UDim2.new(0, Rel.X, 0, Rel.Y),
                            BackgroundTransparency = 0.6,
                            Size = UDim2.new(0, 6, 0, 6),
                            BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                        }
                    )
                    Instances:Radius(Circle, UDim.new(1, 0))
                    Tween(Circle, 0.4, {Size = UDim2.new(0, 500, 0, 500), BackgroundTransparency = 1})
                    if Opened then
                        Tween(Arrow, 0.2, {Rotation = 0})
                        Tween(DropdownMain, 0.2, {Size = UDim2.new(1, -20, 0, 30)})
                        Tween(Dropcover, 0.2, {BackgroundTransparency = 1})
                        Opened = false
                    else
                        Tween(Arrow, 0.2, {Rotation = 180})
                        Tween(DropdownMain, 0.2, {Size = UDim2.new(1, -20, 0, 30 + OptionContainer.Size.Y.Offset + 14)})
                        Tween(Dropcover, 0.2, {BackgroundTransparency = 0})
                        Opened = true
                    end
                    wait(0.4)
                    Circle:Destroy()
                end
            )

            DropdownClick.MouseEnter:Connect(
                function()
                    Tween(DropdownClick, 0.2, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                    Tween(Dropcover, 0.2, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                end
            )

            DropdownClick.MouseLeave:Connect(
                function()
                    Tween(DropdownClick, 0.2, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)})
                    Tween(Dropcover, 0.2, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)})
                end
            )

            table.foreach(
                list,
                function(i, v)
                    local Options =
                        Instances:new(
                        "Button",
                        {
                            Parent = OptionContainer,
                            Size = UDim2.new(1, 0, 0, 30),
                            BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                            TextColor3 = Color3.fromRGB(40, 40, 40),
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Font = Enum.Font.Gotham,
                            TextSize = 14,
                            AutoButtonColor = false
                        }
                    )
                    if multiSelection then 
                        Options.Text = "  " .. i
                    else
                        Options.Text = "  " .. v

                    end

                    Options:SetAttribute("Selected", false)

                    local Mark =
                        Instances:new(
                        "Frame",
                        {
                            Name = "Mark",
                            Size = UDim2.new(0, 8, 0, 8),
                            AnchorPoint = Vector2.new(1, 0.5),
                            Position = UDim2.new(1, -10, 0.5, 0),
                            BackgroundColor3 = multiSelection and Color3.fromRGB(40, 40, 40) or
                                Color3.fromRGB(255, 204, 0),
                            Parent = Options,
                            BackgroundTransparency = multiSelection and 0 or 1
                        }
                    )
                    if v==DefaultValue then 
                                Callback(v)
                                for i, b in pairs(OptionContainer:GetChildren()) do
                                    if b:IsA("TextButton") then
                                        b:SetAttribute("Selected", false)
                                        Tween(b, 0.2, {TextColor3 = Color3.fromRGB(40, 40, 40)})
                                        Tween(b.Mark, 0.2, {BackgroundTransparency = 1})
                                    end
                                end
                                Options:SetAttribute("Selected", false)
                                Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                                Tween(Options.Mark, 0.2, {BackgroundTransparency = 0})
                    end
                    if multiSelection then 
                        if v then 
                            Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                            Tween(Mark, 0.2, {BackgroundColor3 = Color3.fromRGB(255, 204, 0)})
                            --table.insert(Selected, k)
                          --  list[k]=true
                            Callback(i,true)
                            Options:SetAttribute("Selected", true)
                        end
                    end
                    Options.MouseButton1Click:Connect(
                        function()
                            if multiSelection then
                                if Options:GetAttribute("Selected") == false then
                                    Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                                    Tween(Mark, 0.2, {BackgroundColor3 = Color3.fromRGB(255, 204, 0)})
                                    Callback(i,true)
                                    Options:SetAttribute("Selected", true)
                                else
                                    Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(40, 40, 40)})
                                    Tween(Mark, 0.2, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
                                    Callback(i,true)
                                    Options:SetAttribute("Selected", false)
                                end
                            else
                                Callback(v)
                                for i, b in pairs(OptionContainer:GetChildren()) do
                                    if b:IsA("TextButton") then
                                        b:SetAttribute("Selected", false)
                                        Tween(b, 0.2, {TextColor3 = Color3.fromRGB(40, 40, 40)})
                                        Tween(b.Mark, 0.2, {BackgroundTransparency = 1})
                                    end
                                end
                                Options:SetAttribute("Selected", false)
                                Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                                Tween(Options.Mark, 0.2, {BackgroundTransparency = 0})
                            end
                        end
                    )

                    Instances:Radius(Mark, UDim.new(1, 0))
                    Instances:Radius(Options, UDim.new(0, 6))

                    OptionContainer.Size = UDim2.new(1, -38, 0, OptionList.AbsoluteContentSize.Y)

                    Options.MouseEnter:Connect(
                        function()
                            Tween(Options, 0.2, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                        end
                    )

                    Options.MouseLeave:Connect(
                        function()
                            Tween(Options, 0.2, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)})
                        end
                    )
                end
            )

            function DropdownLibrary:Refresh(newlist)
                for i, v in pairs(Selected) do
                    table.remove(Selected, i)
                end
                for i, v in pairs(OptionContainer:GetChildren()) do
                    if v:IsA("TextButton") then
                        v:Destroy()
                    end
                end

                Tween(Arrow, 0.2, {Rotation = 0})
                Tween(DropdownMain, 0.2, {Size = UDim2.new(1, -20, 0, 30)})
                Tween(Dropcover, 0.2, {BackgroundTransparency = 1})
                Opened = false

                table.foreach(
                    newlist,
                    function(i, v)
                        local Options =
                            Instances:new(
                            "Button",
                            {
                                Parent = OptionContainer,
                                Size = UDim2.new(1, 0, 0, 30),
                                BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                                TextColor3 = Color3.fromRGB(40, 40, 40),
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Font = Enum.Font.Gotham,
                                TextSize = 14,
                                Text = "  " .. v,
                                AutoButtonColor = false
                            }
                        )

                        Options:SetAttribute("Selected", false)

                        local Mark =
                            Instances:new(
                            "Frame",
                            {
                                Name = "Mark",
                                Size = UDim2.new(0, 8, 0, 8),
                                AnchorPoint = Vector2.new(1, 0.5),
                                Position = UDim2.new(1, -10, 0.5, 0),
                                BackgroundColor3 = multiSelection and Color3.fromRGB(40, 40, 40) or
                                    Color3.fromRGB(255, 204, 0),
                                Parent = Options,
                                BackgroundTransparency = multiSelection and 0 or 1
                            }
                        )

                        Options.MouseButton1Click:Connect(
                            function()
                                if multiSelection then
                                    if Options:GetAttribute("Selected") == false then
                                        Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                                        Tween(Mark, 0.2, {BackgroundColor3 = Color3.fromRGB(255, 204, 0)})
                                        table.insert(Selected, v)
                                        Callback(Selected)
                                        Options:SetAttribute("Selected", true)
                                    else
                                        Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(40, 40, 40)})
                                        Tween(Mark, 0.2, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
                                        for index, value in pairs(Selected) do
                                            if value == v then
                                                table.remove(Selected, index)
                                            end
                                        end
                                        Callback(Selected)
                                        Options:SetAttribute("Selected", false)
                                    end
                                else
                                    Callback(v)
                                    for i, b in pairs(OptionContainer:GetChildren()) do
                                        if b:IsA("TextButton") then
                                            b:SetAttribute("Selected", false)
                                            Tween(b, 0.2, {TextColor3 = Color3.fromRGB(40, 40, 40)})
                                            Tween(b.Mark, 0.2, {BackgroundTransparency = 1})
                                        end
                                    end
                                    Options:SetAttribute("Selected", false)
                                    Tween(Options, 0.2, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                                    Tween(Options.Mark, 0.2, {BackgroundTransparency = 0})
                                end
                            end
                        )

                        Instances:Radius(Mark, UDim.new(1, 0))
                        Instances:Radius(Options, UDim.new(0, 6))

                        OptionContainer.Size = UDim2.new(1, -38, 0, OptionList.AbsoluteContentSize.Y)

                        Options.MouseEnter:Connect(
                            function()
                                Tween(Options, 0.2, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
                            end
                        )

                        Options.MouseLeave:Connect(
                            function()
                                Tween(Options, 0.2, {BackgroundColor3 = Color3.fromRGB(24, 24, 24)})
                            end
                        )
                    end
                )
            end
            return DropdownLibrary
        end

        function Components:Textbox(Title, Callback,Delf)
            table.insert(Library.Pages.Boxes, Title)
            if not Delf then Delf="" end
            local BoxFrame =
                Instances:new(
                "Frame",
                {
                    Parent = Page,
                    Size = UDim2.new(1, -20, 0, 30),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    Name = Title .. "_Box",
                    ClipsDescendants = true
                }
            )

            local Info =
                Instances:new(
                "Text",
                {
                    Parent = BoxFrame,
                    BackgroundTransparency = 1,
                    Text = Title,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    Size = UDim2.new(1, 0, 1, 0),
                    Position = UDim2.new(0, 10, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    TextXAlignment = Enum.TextXAlignment.Left
                }
            )

            local Box =
                Instances:new(
                "Box",
                {
                    Parent = BoxFrame,
                    Size = UDim2.new(0, 150, 1, -10),
                    BackgroundColor3 = Color3.fromRGB(30, 30, 30),
                    AnchorPoint = Vector2.new(1, 0.5),
                    Position = UDim2.new(1, -10, 0.5, 0),
                    TextColor3 = Color3.fromRGB(200, 200, 200),
                    ClipsDescendants = true,
                    PlaceholderText = "",
                    PlaceHoder,
                    Text = Delf,
                    ClearTextOnFocus = false
                }
            )

            Box.FocusLost:Connect(
                function(enterpressed)
                    if enterpressed then
                        Callback(Box.Text)
                        Box.Text = ""
                    end
                end
            )

            Instances:Radius(BoxFrame, UDim.new(0, 6))
            Instances:Radius(Box, UDim.new(0, 6))
        end

        function Library:Notification(Title, Messsage, waitTime)
            local NotificationFrame =
                Instances:new(
                "Frame",
                {
                    Parent = NotificationContainer,
                    Size = UDim2.new(0, 0, 0, 56),
                    BackgroundColor3 = Color3.fromRGB(28, 28, 28),
                    BorderSizePixel = 0,
                    BorderMode = Enum.BorderMode.Inset,
                    BorderColor3 = Color3.fromRGB(28, 28, 28)
                }
            )

            local NotificationHeader =
                Instances:new(
                "Frame",
                {
                    Parent = NotificationFrame,
                    Size = UDim2.new(1, 0, 0, 0),
                    AnchorPoint = Vector2.new(0.5, 0),
                    Position = UDim2.new(0.5, 0, 0, 0),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24)
                }
            )

            local Cover =
                Instances:new(
                "Frame",
                {
                    AnchorPoint = Vector2.new(0.5, 1),
                    Position = UDim2.new(0.5, 0, 1, 0),
                    Size = UDim2.new(0, 0, 0, 6),
                    BackgroundColor3 = Color3.fromRGB(24, 24, 24),
                    BorderSizePixel = 0,
                    BackgroundTransparency = 1,
                    Parent = NotificationnHeader
                }
            )

            local Info =
                Instances:new(
                "Text",
                {
                    Parent = NotificationHeader,
                    BackgroundTransparency = 1,
                    Text = Title,
                    TextColor3 = Color3.fromRGB(255, 255, 255),
                    Font = Enum.Font.Gotham,
                    TextSize = 14,
                    TextTransparency = 1,
                    Size = UDim2.new(1, 0, 1, 0),
                    Position = UDim2.new(0, 10, 0.5, 0),
                    AnchorPoint = Vector2.new(0, 0.5),
                    TextXAlignment = Enum.TextXAlignment.Left
                }
            )

            local MesssageText =
                Instances:new(
                "Text",
                {
                    Parent = NotificationFrame,
                    BackgroundTransparency = 1,
                    Text = " " .. Messsage,
                    TextColor3 = Color3.fromRGB(180, 180, 180),
                    Font = Enum.Font.Gotham,
                    TextSize = 12,
                    TextTransparency = 1,
                    Size = UDim2.new(1, 0, 1, 0),
                    Position = UDim2.new(0, 10, 0, 33),
                    AnchorPoint = Vector2.new(0, 0),
                    TextYAlignment = Enum.TextYAlignment.Top,
                    TextXAlignment = Enum.TextXAlignment.Left
                }
            )

            Instances:Radius(NotificationFrame, UDim.new(0, 4))
            Instances:Radius(NotificationHeader, UDim.new(0, 4))

            Tween(NotificationFrame, 0.2, {Size = UDim2.new(0, 200, 0, 56)})
            wait(0.2)
            Tween(NotificationHeader, 0.2, {Size = UDim2.new(1, 0, 0, 26)})
            Tween(Cover, 0.2, {Size = UDim2.new(1, 0, 0, 6)})
            wait(0.2)
            Tween(Info, 0.2, {TextTransparency = 0})
            wait(0.2)
            Tween(MesssageText, 0.2, {TextTransparency = 0})

            wait(waitTime)

            Tween(MesssageText, 0.2, {TextTransparency = 1})
            wait(0.2)
            Tween(Info, 0.2, {TextTransparency = 1})
            wait(0.2)
            Tween(NotificationHeader, 0.2, {Size = UDim2.new(1, 0, 0, 0)})
            Tween(Cover, 0.2, {Size = UDim2.new(0, 0, 0, 6)})
            wait(0.2)
            Tween(NotificationFrame, 0.2, {Size = UDim2.new(0, 0, 0, 56)})

            wait(1)
            NotificationFrame:Destroy()
        end
        return Components
    end
    return Library.Pages
end

local speaker = game.Players.LocalPlayer
local tweening = false
local part0 = Instance.new("Part", workspace)
local t = Instance.new("Part", workspace)
t.Transparency = 1
t.Anchored = true
t.Size = Vector3.new(2000, 5, 2000)
-- = game:GetService("ReplicatedStorage").Util.WaterLogia["Magu-Magu"].ball:Clone()
t.Parent = part0
game:GetService("RunService").Stepped:Connect(
    function()
        if Settings.WaterWalker and not (tweening or Settings.Farm) then
            t.CFrame =
                CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,
                -5.8,
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z
            )
        else
            t.CFrame = CFrame.new(0, -100000, 0)
        end
        pcall(
            function()
                if Settings.NoDrown or (tweening or Settings.Farm) then
                    plr.Character.HumanoidRootPart.SwimPosition.Position = Vector3.new(0, -2.71834, 0)
                end
                -- if tweening or Setting.Farm then 
                --     plr.Character.HumanoidRootPart.SwimPosition:Destroy()
                -- end
            end
        )
    end
)
function CreateTweenFloat()
    if not plr.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
        local BV = Instance.new("BodyVelocity")
        BV.Parent = plr.Character.HumanoidRootPart
        BV.Name = "EffectsSY"
        BV.MaxForce = Vector3.new(100000, 100000, 100000)
        BV.Velocity = Vector3.new(0, 0, 0)
    end
end

local function NoclipLoop()
    if
        speaker.Character ~= nil and (tweening or Settings.Farm) and
            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
            game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
            game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
            not plr.PlayerGui:FindFirstChild("DEATHGUI")
     then
        CreateTweenFloat()

        for _, child in pairs(speaker.Character:GetDescendants()) do
            if child:IsA("BasePart") and child.CanCollide == true then
                child.CanCollide = false
            end
        end
    else
        if plr.Character.HumanoidRootPart:FindFirstChild("EffectsSY") then
            plr.Character.HumanoidRootPart.EffectsSY:Destroy()
        end
    end
end
Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)

local lastgun = tick()
local metatable = getrawmetatable(game)
local namecall = metatable.__namecall
setreadonly(metatable, false)

metatable.__namecall =
    newcclosure(
    function(self, ...)
        if self.Name == "takestam" and Settings.InfRoll then
            return
        end
        if self.Name == "FallDmg" and Settings.NoFall then
            return
        end
        if self.Name == "CIcklcon" then
            lastgun = tick()
        end
        return namecall(self, ...)
    end
)
local OldEvent
OldEvent =
    hookfunction(
    Instance.new("RemoteEvent").FireServer,
    function(Self, ...)
        if tostring(Self) == "swim" and (Settings.WaterNoDame or tweening or Settings.Farm) then
            return nil
        end
        return OldEvent(Self, ...)
    end
)

function IsFishMan(pos)
    return pos.Y < -2000
end

local vt = 100
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

function tpT(t, k, cur)
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
    while (done == false) do
        if plr:FindFirstChild("DEATHGUI") then
            return
        end
        if STOP then
            tween:Pause()
            STOP = false
            return
        end
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
        local pos = -2.7848949432373
        if IsSea() and math.abs(plr.Character.HumanoidRootPart.Position.Y - pos) > .1 then
            tween:Pause()
            local cf = plr.Character.HumanoidRootPart.CFrame
            local info =
                TweenInfo.new((math.abs(plr.Character.HumanoidRootPart.Position.Y - pos) / 50), Enum.EasingStyle.Linear)

            local tween =
                tween_s:Create(
                plr.Character:WaitForChild("HumanoidRootPart"),
                info,
                {CFrame = CFrame.new(cf.X, pos, cf.Z)}
            )
            tween:Play()
            tween.Completed:Wait()
            return tpT(CFrame.new(t.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, t.Z), k, cur)
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
function Shoot(pos)
    shooting = true
    shootpos = pos
    ClickR("Rifle")
    wait(.3)
    shooting = false
end
function TpTween(pos)
    noclip = true
    nodrown2 = true
    waterwalker2 = true
    tweening = true
    tpT(pos, nil, pos)
    waterwalker2 = false
    tweening = false
    nodrown2 = false
    noclip = false
end
local FishUp = CFrame.new(8580.072265625, -2138.8325195313, -17087.634765625)
local plr = game.Players.LocalPlayer
function Tp(pos)
    if plr.Character:FindFirstChild("HumanoidRootPart") then
        if (plr.Character.HumanoidRootPart.Position - pos.p).magnitude < 25 then
            plr.Character.HumanoidRootPart.CFrame = pos
        end
    end
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
    if
        not IsFishMan(pos) and
            not IsFishMan(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
     then
        TpTween(pos)
    end
end

local islandpos = {
    ["Beginner"] = {
        pos = Vector3.new(963.68322753906, 6.999988079071, 930.81439208984),
        cframe = CFrame.new(963.68322753906, 6.999988079071, 930.81439208984)
    },
    ["Sandora"] = {
        pos = Vector3.new(-1183.6104736328, 3.999988079071, 1160.6843261719),
        cframe = CFrame.new(-1183.6104736328, 3.999988079071, 1160.6843261719)
    },
    ["Shell Town"] = {
        pos = Vector3.new(-522.48345947266, 1.330083489418, -4415.0463867188),
        cframe = CFrame.new(-522.48345947266, 1.330083489418, -4415.0463867188)
    },
    ["Roca"] = {
        pos = Vector3.new(5361.7734375, 4.385636806488, -4922.6181640625),
        cframe = CFrame.new(5361.7734375, 4.385636806488, -4922.6181640625)
    },
    ["Orange Town"] = {
        pos = Vector3.new(-6946.1884765625, 6.7007327079773, -5304.4321289063),
        cframe = CFrame.new(-6946.1884765625, 6.7007327079773, -5304.4321289063)
    },
    ["Zou Island"] = {
        pos = Vector3.new(-4305.59375, 7.2924075126648, -2547.3698730469),
        cframe = CFrame.new(-4305.59375, 7.2924075126648, -2547.3698730469)
    },
    ["Colloseum"] = {
        pos = Vector3.new(-2041.0588378906, 6.8539614677429, -7575.888671875),
        cframe = CFrame.new(-2041.0588378906, 6.8539614677429, -7575.888671875)
    },
    ["Fort F1"] = {
        pos = Vector3.new(2830.8464355469, 6.4515147209167, -990.10711669922),
        cframe = CFrame.new(2830.8464355469, 6.4515147209167, -990.10711669922)
    },
    ["Fort C1"] = {
        pos = Vector3.new(-9910.03125, 66.870376586914, -14847.78125),
        cframe = CFrame.new(-9910.03125, 66.870376586914, -14847.78125)
    },
    ["Gravito Fort"] = {
        pos = Vector3.new(2463.2507324219, 3.693286895752, -15327.31640625),
        cframe = CFrame.new(2463.2507324219, 3.693286895752, -15327.31640625)
    },
    ["Fishman Island"] = {
        pos = Vector3.new(5638.99, -90, -16611.217),
        cframe = CFrame.new(5638.99, -90, -16611.217)
    },
    ["Fishman Cave"] = {
        pos = Vector3.new(5682.5888671875, 4.0750117301941, -16458.37890625),
        cframe = Vector3.new(5682.5888671875, 4.0750117301941, -16458.37890625)
    },
    ["Restaurant"] = {
        pos = Vector3.new(-3909.71289, 49.753788, -5569.91211),
        cframe = CFrame.new(-3909.71289, 49.753788, -5569.91211, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    },
    ["Arlong"] = {
        pos = Vector3.new(
            805.336426,
            15.4988766,
            -13050.21,
            -0.584341884,
            0,
            -0.811507583,
            -0,
            1,
            0,
            0.811507583,
            0,
            -0.584341884
        ),
        cframe = CFrame.new(805.336426, 15.4988766, -13050.21)
    },
    ["Coco"] = {
        pos = Vector3.new(-4023.6276855469, 7.5435557365417, -15541.575195313),
        cframe = CFrame.new(-4023.6276855469, 7.5435557365417, -15541.575195313)
    }
}

function GetListIsland()
    local tb = {}
    for k, v in pairs(islandpos) do
        table.insert(tb, k)
    end
    return tb
end
local t = require(game:GetService("ReplicatedStorage").Modules.SwordHandle.SwordInfo)
rawset(t.Katana, "Range", Vector3.new(30, 30, 30))

local Window =
    Library.new(
    "<font color='rgb(255, 204, 0)'><b>Sun</b></font>Hub <font size ='11' color='rgb(80,80,80)'>PREMIUM</font>"
)

local Tab = Window:Tab("Main")

local ExampleToggle =
    Tab:Toggle(
    "Level Farm",
    Farm,
    function(state)
        Settings.Farm = state
    end
)
local Dropdown =
    Tab:Dropdown(
    "Farm Method",
    false,
    {
        "Rifle",
        "Sword"
    },
    Settings.FarmMode,
    function(Selected)
        --print(Selected)
        Settings.FarmMode = Selected

        --Tp(islandpos[Selected].cframe)
    end
)
local ExampleToggle =
    Tab:Toggle(
    "Auto Block",
    Farm,
    function(state)
        Settings.Block = state
    end
)

local listnottoblock = {Run = true, Jump = true, JumpPower = true, WalkSpeed = true}
local blocking = false
spawn(
    function()
        while wait() do
            if Settings.Block then
                for k, v in pairs(game.Workspace.NPCs:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and not v:FindFirstChild("Kiet") then
                        v.Humanoid.Animator.AnimationPlayed:Connect(
                            function(a, b)
                                if not listnottoblock[a] and Settings.Block and not blocking then
                                    if v:FindFirstChild("HumanoidRootPart") then
                                        if
                                            (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude <
                                                13
                                         then
                                            game:GetService("VirtualInputManager"):SendKeyEvent(
                                                true,
                                                Enum.KeyCode.F,
                                                false,
                                                game
                                            )
                                            --wait()
                                            blocking = true
                                            wait(.2)
                                            blocking = false
                                            game:GetService("VirtualInputManager"):SendKeyEvent(
                                                false,
                                                Enum.KeyCode.F,
                                                false,
                                                game
                                            )
                                        end
                                    end
                                end
                            end
                        )
                        local t = Instance.new("IntValue", v)
                        t.Name = "Kiet"
                    end
                end
            end
        end
    end
)
-- Tab:Seperator()
-- local ExampleToggle =
-- Tab:Toggle(
--     "Ship Farm",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
-- local Label = Tab:Label("0,0,0")

-- local Refresh = Tab:Button("Set Ship Farm Position", "Set Ship Farm Position", function()
--     --Dropdown:Refresh({"1 new", "2 new", "3 new"})
-- end)
-- Tab:Toggle(
--     "Ignore Galleon",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
local Misc = Window:Tab("Misc")
local ExampleToggle =
    Misc:Toggle(
    "No Fall Damage",
    Settings.NoFall,
    function(state)
        Settings.NoFall = state
    end
)
local ExampleToggle =
    Misc:Toggle(
    "Water No Damage",
    Settings.WaterNoDame,
    function(state)
        Settings.WaterNoDame = state
    end
)
local ExampleToggle =
    Misc:Toggle(
    "Inf Roll",
    Settings.InfRoll,
    function(state)
        Settings.InfRoll = state
    end
)
local ExampleToggle =
    Misc:Toggle(
    "Water Walker",
    Settings.WaterWalker,
    function(state)
        Settings.WaterWalker = state
    end
)
local ExampleToggle =
    Misc:Toggle(
    "Water No Drown",
    Settings.NoDrown,
    function(state)
        Settings.NoDrown = state
    end
)
local ExampleToggle =
    Misc:Toggle(
    "Safe Mode",
    Settings.SafeMode,
    function(state)
        Settings.SafeMode = state
    end
)
local Refresh =
    Misc:Button(
    "No Fog",
    "No Fog",
    function()
        --  Dropdown:Refresh({"1 new", "2 new", "3 new"})
        if game.Lighting:FindFirstChild("DepthOfFieldF") then
            game.Lighting:FindFirstChild("DepthOfFieldF"):Destroy()
        end
        if game.Lighting:FindFirstChild("Blur") then
            game.Lighting:FindFirstChild("Blur"):Destroy()
        end
        if game.Lighting:FindFirstChild("BlurF") then
            game.Lighting:FindFirstChild("BlurF"):Destroy()
        end
        if game.Lighting:FindFirstChild("Bloom") then
            game.Lighting:FindFirstChild("Bloom"):Destroy()
        end
        if game.Lighting:FindFirstChild("Atmosphere") then
            game.Lighting:FindFirstChild("Atmosphere"):Destroy()
        end
        while wait() do
            game.Lighting.FogEnd = 9999999999999
        end
    end
)


local DropdownMultiSelection =
    Misc:Dropdown(
    "Auto Stat",
    true,
   Settings.AutoStat,
    nil,
    function(i,v)
        -- print(Table,Selected)
        --Table = Selected
        Settings.AutoStat[i]=v
        --print(i,v)
    end
)
spawn(
    function()
        while wait() do
            if tb then
                for k, v in pairs(tb) do
                    if v and data.Stats.SkillPoints.Value > 0 then
                        game.ReplicatedStorage.Events.stats:FireServer(k, nil, 1)
                    end
                end
            end
        end
    end
)
Misc:Seperator()

local ExampleToggle =
    Misc:Toggle(
    "Auto Rejoin",
    Settings.Rejoin,
    function(state)
        Settings.Rejoin = state
    end
)
local ExampleToggle =
    Misc:Toggle(
    "Join PS",
    Settings.JoinPs,
    function(state)
        Settings.JoinPs = state
    end
)
local Box = Misc:Textbox("PS", function(text)
    Settings.PS=text
end,Settings.PS)
Misc:Seperator()

local ExampleToggle =
    Misc:Toggle(
    "Auto Kick",
    Settings.AutoKick,
    function(state)
        Settings.AutoKick = state
    end
)
local SliderExample = Misc:Slider("Kick Time (Minute)", Settings.RejoinTime, 1, 360, function(value)
    Settings.RejoinTime=value
end)
spawn(function() 
    while wait() do 
        if Settings.AutoKick then 
            if game.workspace.DistributedGameTime > Settings.RejoinTime*60 then 
                game.Players.LocalPlayer:Kick("Auto Kick")
            end
        end
        if Settings.Rejoin then 
            if game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt") then
                if not Settings.JoinPs then 
                    while wait() do
                        game.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
                    end
                else
                    while wait() do
                        game.TeleportService:Teleport(1730877806, plr)
                    end
                end
                
            end
        end
    end
end)

Misc:Seperator()

spawn(
    function()
        local start = tick()
        local last = tick()

        while wait() do
            if
                Settings.SafeMode and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
                    not plr.PlayerGui:FindFirstChild("DEATHGUI")
             then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").FloorMaterial == Enum.Material.Air and
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y > -0.1
                 then
                    last = tick()
                else
                    start = tick()
                end
            else
                start = tick()
                last = tick()
            end
            if Settings.SafeMode then
            -- print(last-start)
            end

            if last - start >= 10 then
                game.Players.LocalPlayer:Kick("Safe Mode Kicked you to prevent banned")
            end
        end
    end
)


local Misc = Window:Tab("ESP")
-- local ExampleToggle =
-- Misc:Toggle(
--     "DF ESP",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
local ExampleToggle =
    Misc:Toggle(
    "Island ESP",
    Settings.IslandE,
    function(state)
        Settings.IslandE = state
    end
)

-- local ExampleToggle =
-- Misc:Toggle(
--     "Player ESP",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
-- local ExampleToggle =
-- Misc:Toggle(
--     "Item ESP",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
-- local Misc = Window:Tab("Webhook")
-- local Box = Misc:Textbox("Web Hook Url", function(text)
--     print(text)
-- end)
-- local ExampleToggle =
-- Misc:Toggle(
--     "DF Webhook",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
-- local ExampleToggle =
-- Misc:Toggle(
--     "Item Webhook",
--     Farm,
--     function(state)
--         Settings.Block = state
--     end
-- )
local Misc = Window:Tab("Teleport")

local Dropdown =
    Misc:Dropdown(
    "Tp Island",
    false,
    GetListIsland(),
    nil,
    function(Selected)
        --print(Selected)

        Tp(islandpos[Selected].cframe)
    end
)

local Refresh =
    Misc:Button(
    "Stop Tween",
    "Stop tween",
    function()
        --  Dropdown:Refresh({"1 new", "2 new", "3 new"})
        STOP = true
    end
)
local Misc = Window:Tab("Local Player")
local SliderExample =
    Misc:Slider(
    "Select WalkSpeed",
    Settings.WalkSpeed,
    20,
    200,
    function(value)
        Settings.WalkSpeed = value
    end
)
Misc:Toggle(
    "Change Walkspeed",
    Settings.ChangeSpeed,
    function(state)
        Settings.ChangeSpeed = state
    end
)

local Misc = Window:Tab("Settings")
local Dropdown =
Misc:Dropdown(
    "Farm Mode",
    false,
    {
        "Behind",
        "Under"
    },
    Settings.FarmType,
    function(Selected)
        --print(Selected)
        Settings.FarmType = Selected

        --Tp(islandpos[Selected].cframe)
    end
)
Misc:Toggle(
    "Auto Save",
    Settings.AutoSave,
    function(state)
        Settings.AutoSave = state
        if not State then 
            wait(.1)
            SaveSettings()
        end
    end
)
spawn(
    function()
        while wait() do
            if Settings.ChangeSpeed then
                if plr.Character:FindFirstChild("Humanoid") then
                    plr.Character.Humanoid.WalkSpeed = Settings.WalkSpeed
                end
            end
        end
    end
)
local c = 0

local g = {
    KeyCode = Enum.KeyCode.Unknown,
    UserInputState = Enum.UserInputState.Begin,
    UserInputType = Enum.UserInputType.MouseButton1
}

--print(c)
local func
function GetClick()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "MeleeScript" and (getfenv(v).script.Parent) ~= nil then
            if tostring(debug.getconstant(v, 2)) == "FindFirstChildWhichIsA" then
                --print(#debug.getconstants(v))
                return v
            end
        end
    end
end
function GetClickGun()
    for k, v in pairs(getgc()) do
        if tostring(getfenv(v).script) == "GunMain" and (getfenv(v).script.Parent) ~= nil then
            if tostring(debug.getconstant(v, 1)) == "false" then
                -- v(g,false)
                --  print(getfenv(v).script:GetFullName())
                return v
            end
        end
    end
end

function Click(type)
    -- print(getfenv(func).script.Parent,getfenv(func).script,getfenv(func).script:GetFullName())
    if not func or getfenv(func).script.Parent == nil then
        func = GetClick()
    end
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
end
local funcr
function ClickR(type)
    -- print(getfenv(func).script.Parent,getfenv(func).script,getfenv(func).script:GetFullName())
    if not funcr or getfenv(funcr).script.Parent == nil then
        funcr = GetClickGun()
    end
    spawn(
        function()
            --local t=tick()
            funcr(g, false)

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
local AutoClick = false
spawn(
    function()
        while wait() do
            if AutoClick then
                --spawn(function()
                Click()
            -- end)
            end
        end
    end
)
function GetQuest(quest)
    local t = tick()
    repeat
        wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.T, false, game)
    until game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") or tick() - t > 3
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild("NPCCHAT") then
        repeat
            wait()
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
local plr = game.Players.LocalPlayer
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
while wait() do
    if Settings.Farm then
        if Settings.FarmMode == "Sword" then
            local sword, equip = GetSword()
            if sword and not equip then
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(sword)
                end
            end

            local Dt = CheckQuest()
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
            if
                game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == false and
                    not game.Players.LocalPlayer.QuestCD.Value
             then
                Tp(Dt.Questpos)
                wait(1)
                GetQuest(Dt.Quest)
            end
            olddd = Dt

            for k, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v.Name == mob and Settings.Farm and not plr.PlayerGui:FindFirstChild("DEATHGUI") then
                    if
                        (game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                            game.Players.LocalPlayer.QuestCD.Value) and
                            v:FindFirstChild("Humanoid") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0
                     then
                        AutoClick = true
                        local orgin = v.HumanoidRootPart.Position.Y
                        repeat
                            wait()
                            local sword, equip = GetSword()
                            if sword and not equip then
                                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(sword)
                                end
                            end
                            --Click()

                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and
                                    game.Players.LocalPlayer.Character.Parent == game.Workspace.PlayerCharacters and
                                    not plr.PlayerGui:FindFirstChild("DEATHGUI")
                             then
                                local cf =
                                    v.HumanoidRootPart.CFrame +
                                    Vector3.new(0, -v.HumanoidRootPart.Position.Y + orgin - 12, 0)
                                local pos = CFrame.new(cf.X, cf.Y, cf.Z)
                                if Settings.FarmType=="Behind" then 
                                    pos=v.HumanoidRootPart.CFrame*CFrame.new(0,0,12)
                                end
                                if
                                    (v.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).magnitude >
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
                                not ((game:GetService("Players").LocalPlayer.PlayerGui.Quest.Quest.Visible == true or
                                    game.Players.LocalPlayer.QuestCD.Value) and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0)
                        AutoClick = false
                    end
                end
            end
        elseif Settings.FarmMode == "Rifle" then
            local questdata = CheckQuest("Rifle")
            if data.Stats.SpawnPoint.Value ~= questdata.Island then
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
                        Settings.Farm and
                        v:FindFirstChild("HumanoidRootPart") and
                        v:FindFirstChild("Humanoid") and
                        v:FindFirstChild("Head") and
                        v.Humanoid.Health > 0
                 then
                    Tp(questdata.Mobpos)

                    repeat
                        wait()
                        Tp(questdata.Mobpos)
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
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.R, false, game) -- local ohString1 = "fire"
                    until 
                    not Settings.Farm or
                        not (v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") and
                            v:FindFirstChild("HumanoidRootPart") and
                            v.Humanoid.Health > 0)
                end
            end
        end
    end
end
