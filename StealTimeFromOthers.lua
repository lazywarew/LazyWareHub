if isstscrptloaded then
    return
end




local me = game:GetService("Players").LocalPlayer
local mychar = me.Character
local cam = game:GetService("Workspace").Camera
local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)

local TweenService = game:GetService('TweenService')
local CoreGuiService = game:GetService("CoreGui")
local autopickupdistance = tonumber(5)
local tslaba='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 



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

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local plrservicets = game:GetService("Players")
local me = plrservicets.LocalPlayer
local mychar = me.Character
local mymousets = me:GetMouse()

local autotoxicval = false
local killaura = false 
local SwordHitboxExpander = false 
local killauraautoteleport = false 
local speedstateval = false 
local autojumpstateval = false 
local autoclickstateval = false 
local autospinval = false 

local autospinvelocityobject = nil 
local previouskillauratarget = nil

local autospinspeedval = 50
local killauradistance = 20
local AutoTeleportDistance = 12
local SwordHitboxExpanderSize = 10
local SwordHitboxExpanderTransparency = 0.35
local HumanoidSpeedlolts = 16


local DefaultHumanoidRootPartSize = me.Character.HumanoidRootPart.Size
local DefaultHumanoidSpeed = me.Character.Humanoid.WalkSpeed

local equippedsword = nil 
local equippedswordhitpart = nil 
local previousplayername = ""

