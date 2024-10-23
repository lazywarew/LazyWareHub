if isstscrptloaded then 
    return 
end 

getgenv().isstscrptloaded = true

local plrservicets = game:GetService("Players")
local me = plrservicets.LocalPlayer
local mymousets = me:GetMouse()
local stupidhttpservicets = game:GetService("HttpService")
local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local CoreGuiService = game:GetService("CoreGui")
local TweenService = game:GetService('TweenService')
local tslaba='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 


if not httrest then
    me:Kick("http function not supported")
    return 
    end
    
    if not guiprotectionfunctionts then 
    me:Kick("missing loader dependancies")
     return 
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
loadinggui.Name = "tightstudiopro_"..math.random(1000,5000)
loadinggui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

task.wait(1)
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

task.wait(1)



changestatus("loading library")

local uilibrary = nil

xpcall(function()
uilibrary = loadstring(httrest({Url="https://raw.githubusercontent.com/lazywarew/Script/main/uilibrary.lua", Method="GET"}).Body)()
end,function()
me:Kick("an error occured while loading ui we are sorry!")
return
end)

task.wait(1)

changestatus("checking whitelist")

task.wait(1)
iswhitelisted = true
changestatus("loading api")


--// important stuff


task.wait(1)
--// misc 
local noobreplicatedstorage = game:GetService("ReplicatedStorage")
local noobworkspace = game:GetService("Workspace")
local mousets = me:GetMouse()
local mycamts = noobworkspace.CurrentCamera

local function promptdiscordinvite()
    
    httrest({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json",
        ["Origin"] = "https://discord.com"
    },
    Body = stupidhttpservicets:JSONEncode({
        cmd = "INVITE_BROWSER",
        args = {
            code = "UVsD8V5J42"
        },
        nonce = stupidhttpservicets:GenerateGUID(false)
        })
    })
    end

--// silent aim related stuff
local silentaimval = false 
local silentaimhitpartts  = "head"
local mystupidteamts  = nil 
local previoustarget = nil
local silentaimhitparts = {"head","torso"}
local defaultfovsize = 165
local canweusedrawinglibraryts = false 
local canweusedebuglibraryts = false 

--// anti fall damage  related stuff
local antifalldamageval = false 

--// anti ragdoll related stuff 
local antiragdollval = false 

--// fast respawn related stuff
local fastrespawnval = false 

--// inf stam related stuff
local infstaminaval = false 

--// no dash delay related stuff
local nodashdelayval = false 

--// kill aura related stuff
local killauraval = false 
local killauradelayval = 0
local killauraswingdelayval = 0.125
local killauradistanceal = 8.65

--// weapon data related stuff

local weaponitemdatasts = {
    ["Melees"] = {
     
    }
}

--// auto toxic stuff
local autotoxicval = false 


local function sendtoxicmessage()
    local toxicwords = {
        "lazyware on top " .. utf8.char(0x0001F451), --// crown
        "jeeper creeper sends hes regards " .. utf8.char(0x00002620), --// double skull
        "L " .. previoustarget.Name .. " " .. utf8.char(0x0001F971), --// yawn
        "too ez " .. " " .. utf8.char(0x0001F971), --// yawn
        "get rekt " .. previoustarget.Name .. " " .. utf8.char(0x0001F971) --// yawn
    }

    local randomtoxicwordindex = math.random(1,#toxicwords)
	local chosentoxicmessage = toxicwords[randomtoxicwordindex]
end


--// esp related stuff 
local playerespval = false 
local ballespval = false 
local teamcheckval = false 
local RunService = game:GetService("RunService")
local TracerColor = Color3.fromRGB(255,255,255)
local TracerTextColor = Color3.fromRGB(255,255,255)
local TracerLines = {}
 


local function Get2DPosition(PartPosition) 
    local Vector, Visible = mycamts:WorldToViewportPoint(PartPosition)
    local ViewportPoint = Vector2.new(Vector.X, Vector.Y)
    return ViewportPoint, Visible
end


local function DrawNewLine(TracerPart,TracerText,TracerPartType)

    for tracerindex,tracerdata in pairs(TracerLines) do
        if tracerdata.TracerPart == TracerPart then 
            tracerdata.TracerLine.Visible = false 
            tracerdata.TracerLine:Remove()
            table.remove(TracerLines,tracerindex)
        end
    end 
    
    local TracerLine = Drawing.new("Line")
    TracerLine.Visible = true
    TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)

    local TracerLineText = Drawing.new("Text")
    TracerLineText.Visible = true
    TracerLineText.Center = true
    TracerLineText.Outline = true
    TracerLineText.Font = 2
    TracerLineText.Size = 15
    
    local To, Visible = Get2DPosition(TracerPart.Position)
    TracerLine.To = To
    TracerLine.Color = TracerColor
    TracerLine.Thickness = 1
    TracerLine.Transparency = 1
    TracerLine.ZIndex = 1

    TracerLineText.Text = TracerText
    TracerLineText.Position = Vector2.new(To.X,To.Y)
    TracerLineText.Color = TracerTextColor

    table.insert(TracerLines,{
    ["TracerPart"] = TracerPart,
    ["TracerPartType"] = TracerPartType,
    ["TracerLine"] = TracerLine,
    ["TracerLineText"] = TracerLineText,
    ["TracerLineTextText"] = TracerText
    })
