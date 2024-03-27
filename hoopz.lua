
if isstscrptloaded then
    return
end




local china = false
local me = game:GetService("Players").LocalPlayer
local mychar = me.Character
local reachdistance = tonumber(5)
local autoguarddistance = tonumber(20)
local cloestcourt = nil
local closesthoop = nil
local cam = game:GetService("Workspace").Camera
local aimbot = false
local annoying = false
local autojump = false
local shootfunc 
local autoshoot = false
local aimbotoffset = tonumber(65)
local autoshootdelay = tonumber(.1)
local loopspeed = false
local extraspeed = tonumber(16)
local rangeindicatorveriable = false
local autofirstperson = true
local silentaim = false
local silentaimoffset = tonumber(5)
local autochangepower = false
local conntsb = false
local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)

local TweenService = game:GetService('TweenService')
local CoreGuiService = game:GetService("CoreGui")
local autopickup = false 
local autopickupdistance = tonumber(5)
local tslaba='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 


local defaultspeed = tonumber(16)
local maxspeed = tonumber(19)
task.wait(.4)


if not httrest then
return game:GetService("Players").LocalPlayer:Kick("http function not supported")
end





getgenv().isstscrptloaded = true



local tweenInfo = TweenInfo.new(
    .6, -- Time
    Enum.EasingStyle.Linear, -- EasingStyle
    Enum.EasingDirection.Out, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime
)



local loadinggui = Instance.new("ScreenGui")
local mainframe2 = Instance.new("Frame")
local outline = Instance.new("Frame")
local statuslabel = Instance.new("TextLabel")

guiprotectionfunctionts(loadinggui)

loadinggui.Name = "loadinggui"
loadinggui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe2.Name = "mainframe"
mainframe2.Parent = loadinggui
mainframe2.AnchorPoint = Vector2.new(0.5, 0.5)
mainframe2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainframe2.Position = UDim2.new(0.5, 0, 0.5, 0)
mainframe2.Size = UDim2.new(0, 282, 0, 144)

task.wait(1.5)
outline.Name = "outline"
outline.Parent = mainframe2
outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
outline.BorderColor3 = Color3.fromRGB(85, 85, 255)
outline.Position = UDim2.new(0, 0, 0.205173597, 0)
outline.Size = UDim2.new(0, 282, 0, 0)

task.wait(1)
statuslabel.Name = "statuslabel"
statuslabel.Parent = mainframe2
statuslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
statuslabel.BackgroundTransparency = 1.000
statuslabel.Size = UDim2.new(0, 282, 0, 27)
statuslabel.Font = Enum.Font.GothamBlack
statuslabel.Text = ""
statuslabel.TextColor3 = Color3.fromRGB(85, 85, 255)
statuslabel.TextScaled = true
statuslabel.TextSize = 14.000
statuslabel.TextStrokeTransparency = 0.000
statuslabel.TextWrapped = true

local function changestatus(value)
statuslabel.Text = value
end


local tween = TweenService:Create(mainframe2, tweenInfo, {Rotation = 360})
local tween2 = TweenService:Create(mainframe2, tweenInfo, {Transparency   = 1})


--// disconnect screen
local function playdisconnectscreents()
tween:Play()
tween.Completed:Connect(function()
statuslabel.Transparency = 1
tween2:Play()
end)

tween2.Completed:Connect(function()
loadinggui:Remove()
end)
end

task.wait(.3)


if  not TSSettings.key  then
changestatus("outdated settings?")
task.wait(5)
playdisconnectscreents()
return
end

changestatus("loading library")

local Material

xpcall(function()
Material = loadstring(httrest({Url="https://raw.githubusercontent.com/Bura1458/Script/main/module.lua", Method="GET"}).Body)()
end,function()
while true do end
return
end)

changestatus("loading api")


task.wait(.5)
for i,v in pairs(getgc()) do
if type(v) == "function" and getinfo(v).name == "e" then
if getinfo(v).nups == tonumber(9) then
shootfunc = v
break;
end
end
end


local function setpower(power)
    game:GetService("Players").LocalPlayer.Power.Value = tonumber(power)
