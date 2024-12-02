--// Storken1 says hello :) discord.gg/xaFyk6vBBb

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


changestatus("waiting for character")

repeat task.wait() until me.Character and me.Character:FindFirstChild("HumanoidRootPart")

changestatus("loading api")
task.wait(0.350)

--// defining some of our character stuff
local noobworkspace = game:GetService("Workspace")
local noobreplicatedstorage = game:GetService("ReplicatedStorage")
local mychar = me.Character
local myhum = mychar:FindFirstChildWhichIsA("Humanoid")
local mousets = me:GetMouse()
local mycamts = workspace.CurrentCamera
local stupidhttpservice = game:GetService("HttpService")


--// important stuff
local infstaminalol = {}
local wrapperstuffcraplol
local maxbagspace = {}
local swingdelay = {}
local spread = {}
local chargedelaybow = {}

local sharedgetplayertable  = nil

--// esp and script stuff
local canweusedrawinglibraryts = false 
local RunService = game:GetService("RunService")
local TracerColor = Color3.fromRGB(255,255,255)
local TracerTextColor = Color3.fromRGB(255,255,255)
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

local function DrawNewLine(TracerPart,TracerPartType,TracerText)
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
        local TracerLinePart = tracerdata.TracerPart
        local DistanceBetweenUsAndTarget = math.floor((me.Character.HumanoidRootPart.Position-TracerLinePart.Position).Magnitude)


        if tracerdata.TracerPartType == "Player" and tracerdata.TracerPart  then 
    
             local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)


                if Visible == true and  playerespval == true then

                    TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
                    TracerLine.Color = Color3.fromRGB(75, 95, 240)
                    TracerLine.To = To
                    TracerLine.Visible = true

                    TracerLineText.Color = Color3.fromRGB(75, 95, 240)
                    TracerLineText.Position = Vector2.new(To.X,To.Y-65)
                    TracerLineText.Text = TracerLineTextText.." ["..tostring(DistanceBetweenUsAndTarget).."]"
                    TracerLineText.Visible = true
                else
                    TracerLine.Visible = false
                    TracerLineText.Visible = false 
                end
         end     

         --// animal esp 

         if tracerdata.TracerPartType == "Animal" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if Visible == true and  animalespval == true then

                   TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
                   TracerLine.Color = TracerLinePart.Parent.Torso.Color
                   TracerLine.To = To
                   TracerLine.Visible = true

                   TracerLineText.Color = TracerLinePart.Parent.Torso.Color
                   TracerLineText.Position = Vector2.new(To.X,To.Y-65)
                   TracerLineText.Text = TracerLineTextText.." ["..tostring(DistanceBetweenUsAndTarget).."]"
                   TracerLineText.Visible = true

               else
                   TracerLine.Visible = false
                   TracerLineText.Visible = false 
               end
        end     

          --// player remains esp 

          if tracerdata.TracerPartType == "Playerremains" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if Visible == true and  playerremainespval == true then

                 TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
                   TracerLine.Color = Color3.fromRGB(255, 120, 70)
                   TracerLine.To = To
                   TracerLine.Visible = true

                   
                   TracerLineText.Color = Color3.fromRGB(255, 120, 70)
                   TracerLineText.Position = Vector2.new(To.X,To.Y-65)
                   TracerLineText.Text = TracerLineTextText.." ["..tostring(DistanceBetweenUsAndTarget).."]"
                   TracerLineText.Visible = true
               else
                   TracerLine.Visible = false
                   TracerLineText.Visible = false 
               end
        end     

           --// treasure chest esp

           if tracerdata.TracerPartType == "Treasurechest" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if treasurechestespval == true then

                   TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
                   TracerLine.Color = Color3.fromRGB(255, 215, 110)
                   TracerLine.To = To
                   TracerLine.Visible = true

                   TracerLineText.Color = Color3.fromRGB(255, 215, 110)
                   TracerLineText.Position = Vector2.new(To.X,To.Y-65)
                   TracerLineText.Text = TracerLineTextText.." ["..tostring(DistanceBetweenUsAndTarget).."]"
                   TracerLineText.Visible = true
               else
                   TracerLine.Visible = false
                   TracerLineText.Visible = false 
               end
        end     


        --// house chest esp

          if tracerdata.TracerPartType == "Housechest" and tracerdata.TracerPart then 
    
            local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

               if Visible == true and  playerremainespval == true then

                   TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y /1)
                   TracerLine.Color = Color3.fromRGB(85, 30, 255)
                   TracerLine.To = To
                   TracerLine.Visible = true

                   TracerLineText.Color = Color3.fromRGB(85, 30, 255)
                   TracerLineText.Position = Vector2.new(To.X,To.Y-65)
                   TracerLineText.Text = TracerLineTextText.."[ "..tostring(DistanceBetweenUsAndTarget).."]"
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


