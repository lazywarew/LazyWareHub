--[[
this script was made by bura 

tight studios been existing for over 2-3 years but due to the recent updates the key system has been removed and i decided to keep script open sourced for everyone to use

if you wish to get in touch u can add me on discord (dx95)

-bura
--]]



if isstscrptloaded then
    return
end

getgenv().isstscrptloaded = true


function guiprotectionfunctionts(gui)
if get_hidden_gui or gethui then
local hiddenui = get_hidden_gui or gethui
gui.Parent = hiddenui()
elseif (syn and syn.protect_gui) then
syn.protect_gui(gui)
gui.Parent = game:GetService("CoreGui")
else
gui.Parent = game:GetService("CoreGui")
end
end

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
Material = loadstring(httrest({Url="https://raw.githubusercontent.com/Bura1458/tnf/main/module.lua", Method="GET"}).Body)()
 end,function()
while true do end
 return
 end)



iswhitelisted = true
changestatus("loading api")



repeat task.wait(1) until me.Character and me.Character:FindFirstChild("HumanoidRootPart")

--// defining some of our character stuff
local mychar = me.Character
local myhum = mychar:FindFirstChildWhichIsA("Humanoid")
local mousets = me:GetMouse()
local mycamts = game:GetService("Workspace"):FindFirstChild("Camera")
local stupidhttpservice = game:GetService("HttpService")

--// esp and script stuff
local totalbillboardguistablets = {}
local distanceesptable = {}
local playeresptable = {}
local playerremainstable = {}
local animalesptable = {}
local chestesptable = {}
local infstaminafuncts
local maxbagspace = {}
local swingdelay = {}
local spread = {}
local sharedgetplayertable  = nil


local playeresp = false
local animalesp = false
local chestesp = false
local esp = false
local playerremainesp = false

--// stupid default stats
local defaultspeed = tonumber(myhum.WalkSpeed)
local defaultjumppower = tonumber(myhum.JumpPower)
local extraspeed = tonumber(defaultspeed)
local extrajumppower = tonumber(defaultjumppower)
local extraspeedandjumppower = false
local defineventsfolder 
local targetfilter = game:GetService("Workspace"):FindFirstChild("TargetFilter")
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
local silentaimval = false 
local stupidhitpart  
local silentaimhitpartts = "torso"

--// teleport stuff
local teleportservicets = game:GetService("TeleportService")
local streamsniperserverscanstate = "unknown"
local islandtoteleportts = ""
local noobuseridtostreamsnipe = 0


--// inf stamina 
local infstaminalolts = false 

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


if game:GetService("ReplicatedStorage"):FindFirstChild("DefinEvents") then 
defineventsfolder = game:GetService("ReplicatedStorage"):FindFirstChild("DefinEvents")
end 
    
if defineventsfolder and defineventsfolder:FindFirstChild("InteractingRequestSendChat") then
    local chatremotets = defineventsfolder:FindFirstChild("InteractingRequestSendChat")
    if chatremotets then
        chatremotevar = chatremotets
end
end

if defineventsfolder and defineventsfolder:FindFirstChild("PlayerRequestLootItem") then
    local lootremoterequesttsvar = defineventsfolder:FindFirstChild("PlayerRequestLootItem") 
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
task.wait(2)




defaultspeed = tonumber(myhum.WalkSpeed)
defaultjumppower = tonumber(myhum.JumpPower)

local function getmousepositionts()
 return game:GetService("UserInputService"):GetMouseLocation()
end



if Drawing then
fovcirclets = Drawing.new("Circle")
fovcirclets.Color = Color3.fromRGB(255, 255, 255)
fovcirclets.Thickness = 3
fovcirclets.NumSides = 40
fovcirclets.Radius = 150
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
   local self, k = ...
     if not checkcaller() and self == myhum and extraspeedandjumppower and (k == "WalkSpeed" or k == "JumpPower") then
       if k == "WalkSpeed" then
           return defaultspeed
       elseif k == "JumpPower" then
           return defaultjumppower
       end
   end
   
   return oldindexts(...)
end))


task.wait(2)


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
      local closestskidtous  = getclosestplrtocirclets(fovcirclets.Radius)
           if closestskidtous   then
      local silentaimchosenhitpartts = choosehitpart(silentaimhitpartts,closestskidtous.Character)
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