end


local function UpdateTracerLines()
    for tracerindex,tracerdata in pairs(TracerLines) do

        if  not tracerdata.TracerPart:IsDescendantOf(workspace) then 
            tracerdata.TracerLine.Visible = false 
            tracerdata.TracerLine:Remove()
            tracerdata.TracerLineText.Visible = false 
            tracerdata.TracerLineText:Remove()
            table.remove(TracerLines,tracerindex)
        end

        local TracerLine = tracerdata.TracerLine
        local TracerLineText = tracerdata.TracerLineText
        local TracerLineTextText =  tracerdata.TracerLineTextText

        TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
    
        
        if tracerdata.TracerPartType == "Player" and tracerdata.TracerPart.Parent then 
    
             local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

                if Visible == true and  playerespval == true then


       
                    
                    TracerLine.Color = Color3.fromRGB(255, 110, 60)
                    TracerLine.To = To
                    TracerLine.Visible = true

                    TracerLineText.Color = Color3.fromRGB(60, 90, 255)
                    TracerLineText.Position = Vector2.new(To.X,To.Y-65)
                    TracerLineText.Text = TracerLineTextText
                    TracerLineText.Visible = true

                else
                    TracerLine.Visible = false
                    TracerLineText.Visible = false 
                end
         end     
    end
end




RunService.RenderStepped:Connect(function() 
        UpdateTracerLines()
end)


plrservicets.PlayerAdded:Connect(function(newplayer)
    newplayer.CharacterAdded:Connect(function(newplayerchar)
        task.wait(1)
        if playerespval == true then 
            pcall(function()
                repeat task.wait(1) until newplayerchar and newplayerchar:FindFirstChild("HumanoidRootPart")
                if newplayerchar.Name ~= me.Name then
                    local newplayercharhumanoidrootpart = newplayerchar:FindFirstChild("HumanoidRootPart") 
                    DrawNewLine(newplayercharhumanoidrootpart,newplayerchar.Name,"Player")
                end
            end)
        end
    end)
end)


 
for playerindex,player in pairs(plrservicets:GetPlayers()) do 
    player.CharacterAdded:Connect(function(newplayerchar)
        task.wait(1)
        if playerespval == true then 
            pcall(function()
                repeat task.wait(1) until newplayerchar and newplayerchar:FindFirstChild("HumanoidRootPart")
                if newplayerchar.Name ~= me.Name then
                    local newplayercharhumanoidrootpart = newplayerchar:FindFirstChild("HumanoidRootPart") 
                    DrawNewLine(newplayercharhumanoidrootpart,newplayerchar.Name,"Player")
                end
            end)
        end
    end)
end




if Drawing and Drawing.new then 
    canweusedrawinglibraryts = true
end
    
if getupvalue and getconstant then 
    canweusedebuglibraryts = true
end

if canweusedrawinglibraryts == false then 
     me:Kick("drawing library not supported sorry")
    return
end

if canweusedrawinglibraryts == false then 
    me:Kick("debug library not supported sorry")
   return