--// stupid default stats


local defineventsfolder 
local targetfilterfolder =  noobworkspace:FindFirstChild("TargetFilter")

--// remote crap lol
local interactionremotevarts 
local lootrequestremotets
local dragrequestremotets 
local dragendrequestremotets
local resetrequestremotets
local respawnrequestremots
local killaurachargeremotets  
local killaurabeginswingremotets  
local killauraendswingremotets
local killaurasetdirectionremotets
local sendchatmsgremotets 
local startaimremotets 
local startchargeremotets 
local endfireremotets

local rndmnewfuncts = Random.new()


--// kill aura stuff
local currentkillauratargetts = nil
local killaurameleechargedlolts = false 
local killaurameleefullychargedlolts = false 
local killauradistancets = 13
local killauravalts = false


--// auto toxic related stuff
local autotoxicvalts = false 

--// hitbox expander stuff
local hitboxexpanderval = false 
local hitboxexpandersizeval = 3
local defaulthitboxexpandersizeval = mychar.HumanoidRootPart.Size

--// auto block stuff 
local isourswordcharged = false
local autoblockts = false
local autoblockdistancets  = 10

--// extra speed related stuff
local extraspeedvalts = 0.18
local extraspeedandjumppowervalts = false


--// interface stuff
local interfaceguisfolder = nil

--// auto loot stuff
local closestlootplayerts = nil
local autolootdistancets = 10
local autolootts = false
local autolootfilterts = false 

local blacklistedautolootitemsts = {
    ["Stone arrow"] = {},
    ["Wood arrow"] = {},
    ["Bandage"] = {},
    ["Knife"] = {},
    ["Worm"] = {},
    ["Sesame seeds"] = {},
    ["Torch"] = {}
}

--// auto drag stuff
local closestplayertodragts = nil 
local autodragdistancets = 10
 
--// silent aim stuff
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
local infstaminavalts = false 

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


if noobreplicatedstorage:FindFirstChild("DefinEvents") then 
defineventsfolder = noobreplicatedstorage:FindFirstChild("DefinEvents")
end 
    

if defineventsfolder and defineventsfolder:FindFirstChild("InstanceRequestFunction") then
    networkmanagerremotefunc = defineventsfolder.InstanceRequestFunction
end







 if noobreplicatedstorage:FindFirstChild("Interacting") then
    interactionremotevarts = noobreplicatedstorage:FindFirstChild("Interacting")
 end

 
for i,v in pairs(getgc(true)) do
if typeof(v) == "table" and rawget(v,"SetStamina") and typeof(v.SetStamina) == "function" then
   table.insert(infstaminalol,v)
end
if typeof(v) == "table" and rawget(v,"Wrap") and typeof(v.Wrap) == "function" then
    wrapperstuffcraplol = v
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

function CheckIfIsPlayerlolts(characternamelol)
    if plrservicets:FindFirstChild(characternamelol) then 
        return true 
    end
    return false 
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
   if not checkcaller() and self and idx == "Size" then
     if hitboxexpanderval == true and  typeof(self) == "Instance" and self.Name == "HumanoidRootPart" and self~=mychar.HumanoidRootPart   then 
        local isplayerlolts

        task.spawn(function()
            isplayerlolts  = CheckIfIsPlayerlolts(self.Name)
        end)

        if isplayerlolts == true then 
        return Vector3.new(hitboxexpandersizeval.X,hitboxexpandersizeval,hitboxexpandersizeval.Z)
        end 
     end
     return defaulthitboxexpandersizeval
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

    elseif method == "InvokeServer" or method == "FireServer" and not checkcaller() then
        --// for packet spoofing
        local args = {...} 
        return oldnamecallts(self,...)
    end
  return oldnamecallts(self,...)