end

me.CharacterAdded:Connect(function(character)
    task.wait(1)
    mychar = character
    cam = game:GetService("Workspace").Camera
end)

local function attack()
if mychar and mychar:FindFirstChild("HumanoidRootPart")  then
for _,v in pairs(game:GetService("Workspace").Courts:GetChildren()) do
if v:IsA('Model')   then
if cloestcourt == nil then
cloestcourt = v
elseif (mychar.HumanoidRootPart.Position-v.Status.Position).magnitude < (mychar.HumanoidRootPart.Position-cloestcourt.Status.Position).magnitude then
cloestcourt = v
end
end
end
end
for _,a in pairs(cloestcourt:GetChildren()) do
if a:IsA("Model") and a.Name == "Basketball Hoop" then
if closesthoop == nil then
closesthoop = a
elseif (mychar.HumanoidRootPart.Position-a.hoop.Position).magnitude < (mychar.HumanoidRootPart.Position-closesthoop.hoop.Position).magnitude then
closesthoop = a
end
end
end
end


mychar.Humanoid.Jumping:Connect(function(value)
if value == true and silentaim == true and mychar:FindFirstChild("Basketball") then
attack()
local distance = (mychar.HumanoidRootPart.Position-closesthoop.hoop.Position).magnitude
if autochangepower == true then
if math.floor(distance)<=tonumber(22) then
setpower(tonumber(30))
silentaimoffset = tonumber(8)
elseif math.floor(distance)<=tonumber(25) then
setpower(tonumber(35))
silentaimoffset = tonumber(8)
--// custom offsets
--[[
elseif math.floor(distance)==tonumber(73)   then
setpower(tonumber(85))
silentaimoffset = tonumber(74)
elseif math.floor(distance)==tonumber(72)    then
setpower(tonumber(85))
silentaimoffset = tonumber(74)
elseif math.floor(distance)==tonumber(71)    then
setpower(tonumber(85))
silentaimoffset = tonumber(5)
elseif math.floor(distance)==tonumber(70)   then
setpower(tonumber(85))
silentaimoffset = tonumber(5)
--]]
--// end of custom offsets
elseif math.floor(distance)<=tonumber(29) then
setpower(tonumber(40))
silentaimoffset = tonumber(15)
elseif math.floor(distance)<=tonumber(34) then
setpower(tonumber(45))
silentaimoffset = tonumber(15)
elseif math.floor(distance)<=tonumber(36) then
setpower(tonumber(50))
silentaimoffset = tonumber(15)
elseif math.floor(distance)<=tonumber(42) then
setpower(tonumber(55))
silentaimoffset = tonumber(15)
elseif math.floor(distance)<=tonumber(45) then
setpower(tonumber(60))
silentaimoffset = tonumber(13)
elseif math.floor(distance)<=tonumber(51) then
setpower(tonumber(65))
silentaimoffset = tonumber(13)
elseif math.floor(distance)<=tonumber(55) then
setpower(tonumber(70))
silentaimoffset = tonumber(30)
elseif math.floor(distance)<=tonumber(63) then
setpower(tonumber(75))
silentaimoffset = tonumber(20)
elseif math.floor(distance)<=tonumber(69) then
setpower(tonumber(80))
silentaimoffset = tonumber(30)
elseif math.floor(distance)<=tonumber(74) then
silentaimoffset = tonumber(15)
setpower(tonumber(85))
end
end
return
end
if value == true and mychar:FindFirstChild("Basketball") and aimbot == true  then
attack()
wait()
local distance = (mychar.HumanoidRootPart.Position-closesthoop.hoop.Position).magnitude
if autochangepower == true then
if math.floor(distance)<=tonumber(15) then
setpower(tonumber(30))
elseif math.floor(distance)<=tonumber(19) then
setpower(tonumber(35))
elseif math.floor(distance)<=tonumber(22) then
setpower(tonumber(40))
elseif math.floor(distance)<=tonumber(26) then
setpower(tonumber(45))
elseif math.floor(distance)<=tonumber(29) then
setpower(tonumber(50))
elseif math.floor(distance)<=tonumber(35) then
setpower(tonumber(55))
elseif math.floor(distance)<=tonumber(39) then
setpower(tonumber(60))
elseif math.floor(distance)<=tonumber(44) then
setpower(tonumber(65))
elseif math.floor(distance)<=tonumber(40) then
setpower(tonumber(70))
elseif math.floor(distance)<=tonumber(35) then
setpower(tonumber(75))
elseif math.floor(distance)<=tonumber(62) then
setpower(tonumber(80))
elseif math.floor(distance)<=tonumber(71) then
setpower(tonumber(85))
end
end
local distancebetweencama = (cam.CFrame.Position-closesthoop.hoop.Position).magnitude
distance = math.floor(distance+aimbotoffset/math.huge)


cam.CFrame =  CFrame.new(mychar.HumanoidRootPart.Position,closesthoop.hoop.Position+Vector3.new(0,distance,0))
if autofirstperson == true then
me.CameraMaxZoomDistance = .5
end
if autoshoot == true then
task.wait(autoshootdelay)
shootfunc() 
end

task.wait()
me.CameraMaxZoomDistance = tonumber(125)
end
end)


