if isstscrptloaded then
    return
end

getgenv().isstscrptloaded = true



local plrservicets = game:GetService("Players")
local me = plrservicets.LocalPlayer
local mymousets = me:GetMouse()
local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local CoreGuiService = game:GetService("CoreGui")
local TweenService = game:GetService('TweenService')
local tslaba='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 
local TweenService = game:GetService('TweenService')
local CoreGuiService = game:GetService("CoreGui")




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

local Material

xpcall(function()
Material = loadstring(httrest({Url="https://raw.githubusercontent.com/lazywarew/LazyWareHub/main/olduilibrary.lua", Method="GET"}).Body)()
end,function()
me:Kick("an error occured while loading ui we are sorry!")
return
end)

iswhitelisted = true
changestatus("loading api")



repeat task.wait() until me.Character and me.Character:FindFirstChild("HumanoidRootPart")

task.wait(0.350)

--// defining some of our character stuff
local noobworkspace = game:GetService("Workspace")
local mychar = me.Character
local myhum = mychar:FindFirstChildWhichIsA("Humanoid")
local mousets = me:GetMouse()
local mycamts = workspace.CurrentCamera
local stupidhttpservice = game:GetService("HttpService")


--// important stuff
local infstaminafuncts
local maxbagspace = {}
local swingdelay = {}
local spread = {}
local sharedgetplayertable  = nil

--// esp and script stuff
local canweusedrawinglibraryts = false 
local RunService = game:GetService("RunService")
local TracerColor = Color3.fromRGB(255,255,255)
local TracerLines = {}


local playerespval = false
local animalespval = false
local chestesp = false
local treasurechestespval = false 
local playerremainespval = false


local function Get2DPosition(PartPosition) 
	local Vector, Visible = mycamts:WorldToViewportPoint(PartPosition)
	local ViewportPoint = Vector2.new(Vector.X, Vector.Y)
	return ViewportPoint, Visible
end

local function DrawNewLine(TracerPart,TracerPartType)
    local TracerLine = Drawing.new("Line")
	TracerLine.Visible = true
	TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)

	local To, Visible = Get2DPosition(TracerPart.Position)
	TracerLine.To = To
	TracerLine.Color = TracerColor
	TracerLine.Thickness = 1
	TracerLine.Transparency = 1
	TracerLine.ZIndex = 1

    table.insert(TracerLines,{
    ["TracerPart"] = TracerPart,
    ["TracerPartType"] = TracerPartType,
    ["TracerLine"] = TracerLine,
    })
end

local function UpdateTracerLines()
    for tracerindex,tracerdata in pairs(TracerLines) do

        if  not tracerdata.TracerPart:IsDescendantOf(workspace) then 
            tracerdata.TracerLine.Visible = false 
            tracerdata.TracerLine:Remove()
            table.remove(TracerLines,tracerindex)
        end

        local TracerLine = tracerdata.TracerLine
        TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
    
        if tracerdata.TracerPartType == "Player" and tracerdata.TracerPart  then 
    
             local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

                if Visible == true and  playerespval == true then

                    TracerLine.Color = Color3.fromRGB(75, 95, 240)
                    TracerLine.To = To
                    TracerLine.Visible = true
                else
                    TracerLine.Visible = false
                end
         end     

         --// animal esp 

         if tracerdata.TracerPartType == "Animal" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if Visible == true and  animalespval == true then

                   TracerLine.Color = Color3.fromRGB(0, 255, 132)
                   TracerLine.To = To
                   TracerLine.Visible = true
               else
                   TracerLine.Visible = false
               end
        end     

          --// player remains esp 

          if tracerdata.TracerPartType == "Playerremains" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if Visible == true and  playerremainespval == true then

                   TracerLine.Color = Color3.fromRGB(255, 120, 70)
                   TracerLine.To = To
                   TracerLine.Visible = true
               else
                   TracerLine.Visible = false
               end
        end     

           --// treasure chest esp

           if tracerdata.TracerPartType == "Treasurechest" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if treasurechestespval == true then

                   TracerLine.Color = Color3.fromRGB(255, 215, 110)
                   TracerLine.To = To
                   TracerLine.Visible = true
               else
                   TracerLine.Visible = false
               end
        end     


        --// house chest esp

          if tracerdata.TracerPartType == "Housechest" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if Visible == true and  playerremainespval == true then

                   TracerLine.Color = Color3.fromRGB(85, 30, 255)
                   TracerLine.To = To
                   TracerLine.Visible = true
               else
                   TracerLine.Visible = false
               end
        end     


    end