end))

task.wait(1.350)

 






local handletypests = {
"Right";
"Left";
}

function invokeserverlolts(...)
    local packetstosendtoserverts = { ... }
    networkmanagerremotefunc:InvokeServer(unpack(packetstosendtoserverts))
end 


function chooserandomhandle()
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
 

function getequippeditemdatafrominventoryts()
    local myclentplayerentityaval = sharedgetplayertable:GetPlayer()

    local EquippedToolItemlolts = myclentplayerentityaval:GetSelectedToolItem()

    return EquippedToolItemlolts
end 

function getitemdatafrominventorybynamets()
    local myclentplayerentityaval = sharedgetplayertable:GetPlayer()

    local EquippedToolItemlolts = myclentplayerentityaval:GetSelectedToolItem()

    return EquippedToolItemlolts
end 
 

function teleporttoplacets(placeid)
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





function sendtoxicmessagets(playername)
    local autotoxicwordsts = {
        [1] = {msg = "Tell Tyberius to stop devving"},
        [2] = {msg = "OMG did someone just kill you?"},
        [3] = {msg = "That was pretty easy, you should play Aimlabs."},
        [4] = {msg = "Thank Ryez for this"},
        [5] = {msg = "No anticheat???"}, 
        [6] = {msg = "Captinwheeler, I've dug for ages and still not found you. 💀"},
        [7] = {msg = "Wow this is a mess 🤣"},
        [9] = {msg = "I don't think the devs know that they can automate bans."},
        [11] = {msg = "130k robux well spent huh Ryez?"},
        [12] = {msg = "Play Northwind"},
        [13] = {msg = "Thanks for the loot " .. playername .. " (dm storken1 to get your loot back) <3"},
        [14] = {msg = "Lazyware - xaFyk6vBBb"}
    }    

    local randomtoxicmsgindex = math.random(1,#autotoxicwordsts)
    local randomtoxicmsgdata = autotoxicwordsts[randomtoxicmsgindex]

    if randomtoxicmsgdata == nil then 
        return 
    end 

    invokeserverlolts(noobreplicatedstorage.Interacting,"SendChat",randomtoxicmsgdata.msg,false)
end

 function findandlootskidts()
    local didwelootedanythinglolts = false 

    for i, v in pairs(plrservicets:GetPlayers()) do
        if v.Name ~= me.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local maga = (mychar.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
            if maga <= tonumber(autolootdistancets) then
                closestlootplayerts = v
            end
        end
    end

    if closestlootplayerts then
        local wrappedplayerprofile = wrapperstuffcraplol:Wrap(closestlootplayerts)

        
        if  wrappedplayerprofile then 
        if wrappedplayerprofile.Health<1 then 
        for i,v in pairs(wrappedplayerprofile.InventoryAbstractItems) do 
            if autolootts == false then
                break 
            end 

            local itemtolootidlolts = v.Id or i

            if autolootfilterts == true then 
            if not blacklistedautolootitemsts[v.Name] then 
                invokeserverlolts(closestlootplayerts,"LootItem",itemtolootidlolts)
            didwelootedanythinglolts = true 
            end 
        elseif autolootfilterts == false then 
            invokeserverlolts(closestlootplayerts,"LootItem",itemtolootidlolts)
            didwelootedanythinglolts = true 
          end
        end 

        if autotoxicvalts == true then
            if didwelootedanythinglolts == true then  
            sendtoxicmessagets(closestlootplayerts.Name)
            end 
        end
      end 
      closestlootplayerts = nil
    end 
  end
end 



function findandteleportclosestskidundermapts()
    for i, v in pairs(plrservicets:GetPlayers()) do
        if v.Name ~= me.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            if v.Name == noobusernametogotots then 
            local maga = (mychar.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
            closestplayertodragts = v
        end
      end 
    end

    if closestplayertodragts then
        local myoriginalposlol = mychar.HumanoidRootPart.CFrame
        local dragstarttimestamplol = tick()

        safeteleport(true,myoriginalposlol)
        task.wait()
        mychar.HumanoidRootPart.CFrame = closestplayertodragts.Character.HumanoidRootPart.CFrame+Vector3.new(0,2.850,0)
        
        task.wait(0.465)

        repeat 
        local droppositionlol =  closestplayertodragts.Character.HumanoidRootPart.Position+Vector3.new(0,-15.850,0)
        local distancebetweenskidtodropandoriginaldistance = (closestplayertodragts.Character.HumanoidRootPart.Position-myoriginalposlol.Position).Magnitude

        mychar.HumanoidRootPart.CFrame = closestplayertodragts.Character.HumanoidRootPart.CFrame+Vector3.new(0,2.850,0)
        task.wait()
        invokeserverlolts(closestplayertodragts, "Drag")
        mychar.HumanoidRootPart.CFrame = droppositionlol
        task.wait()
        invokeserverlolts(closestplayertodragts, "Drop")
        task.wait()
        until distancebetweenskidtodropandoriginaldistance<=75
        
    
       safeteleport(true,myoriginalposlol)
    end
    closestplayertodragts = nil
end







function findanddmgskidts()
    local equippedtoolitemdatalol = getequippeditemdatafrominventoryts()
 
    if equippedtoolitemdatalol == nil then 
        return 
    end 

    local equippedtoolmodellolts 
    local equippedtoolidlolts
    local equippedtoolnamelolts 

    equippedtoolmodellolts = equippedtoolitemdatalol["1"]
    equippedtoolidlolts = equippedtoolitemdatalol["2"]
    equippedtoolnamelolts = equippedtoolitemdatalol["3"]

    for i, v in pairs(plrservicets:GetPlayers()) do
        if v.Name~=me.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local maga = (mychar.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

            if killaurameleechargedlolts == false then 
                killaurameleechargedlolts = true 

                local randomdirectionlolnums = math.random(1, 2)
                local chosenrandomdirectionlolts 

                if randomdirectionlolnums == 1 then 
                    chosenrandomdirectionlolts = "Right" 
                elseif randomdirectionlolnums == 2 then 
                    chosenrandomdirectionlolts = "Left"
                end 

                invokeserverlolts(equippedtoolmodellolts, "SetDirection", chosenrandomdirectionlolts)
                task.wait(0.165)
                invokeserverlolts(equippedtoolmodellolts, "Charge")
                task.wait()
                killaurameleefullychargedlolts = true 
            end 

            if maga <= tonumber(killauradistancets) then
                local wrappedplayerprofile = wrapperstuffcraplol:Wrap(v)
                if wrappedplayerprofile.Health > 0 then 
                    currentkillauratargetts = v
                end 
            end
        end
    end

    if currentkillauratargetts then 
        if killaurameleefullychargedlolts == true then 
        invokeserverlolts(equippedtoolmodellolts, "BeginSwing")
        invokeserverlolts(equippedtoolmodellolts, "EndSwing", currentkillauratargetts)
        killaurameleechargedlolts = false 
        killaurameleefullychargedlolts = false 
        end 
        currentkillauratargetts = nil 
    end
end


function setchargedelay(Value)
for i,v in pairs(swingdelay) do
if tonumber(v.ChargeDelay) then

rawset(v,"ChargeDelay",tonumber(Value))
end
end
end

function setspread(Value)
for i,v in pairs(spread) do
if tonumber(v.Spread) then
rawset(v,"Spread",tonumber(Value))
end
end
end



function setswingdelay(Value)
for i,v in pairs(swingdelay) do
if tonumber(v.SwingDelay) then

rawset(v,"SwingDelay",tonumber(Value))
end
end
end

function changerange(Value)
for i,v in pairs(spread) do
if tonumber(v.ProjectileMaxDistance) then
rawset(v,"ProjectileMaxDistance",tonumber(Value))
end
end    
end


function isnearsafezonelolts()
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

function safeteleport(autotptosafezone,newposlol)
    if me  and me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
        local mycharacterroot = me.Character:FindFirstChild("HumanoidRootPart") 
        local myclentplayerentityaval = sharedgetplayertable:GetPlayer()

        invokeserverlolts(noobreplicatedstorage.Interacting,"Reset")

        if autotptosafezone == true then 
            task.wait(0.120)
            for i = 1,5 do 
            TweenService:Create(mycharacterroot, TweenInfo.new(9.850), {CFrame = CFrame.new(-281, -213, -267)}):Play()
            end 
        end 

        task.wait(9.950)
        invokeserverlolts(noobreplicatedstorage.Interacting,"Respawn")
        repeat task.wait() until myclentplayerentityaval.Health>0
        task.wait()

        --// time the teleport perfectly

        task.wait(0.465)

        for i = 1,5 do 
        mycharacterroot.CFrame = newposlol
        end 
    end
end



function setwalkspeedlolts()
    if myhum.MoveDirection.Magnitude > 0  then
        mychar:TranslateBy(myhum.MoveDirection * extraspeedvalts)
    end
end 


function checkifdeadandrespawnts()
local myclentplayerentityaval = sharedgetplayertable:GetPlayer()

if myclentplayerentityaval.Health<1 then 
    if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and mychar then 
      task.wait()
     safeteleport(true,mychar.HumanoidRootPart.CFrame)
    end
   end
end 

function updateplayerhitboxests()
    for i,v in pairs(plrservicets:GetPlayers()) do 
        if v.Character and v.Name~=me.Name then 
            if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then 
                v.Character.HumanoidRootPart.Transparency  = 0.450
                v.Character.HumanoidRootPart.Size = Vector3.new(hitboxexpandersizeval,hitboxexpandersizeval,hitboxexpandersizeval)
                v.Character.HumanoidRootPart.CanCollide = false 
            end
        end
    end 
end 

function disableplayerhitboxests()
    for i,v in pairs(plrservicets:GetPlayers()) do 
        if v.Character and v.Name~=me.Name then 
            if v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then 
                v.Character.HumanoidRootPart.Size = defaulthitboxexpandersizeval
                v.Character.HumanoidRootPart.Transparency  = 1
                v.Character.HumanoidRootPart.CanCollide = true 
            end
        end
    end 
end 

function setbagspace(Value)
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
            if playerespval == true then 
            if playerchar.Name ~= me.Name and playerchar and playerchar:FindFirstChild("HumanoidRootPart") then 
                local HumanoidRootPart = playerchar:FindFirstChild("HumanoidRootPart")
                local PlayerEntityData = wrapperstuffcraplol:Wrap(player)
                if PlayerEntityData.FirstName then 
                local TracerText = PlayerEntityData.FirstName.." "..PlayerEntityData.LastName
                DrawNewLine(HumanoidRootPart, "Player",TracerText)
                end 
            end
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
        
    DrawNewLine(obj.PrimaryPart, "Playerremains","Player Remains")
    end
    end
    end)
    end
        
    if targetfilterfolder:FindFirstChild("TreasureHuntMarkers") then 
        targetfilterfolder.TreasureHuntMarkers.ChildAdded:Connect(function(obj)
            if treasurechestespval == true then
                task.wait(5)
                DrawNewLine(obj,"Treasurechest","Treasure Chest")
            end 
        end)
    end 
    



if noobworkspace:FindFirstChild("Props")  then
noobworkspace.Props.PlayerHouses.ChildAdded:Connect(function(child) do
task.wait(5)
if chestesp == true then
if child:IsA("Model") and child.Name == "Wooden chest" then
DrawNewLine(child.PrimaryPart, "Housechest","House Chest")
end
end
end
end)
end

if noobworkspace:FindFirstChild("NPCs") then
noobworkspace.NPCs.Animals.ChildAdded:Connect(function(child)
if animalespval == true then
task.wait(5)
if child.Character.PrimaryPart then
DrawNewLine(child.Character.PrimaryPart,"Animal",child.Name)
end
end
end)
end




playdisconnectscreents()
task.wait(2)


local MainTab = Material.Load({
    Title = "Bellum imperii - [discord.gg/CD7NN3eMwM]",
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



misctab.Toggle({
	Text = "Extra speed",
	Callback = function(Value)
        extraspeedandjumppowervalts = Value
	end,
  Enabled = extraspeedandjumppowervalts 
})

misctab.Toggle({
	Text = "KillAura",
	Callback = function(Value)
     killauravalts = Value
	end,
    Enabled = killauravalts
})


misctab.Toggle({
	Text = "AutoToxic",
	Callback = function(Value)
     autotoxicvalts = Value
	end,
    Enabled = autotoxicvalts
})

misctab.TextField({
    Text = "Killaura distance",
    Callback = function(Value)
    if tonumber(Value) then
     killauradistancets  = tonumber(Value)
    end
    end,
})




misctab.Toggle({
	Text = "Hitbox Expander",
	Callback = function(Value)
      if Value == false then 
        disableplayerhitboxests()
      end 

     hitboxexpanderval = Value
	end,
    Enabled = hitboxexpanderval
})

misctab.Slider({
	Text = "Hitbox Expander Size",
	Callback = function(Value)
	hitboxexpandersizeval = tonumber(Value)
	end,
	Min = 3,
	Max = 65,
	Def = 3
})


 misctab.TextField({
    Text = "Username to target",
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
            safeteleport(true,plrtogoto.Character.HumanoidRootPart.CFrame)
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
    Text = 'kick player',
    Callback = function()
        pcall(function()
            findandteleportclosestskidundermapts()
        end)
    end,
    Menu = {
        Information = function(self)
        MainTab.Banner({
        Text = 'Should kick player'
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
    infstaminavalts = Value
   end,
   Enabled = infstaminavalts
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

misctab.Toggle({
	Text = "auto loot filter",
	Callback = function(Value)
	   autolootfilterts = Value
	end,
	Enabled = autolootfilterts
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
local PlayerEntityData = wrapperstuffcraplol:Wrap(v)
if PlayerEntityData then 
if PlayerEntityData.FirstName then 

local TracerText = PlayerEntityData.FirstName.." "..PlayerEntityData.LastName
DrawNewLine(HumanoidRootPart, "Player",TracerText)
end 
end 
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
if noobworkspace:FindFirstChild("Carriables") then
for i,v in pairs(noobworkspace.Carriables:GetChildren()) do
if v:IsA("Model") then
if string.match(v.Name,"Player remains") then
DrawNewLine(v.PrimaryPart, "Playerremains","Player Remains")
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
for i,v in pairs(targetfilterfolder.TreasureHuntMarkers:GetChildren()) do
DrawNewLine(v,"Treasurechest","Treasure Chest")
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
for i,v in pairs(game:GetService("Workspace").Props.PlayerHouses:GetDescendants()) do
if v:IsA("Model") and v.Name == "Wooden chest" then
DrawNewLine(v.PrimaryPart, "Housechest","House Chest")
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
if noobworkspace:FindFirstChild("NPCs") then
for i,v in pairs(noobworkspace.NPCs.Animals:GetChildren()) do
if v.Character.PrimaryPart  then
DrawNewLine(v.Character.PrimaryPart,"Animal",v.Name)
end
end
end
end
end,
Enabled = false
})


for i,v in pairs(infstaminalol) do 
local oldsetstaminalol = v.SetStamina


v.SetStamina = function(self, ...)
        local args = {...}
        if infstaminavalts == true then
            if self.Name == me.Name then
            local localplayerentitymaxstaminats = self:GetMaxStamina()

            if localplayerentitymaxstaminats then
                if self.Stamina <= localplayerentitymaxstaminats - 5 then
                    return oldsetstaminalol(self, ...)
                end
            end

            args[1] = localplayerentitymaxstaminats or 150
            return oldsetstaminalol(self, table.unpack(args))
        end
    end

    return oldsetstaminalol(self, ...)
  end
end 

while task.wait() do
    if autolootts == true then
            if closestlootplayerts == nil then
                task.spawn(function()
                findandlootskidts()
                end)
            end 
    end

     if extraspeedandjumppowervalts == true and me.Character and myhum then
        setwalkspeedlolts()
    end
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
    if killauravalts == true then 
        if currentkillauratargetts == nil  then 
        task.spawn(function()
            findanddmgskidts()
        end)
      end
    end 

    if hitboxexpanderval == true then 
        if me.Character and me.Character:FindFirstChild("HumanoidRootPart") then 
            updateplayerhitboxests()
        end
    end
end