task.wait(2)

 






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
    Url = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="..userid .. "&size=150x150&format=Png&isCircular=false"
})

if not stupidimgheadshot or not stupidimgheadshot.Body then
return 
end

local encodedstupidimgheadshot = stupidhttpservice:JSONDecode(stupidimgheadshot.Body).data[1].imageUrl


local totalserversscanned = 0
local stupidnextpagecursor = 0


 local stupidserverdata = httrest({
        Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Desc&limit=100%s", gameid, cursor and "&cursor=" .. cursor or "")
    })
    
    if not stupidserverdata or not stupidserverdata.Body then
    return 
    end
    
   encodedserverdata = stupidhttpservice:JSONDecode(stupidserverdata.Body)
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
                Url = "https://thumbnails.roblox.com/v1/batch",
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



local function addespts(object,esptext,esptype)
    if not object then
        return
    end
    
local newbillboardgui = Instance.new("BillboardGui")
newbillboardgui.AlwaysOnTop  = true 
newbillboardgui.ResetOnSpawn = false
newbillboardgui.StudsOffset = Vector3.new(0, 1, 0)
    newbillboardgui.AlwaysOnTop = true
    newbillboardgui.Adornee = object
    guiprotectionfunctionts(newbillboardgui)
    newbillboardgui.Name = object.Name
    newbillboardgui.Size = UDim2.new(0, 100, 0, 150)
    local newnamelabel = Instance.new("TextLabel")
    newnamelabel.Name = object.Name
    newnamelabel.Parent = newbillboardgui
    newnamelabel.BackgroundTransparency = 1
    newnamelabel.Position = UDim2.new(0, 0, 0, -85)
    newnamelabel.Size = UDim2.new(0, 100, 0, 100)
    newnamelabel.Font = Enum.Font.SourceSansSemibold
    newnamelabel.TextSize = 20
    newnamelabel.TextColor3 = Color3.fromRGB(255, 71, 74)
    newnamelabel.TextStrokeTransparency  = 0
    newnamelabel.TextYAlignment = Enum.TextYAlignment.Bottom
    newnamelabel.Text = "name : "..esptext
    
    local targetdistanceespts = math.floor((mychar.HumanoidRootPart.Position-object.Position).magnitude)
    
    local distancelabel = Instance.new("TextLabel")
    distancelabel.Name = "_distance"
    distancelabel.Parent = newbillboardgui
    distancelabel.BackgroundTransparency = 1
    distancelabel.Position = UDim2.new(0, 0, 0, -70)
    distancelabel.Size = UDim2.new(0, 100, 0, 100)
    distancelabel.Font = Enum.Font.SourceSansSemibold
    distancelabel.TextSize = 20
    distancelabel.TextColor3 = Color3.fromRGB(255, 71, 74)
    distancelabel.TextStrokeTransparency  = 0
    distancelabel.TextYAlignment = Enum.TextYAlignment.Bottom
    distancelabel.Text = "distance : "..targetdistanceespts
    table.insert(esptype,newbillboardgui)
    
    local  totalbillboardguistabledata = {
    ["gui"] = newbillboardgui;
    ["part"] = object;
    }
    table.insert(totalbillboardguistablets,totalbillboardguistabledata)
end

local function updateespproperty(tabletoupdate, property, newproperty)
  for _,billboardguits in pairs(tabletoupdate) do
      for _,billboardlabelts in pairs(billboardguits:GetChildren()) do
          if billboardlabelts:IsA("TextLabel") then 
                 billboardlabelts[property] = newproperty

          end 
      end 
end
end





task.wait(1)
local function updateespdistanctse()
  for _, data in pairs(totalbillboardguistablets) do
    
    local dataguits = data.gui
    local dataobjectts = data.part
    if dataguits:FindFirstChild("_distance") then 
      local distancelabel = dataguits:FindFirstChild("_distance") 
      local objectdistancets = math.floor((mychar.HumanoidRootPart.Position - dataobjectts.Position).magnitude)
      distancelabel.Text = "distance : "..objectdistancets
    end
  end
end

task.wait(.5)