end


RunService.RenderStepped:Connect(function() 
	UpdateTracerLines()
end)


--// stupid default stats
local defaultspeedvalts = myhum.WalkSpeed
local defaultjumppowervalts = myhum.JumpPower

local defineventsfolder 
local targetfilterfolder =  noobworkspace:FindFirstChild("TargetFilter")
local autolootdistancets = 10
local chatremotevar
local interactionremotevarts 
local lootrequestremotets
local rndmnewfuncts = Random.new()


--// kill aura stuff
local stupidtoolthatweareholdingid = nil
local stupidtoolthatweareholdingname = nil
local killauradelayts = .5
local killauradistancets = 10
local killaurachargedistancets = 12
local killaurats = false
local isourswordcharged = false
local autoblockts = false
local autoblockdistancets  = 10

--// extra speed related stuff
local extraspeedvalts = defaultspeedvalts
local extrajumppowervalts = defaultjumppowervalts
local extraspeedandjumppowervalts = false


--// interface stuff
local interfaceguisfolder = nil

--// auto loot stuff
local playerlootingguits = nil
local itemsframeloottsvar
local itemsframeslootcrollvar 
local autolootts = false

--// inventory stuff
local stupidinventoryinterfacevar = nil
local stupidinventoryinterfacevarmain = nil
local stupidinventoryinterfaceitemsvar = nil
local stupidinventoryinterfaceitemmainvar = nil

--// this is part of inventory but we use this to get item names
local stupiditemthatweareholdingimg = nil
local stupiditemthatweareholdingimgleftinfo = nil
local stupiditemthatweareholdingimglefticon = nil
local stupiditemthatweareholdingviewpointleft = nil
local stupiditemthatweareholdingactualname =  nil

--// silent aim stuff
local closestlootplayerts = nil
local closestskidtous = nil
local silentaimval = false 
local stupidhitpart  
local defaultfovsize = 165
local silentaimhitpartts = "torso"

--// teleport stuff
local teleportservicets = game:GetService("TeleportService")
local streamsniperserverscanstate = "null"
local islandtoteleportts = ""
local noobuseridtostreamsnipe = 0
local noobusernametogotots = ""


--// inf stamina 
local infstaminalolts = false 

--// auto respawn stuff
local autorespawnondeadlolts = false 

local northwindislandsts = {
["beauval"] = {
placeid =  5620237900, --// beauval
},
["ellesmmere"] = {
placeid = 5620227713, --// ellesmmere
},
["cantermagne"] = {
placeid = 5620237741, --// cantermagne
},
["stonemore"] = {
placeid = 6249721735, --// stonemore
},
["rupert"] = {
placeid = 5465507265 --// rupert
},
}


if Drawing and Drawing.new then 
    canweusedrawinglibraryts = true
end
    
if canweusedrawinglibraryts == false then 
     me:Kick("drawing library not supported sorry")
    return
end


if game:GetService("ReplicatedStorage"):FindFirstChild("DefinEvents") then 
defineventsfolder = game:GetService("ReplicatedStorage"):FindFirstChild("DefinEvents")
end 
    

if defineventsfolder and defineventsfolder:FindFirstChild("InstanceRequestFunction") then
    local lootremoterequesttsvar = defineventsfolder:FindFirstChild("InstanceRequestFunction") 
    lootrequestremotets = lootremoterequesttsvar
end


 if game:GetService("ReplicatedStorage"):FindFirstChild("Interacting") then
    interactionremotevarts = game:GetService("ReplicatedStorage"):FindFirstChild("Interacting")
 end

 
if me.PlayerGui:FindFirstChild("InterfaceGuis") then
     interfaceguisfolder = me.PlayerGui:FindFirstChild("InterfaceGuis")
    if interfaceguisfolder:FindFirstChild("PlayerLooting") then
        local interfacelootgui = interfaceguisfolder:FindFirstChild("PlayerLooting")
        playerlootingguits = interfacelootgui
        end
end

if playerlootingguits and playerlootingguits.Main:FindFirstChild("Items") then
    local itemsframeloot = playerlootingguits.Main:FindFirstChild("Items")
    local itemsframelootscroll =  itemsframeloot:FindFirstChild("ScrollingContent")
    itemsframeloottsvar =  itemsframeloot
    itemsframeslootcrollvar = itemsframelootscroll
    end

