

if isstscrptloaded  then
    return
end

getgenv().isstscrptloaded = true

local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local CoreGuiService = game:GetService("CoreGui")
local TweenService = game:GetService('TweenService')
local tslaba='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 




if not httrest then
return game:GetService("Players").LocalPlayer:Kick("http function not supported")
end

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

outline.Name = "outline"
outline.Parent = mainframe2
outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
outline.BorderColor3 = Color3.fromRGB(85, 85, 255)
outline.Position = UDim2.new(0, 0, 0.205173597, 0)
outline.Size = UDim2.new(0, 282, 0, 0)

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

changestatus("loading api")

task.wait(.5)



local didapiloadedsucesfuly = true


xpcall(function()
loadstring(httrest({Url="https://raw.githubusercontent.com/Bura1458/Script/main/tnfapilol.lua", Method="GET"}).Body)()
end,function()
didapiloadedsucesfuly = false
end)

task.wait(1)
if didapiloadedsucesfuly == false or not tightstudioscoolsettings then
    changestatus("error occured while trying to load api")
    task.wait(5)
    playdisconnectscreents()
    return
end



local infstam = false
local killaura = false 
local autoheal = false
local lootfilter = false
local autofarmdebouncets = false
local fastinteractionts = false
local autospeedts = false
local autotoxic = false
local minigun = false

local autohealdelay = tightstudioscoolsettings.autohealdelay
local autohealholddelay = tightstudioscoolsettings.autohealdelay
local rangetable = {}
local playerservicets = game:GetService("Players")
local me = playerservicets.LocalPlayer
local silentdrydistance = tightstudioscoolsettings.silentdrydistance
local killauradistance = tightstudioscoolsettings.killauradistance
local dmgafterswing = tightstudioscoolsettings.dmgafterswing
local killauradelay = tightstudioscoolsettings.killauradelay
local totaltreelogsts = 0


playdisconnectscreents()
task.wait(2)

local Material

xpcall(function()
Material = loadstring(httrest({Url="https://raw.githubusercontent.com/Bura1458/Script/main/module.lua", Method="GET"}).Body)()
end,function()
while true do end
return
end)


local X = Material.Load({
    Title = "TNF by almighty bura ",
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
    Title = "autoloot"
})

local W = X.New({
    Title = "autofarm"
})


W.TextField({
    Text = "max tree logs",
    Callback = function(Value)
     if tonumber(Value) then
    tightstudioscoolsettings.maxtreelogs = tonumber(Value)
      end
    end,
    Enabled = false
})

W.Toggle({
    Text = "autofarm",
    Callback = function(Value)
       tightstudioscoolsettings.treeautofarmts = Value
       autofarmdebouncets = false
    end,
    Enabled = false
})

Y.Toggle({
    Text = "minigun",
    Callback = function(Value)
       minigun = Value
       tightstudioscoolsettings.funnyminigun = Value
       tightstudioscoolapia:minigungobrrr(tightstudioscoolsettings.funnyminigun)
    end,
    Enabled = false
})


Y.Toggle({
    Text = "inf stam",
    Callback = function(Value)
       infstam = Value
    end,
    Enabled = false
})



Y.Toggle({
    Text = "kill aura",
    Callback = function(Value)
       killaura = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "auto toxic",
    Callback = function(Value)
       autotoxic = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "auto heal",
    Callback = function(Value)
       autoheal = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "fast interaction",
    Callback = function(Value)
       fastinteractionts = Value
    end,
    Enabled = false
})

Z.Toggle({
    Text = "loot filter",
    Callback = function(Value)
       lootfilter = Value
    end,
    Enabled = false
})

Y.TextField({
    Text = "change range",
    Callback = function(Value)
     if tonumber(Value) then
      tightstudioscoolapia:changerange(Value)
      end
    end,
    Enabled = false
})

Y.TextField({
    Text = "ammo capacity",
    Callback = function(Value)
     if tonumber(Value) then
    tightstudioscoolsettings.maxreloadammots = tonumber(Value)
      end
    end,
    Enabled = false
})

Z.Button({
Text = 'Silent dry',
Callback = function()

tightstudioscoolapia:lootskidtss(silentdrydistance,lootfilter)
end,
	Menu = {
	Information = function(self)
	X.Banner({
	Text = 'Teleports you under the player and drys them.'
				})
			end
		}
	})



Y.TextField({
    Text = "bag capacity",
    Callback = function(Value)
    if tonumber(Value) then
       tightstudioscoolapia:changebagcapacity(tonumber(Value))
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "hunger capacity",
    Callback = function(Value)
        if tonumber(Value) then
       tightstudioscoolapia:changehungercapacity(tonumber(Value))
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "warmth capacity",
    Callback = function(Value)
        if tonumber(Value) then

       tightstudioscoolapia:changewarmthcapacity(tonumber(Value))
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "killaura distance",
    Callback = function(Value)
        if tonumber(Value) then

       killauradistance = tonumber(Value)
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "killaura delay",
    Callback = function(Value)
        if tonumber(Value) then

       killauradelay = tonumber(Value)
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "dmgafterswing",
    Callback = function(Value)
        if tonumber(Value) then

       dmgafterswing = tonumber(Value)
       end
    end,
    Enabled = false
})

Z.TextField({
    Text = "silent dry distance",
    Callback = function(Value)
        if tonumber(Value) then

       silentdrydistance = tonumber(Value)
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "auto heal hold delay",
    Callback = function(Value)
        if tonumber(Value) then

       autohealholddelay = tonumber(Value)
       end
    end,
    Enabled = false
})

Y.TextField({
    Text = "auto heal  delay",
    Callback = function(Value)
        if tonumber(Value) then

       autohealdelay = tonumber(Value)
       end
    end,
    Enabled = false
})

while wait() do
if infstam == true then
tightstudioscoolapia:changestaminacapacity(tonumber(100))
end 
if autoheal == true  and me.Status.Health.Value<100 and  me.Status.IsDead.Value~=true then
pcall(function()
   if autohealdelay ~= tonumber(0) then
    task.wait(autohealdelay)
   end
    tightstudioscoolapia:holdbandage("Bandage")
    tightstudioscoolapia:tsusebandage()
       if autohealholddelay ~= tonumber(0) then
    task.wait(autohealholddelay)
end
    tightstudioscoolapia:equipobjectts("Bandage")
    tightstudioscoolapia:holdbandage("Bandage")
    tightstudioscoolapia:tsusebandage()
    if autohealholddelay ~= tonumber(0) then
    task.wait(autohealholddelay)
end
    equipobjectts("Bandage")
end)
end


if killaura == true then
tightstudioscoolapia:damageplayertss(killauradistance,killauradelay,dmgafterswing,autotoxic)
end
if fastinteractionts == true then
    tightstudioscoolapia:fastinteractwithobjectts()
end
if tightstudioscoolsettings.treeautofarmts == true then
   if tightstudioscoolsettings.totaltreelogs >= tightstudioscoolsettings.maxtreelogs then
       tightstudioscoolsettings.treeautofarmts = false
       return
       end
   task.wait(1)
  tightstudioscoolapia:getclosestobjecttome("tree")
    task.wait(.5)
    tightstudioscoolapia:teleportoclosestobject() 
    task.wait(.5)
    tightstudioscoolapia:interactwithobjectsts(true)
    task.wait(1)
    tightstudioscoolapia:getclosestlogtome("log")
    task.wait(1)

end
end