local oldindex
oldindex = hookmetamethod(game, "__namecall", newcclosure(function(...)
   local method = getnamecallmethod();
    if  method == "GetMouseLocation" and not checkcaller()  and silentaim == true  then
    if silentaim == true and mychar:FindFirstChild("Basketball") then
     attack()
end
   if autofirstperson == true then
cam.CFrame =  CFrame.new(mychar.HumanoidRootPart.Position,closesthoop.hoop.Position+Vector3.new(0,0,0))
   end
  
  
   
      local newposition, visibility = cam:WorldToScreenPoint(closesthoop.hoop.CFrame.Position)
    local distancebetweenmeandhoop = (mychar.HumanoidRootPart.Position-closesthoop.hoop.Position).magnitude
   return (Vector2.new(math.floor(newposition.X,newposition.Y+silentaimoffset/distancebetweenmeandhoop+25)))
    end


   return oldindex(...)
end))
task.wait(3.5)

  

local randeindicator = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

randeindicator.Parent = game.CoreGui


randeindicator.Name = "randeindicator"
randeindicator.Enabled = false

Frame.Name = "Frame"
Frame.Parent = randeindicator
Frame.AnchorPoint = Vector2.new(.5,.6)
Frame.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.485636115, 0, 0, 0)
Frame.Size = UDim2.new(0, 600, 0, 60)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(0, 0, 0)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.250
Frame.ImageTransparency = 0

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0, 403, 0, 59)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "owo"
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true

task.wait(.5)

local function updatetext(text,color)
TextLabel.Text = text
TextLabel.TextColor3 = color
end




playdisconnectscreents()
task.wait(2)


local X = Material.Load({
    Title = "Hoopz by bura",
    Style = TSSettings.Style,
    SizeX = TSSettings.SizeX,
    SizeY = TSSettings.SizeY,
    Theme = TSSettings.Theme,
    ColorOverrides = {
        MainFrame = TSSettings.MainFrame
    }
})


local Y = X.New({
    Title = "script"
})

local Z = X.New({
    Title = "script settings"
})



Y.Toggle({
    Text = "reach",
    Callback = function(Value)
       china = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "auto pickup",
    Callback = function(Value)
       autopickup = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "auto jump",
    Callback = function(Value)
       autojump = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "aimbot",
    Callback = function(Value)
       aimbot = Value
    end,
    Enabled = false
})



Y.Toggle({
    Text = "range indicator",
    Callback = function(Value)
     randeindicator.Enabled = Value
    rangeindicatorveriable = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "silent aim",
    Callback = function(Value)
     silentaim = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "camlock",
    Callback = function(Value)
       autofirstperson = Value
    end,
    Enabled = true
})

Y.Toggle({
    Text = "auto shoot",
    Callback = function(Value)
       autoshoot = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "auto change power",
    Callback = function(Value)
       autochangepower = Value
    end,
    Enabled = false
})