end


local cwnetworkmanagerts = nil 
local cwtoggleragdollts = nil 
local cwstaminamanager = nil 
local cwdashcooldownmanager = nil 

for i,v in pairs(getgc(true)) do 
    if typeof(v) == "table" and rawget(v,"GetEventHandler") and typeof(v.GetEventHandler) == "function" then 
        cwnetworkmanagerts = v
    end
    if typeof(v) == "table" and rawget(v,"toggleRagdoll") and typeof(v.toggleRagdoll) == "function" then 
        cwtoggleragdollts = v
    end
    if typeof(v) == "table" and rawget(v,"_setStamina") and typeof(v._setStamina) == "function" then 
        cwstaminamanager = v
    end
    if typeof(v) == "table" and rawget(v,"DASH_COOLDOWN") and typeof(v.DASH_COOLDOWN) == "number" then 
        cwdashcooldownmanager = v
    end
end 

if cwnetworkmanagerts == nil then 
    me:Kick("failed to load NetworkManager")
    return 
end

local geteventhandlerts = cwnetworkmanagerts.GetEventHandler
local getfunchandlerts = cwnetworkmanagerts.GetFunctionHandler

local eventhandlerseventsts = getupvalue(geteventhandlerts,1)
local funchandlerfuncsts = getupvalue(getfunchandlerts,1)

local cwtakefalldamagepacketts = eventhandlerseventsts["TakeFallDamage"].Remote
local cwstartfastrespawnpacketts = eventhandlerseventsts["StartFastRespawn"].Remote
local cwendfastrespawnpacketts = funchandlerfuncsts["CompleteFastRespawn"].Remote
local cwspawncharacterpacketts = funchandlerfuncsts["SpawnCharacter"].Remote
local cwmeleeswingpacketts = eventhandlerseventsts["MeleeSwing"].Remote
local cwmeleedamagepacketts = eventhandlerseventsts["MeleeDamage"].Remote


local oldtoggleragdollts = cwtoggleragdollts.toggleRagdoll 
local oldsetstaminats = cwstaminamanager._setStamina

local oldnamecallhookts

oldnamecallhookts = hookmetamethod(game, "__namecall", newcclosure(function(self,...)
   local method = getnamecallmethod();

   if method == "FireServer" and not checkcaller()   then
      if self == cwtakefalldamagepacketts  and antifalldamageval == true  then 
        local args  = {...}

       args[1] = 0
       return oldnamecallhookts(self,unpack(args))
       end 
    end
    
   return oldnamecallhookts(self,...)
end))


cwstaminamanager._setStamina = function(self,...)
    if infstaminaval == true then 
     local args = {...}
     local maxstamina = self["_maxStamina"]
     args[1] = maxstamina
     self._stamina = maxstamina 
     self._staminaChangedSignal:Fire(maxstamina)
     return oldsetstaminats(self,unpack(args))
    end
    return oldsetstaminats(self,...)
 end

 cwtoggleragdollts.toggleRagdoll = function(self,...)
    if antiragdollval == true then 
     local args = {...}
     args[1] = false 
     return oldtoggleragdollts(self,unpack(args))
    end
    return oldtoggleragdollts(self,...)
 end



task.wait(2)
    

--// auto toxic


--// silent aim stuff
local function getmousepositionts()
 return game:GetService("UserInputService"):GetMouseLocation()
end

--// handle respawning
me.CharacterAdded:Connect(function(newchar)
task.wait()
repeat task.wait(1) until newchar and newchar:FindFirstChild("HumanoidRootPart")
mycamts = workspace.CurrentCamera
end)



if canweusedrawinglibraryts == true then
fovcirclets = Drawing.new("Circle")
fovcirclets.Color = Color3.fromRGB(250, 160, 255)
fovcirclets.Thickness = 1
fovcirclets.NumSides = 40
fovcirclets.Radius = defaultfovsize
fovcirclets.Visible = false
fovcirclets.Filled = false
end


mymousets.Move:Connect(function()
 if silentaimval == true and fovcirclets.Visible == true then
 local newposts = getmousepositionts()
 fovcirclets.Position = newposts
 end
end)