if interfaceguisfolder and interfaceguisfolder:FindFirstChild("Inventory")  then
stupidinventoryinterfacevar = interfaceguisfolder:FindFirstChild("Inventory")
if stupidinventoryinterfacevar and stupidinventoryinterfacevar:FindFirstChild("Main") then
stupidinventoryinterfacevarmain = stupidinventoryinterfacevar:FindFirstChild("Main")
if stupidinventoryinterfacevarmain:FindFirstChild("Items") then
stupidinventoryinterfaceitemmainvar = stupidinventoryinterfacevarmain:FindFirstChild("Items")
if stupidinventoryinterfaceitemmainvar:FindFirstChild("ScrollingContent") then
stupidinventoryinterfaceitemmainvar = stupidinventoryinterfaceitemmainvar:FindFirstChild("ScrollingContent")
end
end
end
end



for i,v in pairs(getgc(true)) do
if typeof(v) == "function" and getinfo(v).name == "SetStamina" then
infstaminafuncts = v
end
if type(v) == "table" and rawget(v,"MaxBaseInventorySpace") then
table.insert(maxbagspace,v)
end
if type(v) == "table" and rawget(v,"SwingDelay") then
table.insert(swingdelay,v)
end
if type(v) == "table" and rawget(v,"Spread") then
table.insert(spread,v)
end
if type(v) == "table" and rawget(v,"GetPlayer") then
sharedgetplayertable = v
end
end
task.wait(3)




local function getmousepositionts()
 return game:GetService("UserInputService"):GetMouseLocation()
end



if canweusedrawinglibraryts == true then
fovcirclets = Drawing.new("Circle")
fovcirclets.Color = Color3.fromRGB(250, 160, 255)
fovcirclets.Thickness = 1
fovcirclets.NumSides = 40
fovcirclets.Radius = defaultfovsize
fovcirclets.Visible = false
fovcirclets.Filled = false
end
    


local function getclosestplrtocirclets(radius)
 
   local closestplayer, closestdistance = nil, radius or fovcirclets.Radius

   for i,v in pairs(plrservicets:GetPlayers()) do
       if (v.Character and v ~= me and v.Character:FindFirstChild("Head")) then
           local position, onscreen = mycamts:WorldToScreenPoint(v.Character.Head.Position)


            local cursorPositionts  =  getmousepositionts()
            local distance = (cursorPositionts - Vector2.new(position.X, position.Y)).Magnitude

           if (distance < closestdistance) then
               closestdistance = distance
               closestplayer = v
           
           end 
       end
   end
   
   return closestplayer
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


mymousets.Move:Connect(function()
 if silentaimval == true then
 local newposts = getmousepositionts()
 fovcirclets.Position = newposts
 end
end)


local oldindexts
oldindexts = hookmetamethod(game, "__index", newcclosure(function(...)
   local self, idx = ...
     if not checkcaller() and self == myhum and (idx == "WalkSpeed" or idx == "JumpPower") then
       if idx == "WalkSpeed" then
           return defaultspeedvalts
       elseif idx == "JumpPower" then
           return defaultjumppowervalts
       end
   end
   
   return oldindexts(...)
end))

task.wait(1.250)

local oldnamecallts
oldnamecallts = hookmetamethod(game, "__namecall", newcclosure(function(self,...)
   local method = getnamecallmethod();
    if  method == "Raycast" and silentaimval == true  and not checkcaller()    then


    local callingscriptlol = getcallingscript(self)
    if tostring(callingscriptlol.Name)=="ControlModule" then 
    return oldnamecallts(self,...)
    end 


   local args = {...}

   if args[3] == nil  then 
   return oldnamecallts(self,...)
   end 

   local raycastparms = args[3]
   local raycastinstances = raycastparms["FilterDescendantsInstances"]

if raycastinstances[1] and raycastinstances[2] == nil  and tostring(raycastinstances[1].Name) == "TargetFilter" and raycastinstances[4] == nil then
    
      if closestskidtous   then
      if silentaimchosenhitpartts then
      stupidhitpart = silentaimchosenhitpartts
     local stupidraypos = args[1]
     local newstupiddirection =  (stupidhitpart.Position-stupidraypos).Unit*(stupidhitpart.Position-stupidraypos).Magnitude
      args[2] = newstupiddirection
      
        if stupidhitpart then
         stupidhitpart = nil
        end
       return oldnamecallts(self,unpack(args))
      end 
      end 
     end
    end
  return oldnamecallts(self,...)
end))

task.wait(1.350)

 