Y.Toggle({
    Text = "autoguard",
    Callback = function(Value)
      annoying = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "speed",
    Callback = function(Value)
    if loopspeed == true and Value == false then
      mychar.Humanoid.WalkSpeed = defaultspeed
    end
     loopspeed = Value
    end,
    Enabled = false
})



--// sliders

Z.Slider({
    Text = "reach distance",
    Callback = function(Value)
     reachdistance = tonumber(Value)
    end,
    Min = 0,
    Max = 50,
    Def = reachdistance
})

Z.Slider({
    Text = "pickup distance",
    Callback = function(Value)
     autopickupdistance = tonumber(Value)
    end,
    Min = 0,
    Max = 50,
    Def = autopickupdistance
})

Z.Slider({
    Text = "autoguard  distance",
    Callback = function(Value)
     autoguarddistance = tonumber(Value)
    end,
    Min = 0,
    Max = 50,
    Def = autoguarddistance
})



Z.Slider({
    Text = "extra speed",
    Callback = function(Value)
     extraspeed = tonumber(Value)
    end,
    Min = defaultspeed,
    Max = maxspeed,
    Def = defaultspeed
})




while task.wait() do
pcall(function()
if china == true then
if mychar and mychar:FindFirstChild("HumanoidRootPart") then
for _,players in pairs(game:GetService("Players"):GetPlayers()) do
if players.Name ~= me.Name then
local mag = (players.Character.HumanoidRootPart.Position-mychar.HumanoidRootPart.Position).magnitude
if mag <= tonumber(reachdistance) then
if players.Character:FindFirstChild("Basketball") then 
if autojump == true then 
 mychar.Humanoid.Jump = true
end
firetouchinterest(players.Character.Basketball.Ball,mychar['Right Arm'],0)
wait()
firetouchinterest(players.Character.Basketball.Ball,mychar['Right Arm'],1)
end
end
end
end
end
end

if annoying == true and mychar~=nil and mychar:FindFirstChild("Humanoid") and mychar:FindFirstChild("HumanoidRootPart") then
for _,plr in pairs(game:GetService("Players"):GetPlayers()) do 
if plr.Name ~= me.Name  and plr.Character:FindFirstChild("Basketball") and plr.Character.Humanoid.WalkSpeed>tonumber(0) and mychar.Humanoid.WalkSpeed>tonumber(0) then
local mag = (mychar.HumanoidRootPart.Position-plr.Character.HumanoidRootPart.Position).magnitude
if mag <= tonumber(autoguarddistance) then
mychar.Humanoid:MoveTo(plr.Character.HumanoidRootPart.Position+Vector3.new(-5,0,-8))

end
end
end
end
if rangeindicatorveriable == true then
if mychar and mychar:FindFirstChild("HumanoidRootPart") then
attack()
task.wait()
local mag = (mychar.HumanoidRootPart.Position-closesthoop.hoop.Position).magnitude
if silentaim == true then
if math.floor(mag) <=tonumber(74)and mychar:FindFirstChild("Basketball") then
updatetext("in range",Color3.fromRGB(0, 255, 0))
else
updatetext("out of range",Color3.fromRGB(196, 40, 28))
end
return
end
if math.floor(mag) <=tonumber(68)and mychar:FindFirstChild("Basketball") and silentaim == false and aimbot == true then
updatetext("in range",Color3.fromRGB(0, 255, 0))
else
updatetext("out of range",Color3.fromRGB(196, 40, 28))
end
end
end
end)
if loopspeed == true then
if mychar and mychar:FindFirstChild("Humanoid") then
mychar.Humanoid.WalkSpeed = tonumber(extraspeed)
end
end
if autopickup == true then
pcall(function()
for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v:IsA("Tool") and v.Name == "Basketball" and mychar~=nil    and v:FindFirstChild("Ball") then 
local distance = (mychar.HumanoidRootPart.Position-v.Ball.Position).magnitude 
if distance <=tonumber(autopickupdistance) then
firetouchinterest(v.Ball,mychar['Right Arm'],0)
wait()
firetouchinterest(v.Ball,mychar['Right Arm'],1)
end
end 
end 
end)
end
end