local function startfastrespawnts() 
    cwstartfastrespawnpacketts:FireServer()
    task.wait(0.175)
    cwendfastrespawnpacketts:FireServer()
    task.wait(0.250)
    cwspawncharacterpacketts:FireServer()
end 

local function updatedashcooldownts(state)
    if state == true then 
        rawset(cwdashcooldownmanager,"DASH_COOLDOWN",0)
    else
        rawset(cwdashcooldownmanager,"DASH_COOLDOWN",3)
    end
end

local function killauradamageskidts()
   pcall(function()
        if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid")  then 
            for i,v in pairs(plrservicets:GetPlayers()) do 
            if v.Name~=me.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart")  and v.Character:FindFirstChild("Humanoid") and  me.Character:FindFirstChildOfClass("Tool") then 
            local mag = (me.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
            if mag<=killauradistanceal then 
                if v.Character.Humanoid.Health>1 then 
                   local currenttooltoattack = me.Character:FindFirstChildOfClass("Tool")
                    
                   if currenttooltoattack:FindFirstChild("Hitboxes")  then 
                    local weaponhitboxests = currenttooltoattack:FindFirstChild("Hitboxes")

                    if weaponhitboxests:FindFirstChild("Hitbox") then 
                    local killauraplayerhitpartlolts = "Right Leg"
                    local killauraplayerhitpartrandomnum = math.random(1,4)

                    if killauraplayerhitpartrandomnum == 1 and v.Character:FindFirstChild("Left Leg") then 
                        killauraplayerhitpartlolts = "Left Leg"
                    elseif killauraplayerhitpartrandomnum == 2 and v.Character:FindFirstChild("Right Leg") then 
                        killauraplayerhitpartlolts = "Right Leg"
                    elseif killauraplayerhitpartrandomnum == 3  and v.Character:FindFirstChild("Left Arm") then 
                        killauraplayerhitpartlolts = "Left Arm"
                     elseif killauraplayerhitpartrandomnum == 4 and v.Character:FindFirstChild("Right Arm") then 
                        killauraplayerhitpartlolts = "Right Arm"
                    end

                    if v.Character and v.Character:FindFirstChild("Default") then 
                        local parryshieldlol = v.Character:FindFirstChild("Default")
                        if parryshieldlol.Transparency == 0 then 
                            return 
                        end
                    end 

                    if v.Character and v.Character:FindFirstChild(killauraplayerhitpartlolts) then
                    local meleedamagepacketdatats = {
                        [1] = currenttooltoattack,
                        [2] = v.Character:FindFirstChild(killauraplayerhitpartlolts),
                        [3] = currenttooltoattack.Hitboxes.Hitbox,
                        [4] = v.Character:FindFirstChild(killauraplayerhitpartlolts).Position,
                        [5] = CFrame.new(0.4147491455078125, 0.83056640625, -0.5, 0.3826872706413269, 0, -0.9238779544830322, 0, 1, 0, 0.9238779544830322, 0, 0.3826872706413269),
                        [6] = Vector3.new(0.2512366771697998, 8.770820159043069e-08, 0.9679256677627563),
                        [7] = Vector3.new(0.7097946405410767, -0.4107980728149414, 0.5722206234931946),
                        [8] = Vector3.new(-0.9238779544830322, 0, -0.3826872706413269)
                    }
                    local meleeswingpacketdatats = {
                        [1] = currenttooltoattack,
                        [2] = 1
                    }

                    cwmeleeswingpacketts:FireServer(table.unpack(meleeswingpacketdatats))
                    task.wait(killauraswingdelayval) 
                    cwmeleedamagepacketts:FireServer(table.unpack(meleedamagepacketdatats))
                    task.wait(killauradelayval)
                        end
                     end
                    end
                 end
                end
             end 
          end
        end
   end)
end

local function choosehitpart(hitstate, skid)
    if hitstate == "head" then
        if skid:FindFirstChild("Head") then
            local chosenhitparthead = skid:FindFirstChild("Head")
            return chosenhitparthead
        end
    elseif hitstate == "torso" then 
        if skid:FindFirstChild("UpperTorso") then
            local chosenhitparttorso = skid:FindFirstChild("UpperTorso")
            return chosenhitparttorso
        end
    end
end

 
local function getclosestplrtocirclets(radius)
 
    local closestplayer, closestdistance = nil, radius or fovcirclets.Radius
 
    for i,v in pairs(plrservicets:GetPlayers()) do
        if (v.Character and v.Name ~= me.Name and v.Character:FindFirstChild("Head")) then
            local position, onscreen = mycamts:WorldToScreenPoint(v.Character.Head.Position)
            if onscreen then 
             local cursorPositionts  =  getmousepositionts()
             local distance = (cursorPositionts - Vector2.new(position.X, position.Y)).Magnitude
 
            if (distance < closestdistance) then
                closestdistance = distance
                closestplayer = v
            
             end
            end 
        end
    end
    
    return closestplayer
 end




task.wait(1)


playdisconnectscreents()
task.wait(2)




local maintab = uilibrary:New('Combat Warriors - [discord.gg/UVsD8V5J42]')
local misctab = maintab:Tab('Misc')
local combattab = maintab:Tab('Combat')
local silentaimtab = maintab:Tab('Silent aim')
local espTab = maintab:Tab('Esp')
local settingstab = maintab:Tab('Settings')
local discordservertab = maintab:Tab('Discord server')


misctab:Toggle("Anti FallDamage", function(bool)
	antifalldamageval = bool
end)

misctab:Toggle("Anti Ragdoll", function(bool)
	antiragdollval = bool
end)

misctab:Toggle("Inf Stamina", function(bool)
	infstaminaval = bool
end)

misctab:Toggle("no dash delay", function(bool)
	nodashdelayval = bool
    updatedashcooldownts(nodashdelayval)
end)

misctab:Toggle("Fast Respawn", function(bool)
	fastrespawnval = bool
end)

combattab:Toggle("KillAura", function(bool)
	killauraval = bool
end)

espTab:Toggle('Player esp',function(bool) 
playerespval = bool 
if playerespval == true then 
    local playercharacters = plrservicets:GetPlayers()

    for i,v in pairs(playercharacters) do
        if v.Character and v.Character.Name~=me.Name and v.Character:FindFirstChild("HumanoidRootPart") then  
        local HumanoidRootPart = v.Character:FindFirstChild("HumanoidRootPart")
        DrawNewLine(HumanoidRootPart,v.Name,"Player")
        end
    end 
    end
end)

settingstab:Textbox('Kill Aura Distance', '0 - inf', function(newkkillauradistance)  
	if tonumber(newkkillauradistance) then 
		local newkillauradistancenumber = tonumber(newkkillauradistance)

		if newkillauradistancenumber<0 then 
			newkillauradistancenumber = 0 
		end 
		
		killauradistanceal = newkillauradistancenumber
	end 
end)



settingstab:Textbox('Kill Aura Delay', '0 - inf', function(newkillauradelay)  
	if tonumber(newkillauradelay) then 
		local newkillauradelaynumber = tonumber(newkillauradelay)

		if newkillauradelaynumber<0 then 
			newkillauradelaynumber = 0 
		end 
		
		killauradelayval = newkillauradelaynumber
	end 
end)

settingstab:Textbox('Kill Aura Swing Delay', '0 - inf', function(newkillauraswingdelay)  
	if tonumber(newkillauraswingdelay) then 
		local newkillauraswingdelaynumber = tonumber(newkillauraswingdelay)

		if newkillauraswingdelaynumber<0 then 
			newkillauraswingdelaynumber = 0 
		end 
		
		killauraswingdelayval = newkillauraswingdelaynumber
	end 
end)

discordservertab:Button('copy invite', function() 
    if setclipboard then 
        setclipboard(tostring("discord.gg/FkFcbXjfXw"))
    end
end)

discordservertab:Button('join server', function() 
    promptdiscordinvite()
end)


misctab:Show('Misc')


while task.wait() do 
    if fastrespawnval == true then 
        if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
            if me.Character.Humanoid.Health<1 then 
                task.wait(0.250)
                startfastrespawnts()
            end
        end
    end
    if killauraval == true then 
        killauradamageskidts()
    end
end