local function sendtoxicmessage()
    local toxicwords = {"cry to mom "..utf8.char(0x1F480),"uninstall roblox "..utf8.char(0x1F971),"im sleeping","when will competition arrive","is this why you play alone "..utf8.char(0x1F480),"L "..previouskillauratarget.Name,"your my son"}
    
    local randomtoxicmessage = toxicwords[math.random(0,#toxicwords)]
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(randomtoxicmessage,"All")
    previousplayername = ""
    end

    
local function onSwordEquip(sword,swordhitpart)
    equippedsword = sword
    equippedswordhitpart = swordhitpart
end

local function damagekid(player,swordhitpart)
    pcall(function()
    firetouchinterest(player.Character.Head,swordhitpart,0)
    task.wait()
    firetouchinterest(player.Character.Head,swordhitpart,1)
    end)
end

me.CharacterAdded:Connect(function(newchar)
    repeat task.wait(1) until newchar and newchar:FindFirstChild("HumanoidRootPart")
    mychar = newchar

    if autospinvelocityobject then 
    autospinvelocityobject:Destroy()
    autospinvelocityobject = nil 
    end 

    if autospinval == true then 
    autospinvelocityobject = Instance.new("BodyAngularVelocity")
    autospinvelocityobject.Name = "_fish"
    autospinvelocityobject.Parent = me.Character.HumanoidRootPart
    autospinvelocityobject.MaxTorque = Vector3.new(0, math.huge, 0)
    autospinvelocityobject.AngularVelocity = Vector3.new(0,autospinspeedval,0)
    end

end)

task.wait(.5)

if me:FindFirstChild("PlayerStats") then
local killstrealvalue = me.PlayerStats:FindFirstChild("Killstreak")
killstrealvalue:GetPropertyChangedSignal("Value"):Connect(function()
if autotoxicval == true and killstrealvalue.Value>0 then 
sendtoxicmessage()
task.wait()
end
end)
end


playdisconnectscreents()
task.wait(2)


local X = Material.Load({
    Title = "Steal Time From Others by bura",
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
    Text = "walkspeed",
    Callback = function(Value)
       speedstateval = Value
    end,
    Enabled = false
})


Y.Toggle({
    Text = "autojump",
    Callback = function(Value)
        autojumpstateval = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "autospin",
    Callback = function(Value)
       autospinval = Value

        if autospinval == true and autospinvelocityobject == nil then 
            autospinvelocityobject = Instance.new("BodyAngularVelocity")
            autospinvelocityobject.Name = "_fish"
            autospinvelocityobject.Parent = me.Character.HumanoidRootPart
            autospinvelocityobject.MaxTorque = Vector3.new(0, math.huge, 0)
            autospinvelocityobject.AngularVelocity = Vector3.new(0,autospinspeedval,0)
        elseif autospinval == false and autospinvelocityobject  then 
            autospinvelocityobject:Destroy()
            autospinvelocityobject = nil 
        end
    end,
    Enabled = false
})


Y.Toggle({
    Text = "autoclick",
    Callback = function(Value)
        autoclickstateval = Value
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
        autotoxicval = Value
    end,
    Enabled = false
})
    
Y.Toggle({
    Text = "kill aura auto tp",
    Callback = function(Value)
       killauraautoteleport = Value
    end,
    Enabled = false
})

Y.Toggle({
    Text = "Hitbox Expander",
    Callback = function(Value)
       SwordHitboxExpander = Value

       if SwordHitboxExpander == false  then 
        for i,v in pairs(plrservicets:GetPlayers()) do 
            if v~=me and  v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health>0 and v.Character:FindFirstChild("HumanoidRootPart") then 
                v.Character.HumanoidRootPart.Size =  DefaultHumanoidRootPartSize
                v.Character.HumanoidRootPart.Transparency = 1
                v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 150, 250)
            end
        end

       end
    end,
    Enabled = false
})

Y.Toggle({
    Text = "Hitbox expander visibility",
    Callback = function(Value)
       if Value == true then 
            SwordHitboxExpanderTransparency = 0.35
       else
        SwordHitboxExpanderTransparency = 1
       end
    end,
    Enabled = true
})

Z.Slider({
    Text = "speed",
    Callback = function(Value)
        HumanoidSpeedlolts = tonumber(Value)
    end,
    Min = DefaultHumanoidSpeed,
    Max = 35,
    Def = DefaultHumanoidSpeed
})

Z.Slider({
    Text = "auto spin speed",
    Callback = function(Value)
        autospinspeedval = Value 

        if autospinvelocityobject and me.Character and me.Character:FindFirstChild("HumanoidRootPart") then 
        autospinvelocityobject.AngularVelocity = Vector3.new(0,autospinspeedval,0)
        end
    end,
    Min = 30,
    Max = 190,
    Def = autospinspeedval
})



Z.Slider({
    Text = "killaura distance",
    Callback = function(Value)
     killauradistance = tonumber(Value)
    end,
    Min = 0,
    Max = 50,
    Def = killauradistance
})

Z.Slider({
    Text = "autoteleport distance",
    Callback = function(Value)
     AutoTeleportDistance = tonumber(Value)
    end,
    Min = 0,
    Max = 50,
    Def = AutoTeleportDistance

})

Z.Slider({
    Text = "hitbox expander size",
    Callback = function(Value)
    SwordHitboxExpanderSize = tonumber(Value)
    end,
    Min = 0,
    Max = 50,
    Def = SwordHitboxExpanderSize
})



local oldnamecallts

oldnamecallts = hookmetamethod(game, "__namecall", newcclosure(function(self,...)
local method = getnamecallmethod();
if  method == "FireServer"  and not checkcaller()   then
local args = {...}

if args[1] and typeof(args[1]=="string") then

    if  args[1] == "SwordResizer" then 
        return task.wait(9e9) --// bohohoho
    end 
    
    if  args[1] == "BodyResizer" then 
        return task.wait(9e9) --// bohohoho
    end 
    
    if  args[1] == "Speed" then 
        return task.wait(9e9) --// bohohoho
    end 
end
end
return oldnamecallts(self,...)
end))



while task.wait() do

    if speedstateval == true then 
        if me.Character and me.Character:FindFirstChild("Humanoid") and me.Character:FindFirstChild("HumanoidRootPart") then 
            me.Character.Humanoid.WalkSpeed = HumanoidSpeedlolts
        end
    end 

    if autojumpstateval == true then 
        if keypress and me.Character and me.Character:FindFirstChild("Humanoid") and me.Character:FindFirstChild("HumanoidRootPart") then 
            keypress(0x20)
        end
    end

    if autoclickstateval == true  and mouse1click then 

    end

    if me.Character and me.Character:FindFirstChild("Sword") and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
        local equippedsword = me.Character:FindFirstChildWhichIsA("Tool")

        if equippedsword and equippedsword.Name == "Sword" and equippedsword:FindFirstChild("Handle")  then 
           local SwordHandle = equippedsword:FindFirstChild("Handle")
            local SwordHitPart = nil 

           for i,v in pairs(SwordHandle:GetChildren()) do 
                if v:IsA("Part") and v:FindFirstChild("TouchInterest") then 
                    SwordHitPart = v 
                end
           end 
           

            onSwordEquip(equippedsword,SwordHitPart)
        end
    end

    if SwordHitboxExpander == true then 
        for i,v in pairs(plrservicets:GetPlayers()) do 
            if v~=me and  v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health>0 and v.Character:FindFirstChild("HumanoidRootPart") then 
                v.Character.HumanoidRootPart.Size = Vector3.new(SwordHitboxExpanderSize,SwordHitboxExpanderSize,SwordHitboxExpanderSize)
                v.Character.HumanoidRootPart.Transparency = SwordHitboxExpanderTransparency
                v.Character.HumanoidRootPart.Color = Color3.fromRGB(255, 150, 250)
            end
        end
    end 

        if killaura == true and equippedsword and  me.Character and me.Character:FindFirstChild("Sword") and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 

        for i,v in pairs(plrservicets:GetPlayers()) do 
            if v~=me and  v.Character and v.Character:FindFirstChild("Humanoid")   and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.Humanoid.Health>0  and me.Character and me.Character:FindFirstChild("HumanoidRootPart") then 
                
                local Distance = (me.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
               
                if killauraautoteleport == true and Distance<=AutoTeleportDistance then 
                    me.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame+Vector3.new(0,10,0)
                end 

                if Distance <= killauradistance  then 

                    if autoclickstateval == true and mouse1click then 
                        mouse1click()
                    end 

                    previouskillauratarget = v
                    damagekid(v,equippedswordhitpart)   
                    end
                end
            end
    end
end