local function removeespts(tablenamearg)
     for i,v in pairs(tablenamearg) do 
      v:Remove()
    end
  
  table.clear(tablenamearg)
  table.clear(totalbillboardguistablets)
end

local function sendtoxicmessagets(playername)
    if not checkifwhitelisted then 
    while true do end
    return
    end
    
    checkifwhitelisted()
    local toxicwords  = {"L "..playername,"jeeper creeper on top","tightstudios on top  | gg/bcT9w8r","quit this game","the jeeper creeper is back and hungrier than ever. keep your windows closed and your doors locked.","quit this game "..playername}
    local randomtoxicmsgts = toxicwords[math.random(1,#toxicwords)]
    if chatremotevar then
        chatremotevar:InvokeServer(interactionremotevarts,randomtoxicmsgts,false)
        end
end


local function setchargedelay(Value)
    if not checkifwhitelisted then 
    while true do end
    return
    end
    checkifwhitelisted()
for i,v in pairs(swingdelay) do
    if tonumber(v.ChargeDelay) then

rawset(v,"ChargeDelay",tonumber(Value))
end
end
end

local function setspread(Value)
    if not checkifwhitelisted then 
    while true do end
    return
    end
    checkifwhitelisted()
for i,v in pairs(spread) do
if tonumber(v.Spread) then
rawset(v,"Spread",tonumber(Value))
end
end
end



local function setswingdelay(Value)
if not checkifwhitelisted then 
    while true do end
    return
    end
checkifwhitelisted()
for i,v in pairs(swingdelay) do
if tonumber(v.SwingDelay) then

rawset(v,"SwingDelay",tonumber(Value))
end
end
end

local function changerange(Value)
    if not checkifwhitelisted then 
    while true do end
    return
    end
checkifwhitelisted()
for i,v in pairs(spread) do
if tonumber(v.ProjectileMaxDistance) then
rawset(v,"ProjectileMaxDistance",tonumber(Value))
end
end    
end



local function setstaminalol(Value)
local myplrclienttoupdatestaminaon = sharedgetplayertable:GetPlayer()
if not tonumber(Value) then 
Value = tonumber(Value)
end 
if not checkifwhitelisted then 
while true do end
return
end
checkifwhitelisted()
infstaminafuncts(myplrclienttoupdatestaminaon,Value)
end





function setbagspace(Value)
    if not checkifwhitelisted then 
    while true do end
    return
    end
    checkifwhitelisted()
for i,v in pairs(maxbagspace) do
if tonumber(v.MaxBaseInventorySpace) then

rawset(v,"MaxBaseInventorySpace",tonumber(Value))
end
end
end


game:GetService("Players").PlayerAdded:Connect(function(player)
task.wait()
pcall(function()
    player.CharacterAdded:Connect(function(playerchar)
    task.wait()
if esp==true and playeresp == true then
task.wait(5)
if  playerchar == nil or  playerchar:FindFirstChild("Head") == nil or playerchar:FindFirstChild("WorldHumanGui") then
    return
    end
local playerfullnamets = playerchar:FindFirstChild("WorldHumanGui"):FindFirstChild("Identification"):FindFirstChild("FullName"):FindFirstChild("TextGui")
if playerfullnamets then
addespts(playerchar.Head,playerfullnamets.Text,playeresptable)
end
end
end)
end)
end)

me.CharacterAdded:Connect(function(newchar)
    task.wait(1)
    mychar = newchar
    myhum = newchar:FindFirstChildWhichIsA("Humanoid")
    end)
    
if game:GetService("Workspace"):FindFirstChild("Carriables") then
game:GetService("Workspace").Carriables.ChildAdded:Connect(function(obj)
if esp==true and playerremainesp == true then
task.wait(5)
if string.match(obj.Name,"Player remains") then

addespts(obj.PrimaryPart,"player remains",playerremainstable)
end
end
end)
end



if game:GetService("Workspace"):FindFirstChild("Props")  then
game:GetService("Workspace").Props.PlayerHouses.ChildAdded:Connect(function(item) do
    task.wait(5)
    pcall(function()
if esp == true and chestesp == true then
for i,v in pairs(item:GetDescendants()) do
    if item:IsA("Model") and item.Name == "Wooden chest" then
addespts(item.PrimaryPart,"chest",chestesptable)
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
if esp == true and animalesp == true then
task.wait(5)
local text = string.gsub(animal.Name, "%d", "")
local text2 = string.split(text,"_")[1]
if animal.Character.PrimaryPart ~=nil then
addespts(animal.Character.PrimaryPart,text2)
end
end
end)
end)
end


playdisconnectscreents()
task.wait(2)


local X = Material.Load({
    Title = "northwind - by bura (dx95)",
    Style = TSSettings.Style,
    SizeX = TSSettings.SizeX,
    SizeY = TSSettings.SizeY,
    Theme = TSSettings.Theme,
    ColorOverrides = {
        MainFrame = TSSettings.MainFrame
    }
})

local Y = X.New({
    Title = "misc"
})

local Z = X.New({
    Title = "esps"
})


local K = X.New({
    Title = "weapon mods"
})



local silentaimtab = X.New({
    Title = "silent aim"
})


local killauratab = X.New({
    Title = "kill aura"
})


local streamsnipertab = X.New({
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
	X.Banner({
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
	X.Banner({
	Text = 'Teleports you under the player and drys them.'
				})
			end
		}
	})
	
	

killauratab.Toggle({
Text = "kill aura",
Callback = function(Value)
killaurats = Value
end,
Enabled = killaurats
})


killauratab.Toggle({
Text = "auto block",
Callback = function(Value)
autoblockts = Value
end,
Enabled = autoblockts
})


killauratab.TextField({
Text = "auto block distance",
Callback = function(Value)
if tonumber(Value) then
autoblockdistancets  = tonumber(Value)
end
end,
})


killauratab.TextField({
Text = "kill aura charge distance",
Callback = function(Value)
if tonumber(Value) then
killaurachargedistancets  = tonumber(Value)
end
end,
})


killauratab.TextField({
Text = "kill aura distance",
Callback = function(Value)
if tonumber(Value) then
killauradistancets  = tonumber(Value)
end
end,
})



killauratab.TextField({
Text = "kill aura delay",
Callback = function(Value)
if tonumber(Value) then
killauradelayts  = tonumber(Value)
end
end,
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
Enabled = silentaimval
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


	K.TextField({
	Text = "change swing delay",
	Callback = function(Value)
		if tonumber(Value) then
		    setswingdelay(tonumber(Value))
		    end
	end,
	})
	
		K.TextField({
	Text = "change charge delay",
	Callback = function(Value)
		if tonumber(Value) then
		    setchargedelay(tonumber(Value))
		    end
	end,
	})
	
	
	
		
	
	Y.TextField({
	Text = "bag capacity",
	Callback = function(Value)
		if tonumber(Value) then
		    setbagspace(tonumber(Value))
		    end
	end,
	})

	   
   Y.Toggle({
   Text = "inf stamina",
   Callback = function(Value)
   infstaminalolts = Value
   end,
   Enabled = infstaminalolts
   })



	


	K.TextField({
	Text = "change gun spread",
	Callback = function(Value)
		if tonumber(Value) then
		    setspread(tonumber(Value))
		    end
	end,
	})
	
	
	
		K.TextField({
	Text = "change gun range",
	Callback = function(Value)
		if tonumber(Value) then
		    changerange(tonumber(Value))
		    end
	end,
	})
	
		
	



Y.Slider({
	Text = "speed",
	Callback = function(Value)
	extraspeed = tonumber(Value)
	end,
	Min = defaultspeed,
	Max = 30,
	Def = defaultspeed
})

Y.Slider({
	Text = "jump power",
	Callback = function(Value)
	extrajumppower = tonumber(Value)
	end,
	Min = defaultjumppower,
	Max = 150,
	Def = defaultjumppower
})

Y.Toggle({
	Text = "speed and jumppower",
	Callback = function(Value)
if extraspeedandjumppower == true then
extraspeedandjumppower = false
mychar.Humanoid.WalkSpeed = defaultspeed
mychar.Humanoid.JumpPower = defaultjumppower
end
extraspeedandjumppower = Value
	end,
	Enabled = false
})

Y.Toggle({
	Text = "auto loot",
	Callback = function(Value)
	   autolootts = Value
	end,
	Enabled = false
})

	Y.TextField({
	Text = "auto loot distance",
	Callback = function(Value)
		if tonumber(Value) then
		    autolootdistancets = tonumber(Value)
		    end
	end,
	})






Z.Toggle({
	Text = "player esp",
	Callback = function(Value)
	if Value == true and playeresp == false then
playeresp = true
esp = true
for _,player in pairs(plrservicets:GetPlayers()) do
pcall(function()
if player~=me then
    if player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("WorldHumanGui") then
        
local playerfullnametsa = player.Character:FindFirstChild("WorldHumanGui"):FindFirstChild("Identification"):FindFirstChild("FullName"):FindFirstChild("TextGui")
if playerfullnametsa   then
addespts(player.Character.Head,playerfullnametsa.Text,playeresptable)
end
end
end
end)
end
 elseif Value == false and playeresp == true then
  playeresp = false
  esp = false
  removeespts(playeresptable)
end
	end,
	Enabled = false
})

Z.Toggle({
	Text = "player remains esp",
	Callback = function(Value)
	if Value == true and playerremainesp == false then

playerremainesp = true
esp = true
if game:GetService("Workspace"):FindFirstChild("Carriables") then
for _,item in pairs(game:GetService("Workspace").Carriables:GetChildren()) do
if item:IsA("Model") then
if string.match(item.Name,"Player remains") then
addespts(item.PrimaryPart,"player remains",playerremainstable)
end
end
end
end
 elseif Value == false and playerremainesp == true then
  playerremainesp = false
  esp = false
  removeespts(playerremainstable)
end
	end,
	Enabled = false
})

Z.Toggle({
	Text = "chest  esp",
	Callback = function(Value)
	if Value == true and chestesp == false then

chestesp = true
esp = true
if game:GetService("Workspace"):FindFirstChild("Props") then
for _,item in pairs(game:GetService("Workspace").Props.PlayerHouses:GetDescendants()) do
if item:IsA("Model") and item.Name == "Wooden chest" then
addespts(item.PrimaryPart,"chest",chestesptable)
end
end
end
 elseif Value == false and chestesp == true then
  chestesp = false
  esp = false
  removeespts(chestesptable)
end
	end,
	Enabled = false
})

Z.Toggle({
	Text = "animal esp",
	Callback = function(Value)
		if Value == true and animalesp == false then

animalesp = true
esp = true
if game:GetService("Workspace"):FindFirstChild("NPCs") then
for i,v in pairs(game:GetService("Workspace").NPCs.Animals:GetChildren()) do
local text = string.gsub(v.Name, "%d", "")
local text2 = string.split(text,"_")[1]
if v.Character.PrimaryPart  then
local animalcolorts = tostring(v.Character.PrimaryPart.BrickColor)

addespts(v.Character.PrimaryPart,animalcolorts.. " "..text2,animalesptable)
end
end
end
 elseif Value == false and animalesp == true then
  animalesp = false
  esp = false
  removeespts(animalesptable)
end
	end,
	Enabled = false
})


Z.ColorPicker({
	Text = "player ESP color",
	Default = Color3.fromRGB(0,255,110),
	Callback = function(Value)
	if playeresp == true then
	    task.wait()
updateespproperty(playeresptable,"TextColor3",Value)
end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "This changes the color of your ESP."
			})
		end
	}
})

Z.ColorPicker({
	Text = "chest ESP color",
	Default = Color3.fromRGB(0,255,110),
	Callback = function(Value)
	if chestesp == true then
	    task.wait()
updateespproperty(chestesptable,"TextColor3",Value)

end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "This changes the color of your ESP."
			})
		end
	}
})