local handletypests = {
"Right";
"Left";
}



local function chooserandomhandle()
    local randomhandlets = handletypests[math.random(1,#handletypests)]
    return tostring(randomhandlets)
end

local function chooseblockingside(skid)
if mychar   then
local leftsidedistancets = (mychar.LeftLowerArm.Position-skid.Character.LeftLowerArm.Position).Magnitude
local rightsidedistancets = (mychar.RightLowerArm.Position-skid.Character.RightLowerArm.Position).Magnitude
if leftsidedistancets<rightsidedistancets then
return "Left"
elseif rightsidedistancets<leftsidedistancets then
return "Right"
else
local randomstupidhandle = chooserandomhandle()
return randomstupidhandle
end
end
end

local function randomcooldelayts(value)
local funnymultiplierts = rndmnewfuncts:NextNumber(0.2, 0.6)
local randomdelaytoreturntsa = rndmnewfuncts:NextNumber(0, value)+funnymultiplierts
task.wait(randomdelaytoreturntsa)
 end
 
 
local function getcurrentlyequippedtoolts()
local currentclientdatats = sharedgetplayertable:GetPlayer() --// get our client data

for index,object in pairs(currentclientdatats) do
if typeof(object) == "Instance" and string.len(object.Name)>20  then
stupidtoolthatweareholdingid = object
break;
else 
stupidtoolthatweareholdingid = nil 
stupiditemthatweareholdingviewpointleft = nil
stupiditemthatweareholdingactualname = nil
end
end
end

local function getstupidtoolnamebyid()
if stupidinventoryinterfaceitemmainvar:FindFirstChild(stupidtoolthatweareholdingid.Name) then
stupiditemthatweareholdingimg = stupidinventoryinterfaceitemmainvar:FindFirstChild(stupidtoolthatweareholdingid.Name)
if stupiditemthatweareholdingimg:FindFirstChild("LeftItemInfo") then
stupiditemthatweareholdingimgleftinfo = stupiditemthatweareholdingimg:FindFirstChild("LeftItemInfo") 
if stupiditemthatweareholdingimgleftinfo:FindFirstChild("ItemIcon") then
stupiditemthatweareholdingimglefticon = stupiditemthatweareholdingimgleftinfo:FindFirstChild("ItemIcon")
if stupiditemthatweareholdingimglefticon:FindFirstChild("ViewportGui") then
stupiditemthatweareholdingviewpointleft = stupiditemthatweareholdingimglefticon:FindFirstChild("ViewportGui")
if stupiditemthatweareholdingviewpointleft:FindFirstChildWhichIsA("Model") then
stupiditemthatweareholdingactualname = stupiditemthatweareholdingviewpointleft:FindFirstChildWhichIsA("Model")
end
end
end
end
end
end


local function teleporttoplacets(placeid)
if not tonumber(placeid) then
placeid = tonumber(placeid)
end

pcall(function()
teleportservicets:Teleport(placeid,me)
end)
end



local function scanserversts(userid,gameid)

if not userid or  not gameid then
return 
end

if not tonumber(userid) then
userid = tonumber(userid)
end

if not tonumber(gameid) then
gameid = tonumber(gameid)
end

local stupidimgheadshot = httrest({
    Url = "https://thumbnails.robloMainTab.com/v1/users/avatar-headshot?userIds="..userid .. "&size=150x150&format=Png&isCircular=false"
})

if not stupidimgheadshot or not stupidimgheadshot.Body then
return 
end

local encodedstupidimgheadshot = stupidhttpservice:JSONDecode(stupidimgheadshot.Body).data[1].imageUrl


local totalserversscanned = 0
local stupidnextpagecursor = 0


 local stupidserverdata = httrest({
        Url = string.format("https://games.robloMainTab.com/v1/games/%s/servers/Public?sortOrder=Desc&limit=100%s", gameid, cursor and "&cursor=" .. cursor or "")
    })
    
    if not stupidserverdata or not stupidserverdata.Body then
    return 
    end
    
  local encodedserverdata = stupidhttpservice:JSONDecode(stupidserverdata.Body)
   totalserversscanned = totalserversscanned+1
   task.spawn(function()
   local dumbstupidserverdata = {}
 
   for _,stupidserver in pairs(encodedserverdata.data) do
   
   if stupidserver["playerTokens"] == nil then
   return "player token doesnt exist"
   end
   

     for i = 1,#stupidserver.playerTokens do
        table.insert(dumbstupidserverdata, {
      token = stupidserver.playerTokens[i],
      type = "AvatarHeadshot",
      size = "150x150",
      requestId = stupidserver.id
           })
     end
     local thumbnailpostreq = httrest({
                Url = "https://thumbnails.robloMainTab.com/v1/batch",
                Method = "POST",
                Body = stupidhttpservice:JSONEncode(dumbstupidserverdata),
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            
         local encodedthumbnaildata = stupidhttpservice:JSONDecode(thumbnailpostreq.Body).data
        if not encodedthumbnaildata then
        return 
        end
        
        for _, v in next, encodedthumbnaildata  do
         if v.imageUrl == encodedstupidimgheadshot then
         teleportservicets:TeleportToPlaceInstance(gameid, v.requestId)
         break;
         end
        end
   end
   end)

end



local function sendtoxicmessagets(playername)
   
end


local function setchargedelay(Value)
for i,v in pairs(swingdelay) do
    if tonumber(v.ChargeDelay) then

rawset(v,"ChargeDelay",tonumber(Value))
end
end
end

local function setspread(Value)
for i,v in pairs(spread) do
if tonumber(v.Spread) then
rawset(v,"Spread",tonumber(Value))
end
end
end



local function setswingdelay(Value)
for i,v in pairs(swingdelay) do
if tonumber(v.SwingDelay) then

rawset(v,"SwingDelay",tonumber(Value))
end
end
end

local function changerange(Value)
for i,v in pairs(spread) do
if tonumber(v.ProjectileMaxDistance) then
rawset(v,"ProjectileMaxDistance",tonumber(Value))
end
end    
end


local function isnearsafezonelolts()
    local myclentplayerentityaval = sharedgetplayertable:GetPlayer()
    local mycharacterroot = me.Character:FindFirstChild("HumanoidRootPart") 

    local targetfilterspawnfolder = targetfilterfolder:FindFirstChild("Spawns")
    local myclientplayerentityspawnfolderts = targetfilterspawnfolder:FindFirstChild(myclentplayerentityaval.Role)

    for i,v in pairs(myclientplayerentityspawnfolderts:GetChildren()) do 

        if (mycharacterroot.Position-v.Position).Magnitude<20 then 
            return true
        end
    end
    return false 
end

local function safeteleport(newposlol)
    if me  and me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
        local mycharacterroot = me.Character:FindFirstChild("HumanoidRootPart") 
        local funnyposlol = mycharacterroot.CFrame+Vector3.new(0,-math.random(5600,7500),0)

        local floatingpart =  Instance.new("Part")
        floatingpart.Name = "Part"
        floatingpart.Parent = game.Workspace
        floatingpart.CanCollide = true
        floatingpart.Anchored = true 
        floatingpart.Size = Vector3.new(250,5,250)
        task.wait()
        mycharacterroot.CFrame = mycharacterroot.CFrame+Vector3.new(0,-math.random(5600,7500),0)

       for i = 1,30 do  
             myhum:ChangeState(Enum.HumanoidStateType.GettingUp)
            floatingpart.CFrame = mycharacterroot.CFrame+Vector3.new(0,-5,0)
        end

         repeat task.wait() 
        local arewenearspawn = isnearsafezonelolts()
        until arewenearspawn == true 

        floatingpart:Destroy()
        task.wait()
        mycharacterroot.CFrame = newposlol
    end
end


local function setstaminalol(SetToMax,Value)
local myclentplayerentityaval = sharedgetplayertable:GetPlayer()

if SetToMax == true then 
    Value = myclentplayerentityaval.MaxStamina
end 

if not tonumber(Value) then 
Value = tonumber(Value)
end 
infstaminafuncts(myclentplayerentityaval,Value)
end


local function checkifdeadandrespawnts()
local myclentplayerentityaval = sharedgetplayertable:GetPlayer()

if myclentplayerentityaval.Health<1 then 
    if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and mychar then 
     safeteleport(mychar.HumanoidRootPart.CFrame)
    end
   end
end 


local function setbagspace(Value)
for i,v in pairs(maxbagspace) do
if tonumber(v.MaxBaseInventorySpace) then

rawset(v,"MaxBaseInventorySpace",tonumber(Value))
end
end
end


plrservicets.PlayerAdded:Connect(function(player)
    task.wait(1)
    pcall(function()
        player.CharacterAdded:Connect(function(playerchar)
            task.wait(1)
            if playerchar.Name ~= me.Name and playerchar and playerchar:FindFirstChild("HumanoidRootPart") then 
                local HumanoidRootPart = playerchar:FindFirstChild("HumanoidRootPart")
                DrawNewLine(HumanoidRootPart, "Player")
            end
        end)
    end)
end)

me.CharacterAdded:Connect(function(newchar)
    task.wait(1)
    repeat task.wait(1) until newchar and newchar:FindFirstChild("HumanoidRootPart")
    mychar = newchar
    myhum = newchar:FindFirstChildWhichIsA("Humanoid")
    mycamts = workspace.CurrentCamera
    end)
    

    if game:GetService("Workspace"):FindFirstChild("Carriables") then
     game:GetService("Workspace").Carriables.ChildAdded:Connect(function(obj)
     if playerremainespval == true then
     task.wait(5)
     if string.match(obj.Name,"Player remains") then
        
    DrawNewLine(obj.PrimaryPart, "Playerremains")
    end
    end
    end)
    end
        
    if targetfilterfolder:FindFirstChild("TreasureHuntMarkers") then 
        targetfilterfolder.TreasureHuntMarkers.ChildAdded:Connect(function(obj)
            if treasurechestespval == true then
                task.wait(5)
                DrawNewLine(obj,"Treasurechest")
            end 
        end)
    end 
    



if game:GetService("Workspace"):FindFirstChild("Props")  then
game:GetService("Workspace").Props.PlayerHouses.ChildAdded:Connect(function(item) do
task.wait(5)
pcall(function()
if chestesp == true then
for i,v in pairs(item:GetDescendants()) do
if item:IsA("Model") and item.Name == "Wooden chest" then
DrawNewLine(item.PrimaryPart, "Housechest")
end
end
end
end)
end
end)
end

if game:GetService("Workspace"):FindFirstChild("NPCs") then
game:GetService("Workspace").NPCs.Animals.ChildAdded:Connect(function(animal)
pcall(function()
if animalespval == true then
task.wait(5)
local text = string.gsub(animal.Name, "%d", "")
local text2 = string.split(text,"_")[1]
if animal.Character.PrimaryPart then
DrawNewLine(animal.Character.PrimaryPart,"Animal")
end
end
end)
end)
end


playdisconnectscreents()
task.wait(2)


local MainTab = Material.Load({
    Title = "Northwind - [discord.gg/UVsD8V5J42]",
    Style = TSSettings.Style,
    SizeX = TSSettings.SizeX,
    SizeY = TSSettings.SizeY,
    Theme = TSSettings.Theme,
    ColorOverrides = {
        MainFrame = TSSettings.MainFrame
    }
})

local misctab = MainTab.New({
    Title = "misc"
})

local esptab = MainTab.New({
    Title = "esps"
})


local weaponmodstab = MainTab.New({
    Title = "weapon mods"
})



local silentaimtab = MainTab.New({
    Title = "silent aim"
})



local streamsnipertab = MainTab.New({
    Title = "teleports"
})


streamsnipertab.Dropdown({
    Text = "island to tp at",
    Callback = function(Value)
       islandtoteleportts = Value
    end,
    Options = {
        "beauval",
        "ellesmmere",
        "cantermagne",
        "stonemore",
        "rupert",
    }
})
	
	
streamsnipertab.TextField({
Text = "userid to streamsnipe",
Callback = function(Value)
if tonumber(Value) then
noobuseridtostreamsnipe  = tonumber(Value)
end
end,
})


streamsnipertab.Button({
Text = 'teleport to island',
Callback = function()
if northwindislandsts[islandtoteleportts] then
local islandtoteleporttablets = northwindislandsts[islandtoteleportts]
teleporttoplacets(islandtoteleporttablets.placeid)
end
end,
	Menu = {
	Information = function(self)
	MainTab.Banner({
	Text = 'Teleports you under the player and drys them.'
				})
			end
		}
	})



streamsnipertab.Button({
Text = 'scan servers',
Callback = function()
if northwindislandsts[islandtoteleportts] then
local islandtoteleporttabletsa = northwindislandsts[islandtoteleportts]
scanserversts(noobuseridtostreamsnipe,islandtoteleporttabletsa.placeid)
end
end,
	Menu = {
	Information = function(self)
	MainTab.Banner({
	Text = 'Teleports you under the player and drys them.'
				})
			end
		}
	})
	
	

	
silentaimtab.Toggle({
Text = "silent aim",
Callback = function(Value)
silentaimval = Value
end,
Enabled = silentaimval
})




silentaimtab.Toggle({
Text = "fov visibility",
Callback = function(Value)
fovcirclets.Visible = Value
local newposts = getmousepositionts()
fovcirclets.Position = newposts
end,
Enabled = false
})

silentaimtab.Dropdown({
    Text = "aim part",
    Callback = function(Value)
       silentaimhitpartts = Value
    end,
    Options = {
        "head",
        "torso",
    }
})



silentaimtab.ColorPicker({
	Text = "fov color",
	Default = Color3.fromRGB(255,255,255),
	Callback = function(Value)
	if fovcirclets.Visible == true then
      fovcirclets.Color = Value
end
	end,
})

silentaimtab.Slider({
	Text = "fov size",
	Callback = function(Value)
	if fovcirclets.Visible == true then
	    fovcirclets.Radius = tonumber(Value)
        defaultfovsize = tonumber(Value)
	    end
	end,
	Min = 0,
	Max = 765,
	Def = fovcirclets.Radius
})

silentaimtab.Slider({
	Text = "fov thickness",
	Callback = function(Value)
	if fovcirclets.Visible == true then
	    fovcirclets.Thickness = tonumber(Value)
	    end
	end,
	Min = 1,
	Max = 50,
	Def = fovcirclets.Thickness
})


misctab.Slider({
	Text = "speed",
	Callback = function(Value)
	extraspeedvalts = tonumber(Value)
	end,
	Min = defaultspeedvalts,
	Max = 30,
	Def = defaultspeedvalts
})

misctab.Slider({
	Text = "jump power",
	Callback = function(Value)
	extrajumppowervalts = tonumber(Value)
	end,
	Min = defaultjumppowervalts,
	Max = 150,
	Def = defaultjumppowervalts
})

misctab.Toggle({
	Text = "speed and jumppower",
	Callback = function(Value)
    if extraspeedandjumppower == true then
    extraspeedandjumppower = false
    mychar.Humanoid.WalkSpeed = defaultspeedvalts
    mychar.Humanoid.JumpPower = defaultjumppowervalts
  end
    extraspeedandjumppower = Value
	end,
  Enabled = false
})


 misctab.TextField({
    Text = "Username to goto",
    Callback = function(Value)
    if tostring(Value) then
     noobusernametogotots  = tostring(Value)
    end
    end,
    })

 misctab.Button({
        Text = 'Goto Player',
        Callback = function()
        if plrservicets:FindFirstChild(noobusernametogotots) then 
          local plrtogoto = plrservicets:FindFirstChild(noobusernametogotots)
          if plrtogoto.Character and plrtogoto.Character:FindFirstChild("HumanoidRootPart") then 
            safeteleport(plrtogoto.Character.HumanoidRootPart.CFrame)
          end
         end 
        end,
        Menu = {
            Information = function(self)
            MainTab.Banner({
            Text = 'Teleports you to player'
            })
        end
     }
 })
    
 misctab.Button({
    Text = 'inf yield admin',
    Callback = function()
        pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end)
    end,
    Menu = {
        Information = function(self)
        MainTab.Banner({
        Text = 'Loads inf yield admin'
        })
    end
 }
})



    
	
	misctab.TextField({
	Text = "bag capacity",
	Callback = function(Value)
		if tonumber(Value) then
		    setbagspace(tonumber(Value))
		    end
	end,
	})

	   
   misctab.Toggle({
   Text = "inf stamina",
   Callback = function(Value)
   infstaminalolts = Value
   end,
   Enabled = infstaminalolts
   })

   misctab.Toggle({
    Text = "Auto Respawn",
    Callback = function(Value)
    autorespawnondeadlolts = Value
    end,
    Enabled = autorespawnondeadlolts
    })

   misctab.Toggle({
	Text = "auto loot",
	Callback = function(Value)
	   autolootts = Value
	end,
	Enabled = autolootts
})

	misctab.TextField({
	Text = "auto loot distance",
	Callback = function(Value)
		if tonumber(Value) then
		    autolootdistancets = tonumber(Value)
		 end
	end,
	})

	

   weaponmodstab.TextField({
	Text = "change melee swing delay",
	Callback = function(Value)
		if tonumber(Value) then
		    setswingdelay(tonumber(Value))
		    end
	end,
	})
	
	weaponmodstab.TextField({
	Text = "change melee charge delay",
	Callback = function(Value)
		if tonumber(Value) then
		    setchargedelay(tonumber(Value))
		    end
	end,
	})

	weaponmodstab.TextField({
	Text = "change gun spread",
	Callback = function(Value)
		if tonumber(Value) then
		    setspread(tonumber(Value))
		    end
	end,
	})
	
	
	
	weaponmodstab.TextField({
	Text = "change gun range",
	Callback = function(Value)
		if tonumber(Value) then
		    changerange(tonumber(Value))
		    end
	end,
	})
	

esptab.Toggle({
Text = "player esp",
Callback = function(Value)
playerespval = Value 
if playerespval == true then 
for i,v in pairs(plrservicets:GetPlayers()) do 
if v.Name ~= me.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then 
local HumanoidRootPart = v.Character:FindFirstChild("HumanoidRootPart")
DrawNewLine(HumanoidRootPart, "Player")
end
end
end
end
 })
    

esptab.Toggle({
Text = "player remains esp",
Callback = function(Value)
playerremainespval = Value

if  playerremainespval == true then
if game:GetService("Workspace"):FindFirstChild("Carriables") then
for _,item in pairs(game:GetService("Workspace").Carriables:GetChildren()) do
if item:IsA("Model") then
if string.match(item.Name,"Player remains") then
DrawNewLine(item.PrimaryPart, "Playerremains")
end
end
end
end
end
end,
Enabled = false
})


esptab.Toggle({
Text = "treasure chest esp",
Callback = function(Value)
treasurechestespval = Value
if  treasurechestespval == true then
if targetfilterfolder:FindFirstChild("TreasureHuntMarkers") then
for _,treasurechest in pairs(targetfilterfolder.TreasureHuntMarkers:GetChildren()) do
DrawNewLine(treasurechest,"Treasurechest")
end
end
end
end,
Enabled = false
})

esptab.Toggle({
Text = "house chest  esp",
Callback = function(Value)
if chestesp == false then
chestesp = true
if game:GetService("Workspace"):FindFirstChild("Props") then
for _,item in pairs(game:GetService("Workspace").Props.PlayerHouses:GetDescendants()) do
if item:IsA("Model") and item.Name == "Wooden chest" then
DrawNewLine(item.PrimaryPart, "Housechest")
end
end
end
end
end,
Enabled = false
})

esptab.Toggle({
Text = "animal esp",
Callback = function(Value)
animalespval = Value 
if  animalespval == true then
animalespval = true
if game:GetService("Workspace"):FindFirstChild("NPCs") then
for i,v in pairs(game:GetService("Workspace").NPCs.Animals:GetChildren()) do
if v.Character.PrimaryPart  then
DrawNewLine(v.Character.PrimaryPart,"Animal")
end
end
end
end
end,
Enabled = false
})


while task.wait() do
    if autolootts == true then
        if playerlootingguits then
            if closestlootplayerts == nil then
                for i, v in pairs(plrservicets:GetPlayers()) do
                    if v ~= me and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                        local maga = (mychar.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                        if maga <= tonumber(autolootdistancets) then
                            closestlootplayerts = v
                        end
                    end
                end
            end
            if closestlootplayerts then
                for i2, v2 in pairs(itemsframeslootcrollvar:GetChildren()) do
                    if v2:IsA("Frame") and v2:FindFirstChild("Flare") then
                        lootrequestremotets:InvokeServer(closestlootplayerts,"LootItem",v2.Name)
                        task.wait()
                    end
                end
            end
            closestlootplayerts = nil
        end
    end

    if infstaminalolts == true then 
        setstaminalol(true,150)
    end

    pcall(function()
     if extraspeedandjumppower == true and me.Character and me.Character:FindFirstChild("Humanoid") and myhum then
        myhum.WalkSpeed = extraspeedvalts
        myhum.JumpPower = extrajumppowervalts
        end
    end)

    if silentaimval == true then 

        if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then
      
        local myroot = me.Character:FindFirstChild("HumanoidRootPart")
        local myhumanoid = me.Character:FindFirstChild("Humanoid")

        if fovcirclets.Visible == true and fovcirclets.Radius>0 then 
           closestskidtous = getclosestplrtocirclets(fovcirclets.Radius) 
       else
           closestskidtous = getclosestplrtocirclets(defaultfovsize) 
       end

       if closestskidtous then 
        silentaimchosenhitpartts = choosehitpart(silentaimhitpartts,closestskidtous.Character)
       end
    end
    end
    if autorespawnondeadlolts == true then 
        checkifdeadandrespawnts()
    end
end