Z.ColorPicker({
	Text = "player remains esp color",
	Default = Color3.fromRGB(0,255,110),
	Callback = function(Value)
if playerremainesp == true then
    task.wait()
updateespproperty(playerremainstable,"TextColor3",Value)

end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "This changes the color of your ESP."
			})
		end
	}
})





Z.ColorPicker({
	Text = "animal  esp color",
	Default = Color3.fromRGB(0,255,110),
	Callback = function(Value)
if animalesp == true then
    task.wait()
updateespproperty(animalesptable,"TextColor3",Value)
end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "This changes the color of your ESP."
			})
		end
	}
})




if not checkifwhitelisted then
    while true do end
    return
end



if not tsisverifiedb or not iswhitelisted or not checkifwhitelisted then
    blplrts()
    return
end


if tsisverifiedb and iswhitelisted == false then
    blplrts()
    return
end

checkifwhitelisted()

while task.wait() do
pcall(function()
if extraspeedandjumppower == true and mychar:FindFirstChild("Humanoid") then
myhum.WalkSpeed = extraspeed
myhum.JumpPower = extrajumppower
end
end)
if esp == true then
    updateespdistanctse()
end
    if autolootts == true then
        if playerlootingguits  then
            if closestlootplayerts == nil then
                for indexa,playera in pairs(plrservicets:GetPlayers()) do
    if  playera~=me and playera.Character and playera.Character:FindFirstChild("HumanoidRootPart")   then
        local maga = (mychar.HumanoidRootPart.Position - playera.Character.HumanoidRootPart.Position).Magnitude
        if maga<tonumber(autolootdistancets) then
            closestlootplayerts = playera
            end
    end
                end
            end
            if closestlootplayerts then
            for index,item in pairs(itemsframeslootcrollvar:GetChildren()) do
                if item:IsA("Frame") and item:FindFirstChild("Flare") then
                    lootrequestremotets:InvokeServer(closestlootplayerts,item.Name)
                end
                end
            end
            closestlootplayerts = nil
        end
        end

    if infstaminalolts == true then 
    setstaminalol(150)
    end

    if killaurats  == true or autoblockts == true    then
    
 
 
    --// check if we holding any tool !!!
    getcurrentlyequippedtoolts()
    if stupidtoolthatweareholdingid and stupiditemthatweareholdingviewpointleft == nil and mychar:FindFirstChild("HumanoidRootPart")  then
    getstupidtoolnamebyid()
    if stupiditemthatweareholdingactualname and defineventsfolder and defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestEndSwing") then
    local damageevent = defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestEndSwing")
   local swingevent = defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestBeginSwing")
   local chargeevent = defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestCharge")
   local directionevent = defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestSetDirection")
  
   
   
     if autoblockts == true then
     
     if isourswordcharged == true then 
     isourswordcharged = false
     end
     
     if defineventsfolder and defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestBlock") then
     local requestblockevent = defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestBlock")
     local setblockdirectionevent = defineventsfolder:FindFirstChild(stupiditemthatweareholdingactualname.Name.."RequestSetDirection")
     
     requestblockevent:InvokeServer(stupidtoolthatweareholdingid,true)
     
      for _, skidtoblock in ipairs(plrservicets:GetPlayers()) do
        if skidtoblock~=me and skidtoblock.Character and skidtoblock.Character:FindFirstChild("HumanoidRootPart") then
    local stupiddistancetsa = (mychar.HumanoidRootPart.Position - skidtoblock.Character.HumanoidRootPart.Position).Magnitude
     
     if stupiddistancetsa<=autoblockdistancets then
        local stupidsidetoblockon = chooseblockingside(skidtoblock)
        if stupidsidetoblockon then
        setblockdirectionevent:InvokeServer(stupidtoolthatweareholdingid,stupidsidetoblockon)
        end
     end
     end
     end
     end
     end
     
     
     if autoblockts == false then
     
    if isourswordcharged == false then
    local randomhandletsa = chooserandomhandle()
     directionevent:InvokeServer(stupidtoolthatweareholdingid, randomhandletsa)
     task.wait()
     chargeevent:InvokeServer(stupidtoolthatweareholdingid)
     isourswordcharged = true
    end
     
     for _, stupidskid in ipairs(plrservicets:GetPlayers()) do
     if stupidskid~=me and stupidskid.Character and stupidskid.Character:FindFirstChild("HumanoidRootPart") then
    local stupiddistancets = (mychar.HumanoidRootPart.Position - stupidskid.Character.HumanoidRootPart.Position).Magnitude
     
     if stupiddistancets<=killaurachargedistancets then
         swingevent:InvokeServer(stupidtoolthatweareholdingid)
          task.wait(killauradelayts)
     end
     
    if stupiddistancets<=tonumber(killauradistancets) then
     damageevent:InvokeServer(stupidtoolthatweareholdingid, stupidskid)
     isourswordcharged = false
     end
    end
    end
    end
    end
    end
    end
end
