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
local bytenetfucker = nil
local myplayerdatats = nil 
local loadeditemslistmodulets = nil 

local deployeablesitemsfolder = nil
local droppeditemsfolder = nil 
local gamerecoursesfolder = nil


task.wait(1)
--// misc 
local noobreplicatedstorage = game:GetService("ReplicatedStorage")
local noobworkspace = game:GetService("Workspace")
local noobteleportservice = game:GetService("TeleportService")
local mousets = me:GetMouse()
local mycamts = noobworkspace.CurrentCamera


--// booga booga api

local BoogaBoogaAxeTypests = {
 ["Wood Axe"] = {damage=0},
 ["Stone Axe"] = {damage=0},
 ["Iron Axe"] = {damage=0},
 ["Steel Axe"] = {damage=0},
 ["Battle Axe"] = {damage=0},
 ["Adurite Axe"] = {damage=0},
 ["Crystal Axe"] = {damage=0},
 ["Magnetite Axe"] = {damage=0},
 ["Emerald Axe"] = {damage=0},
 ["Pink Diamond Axe"] = {damage=0},
 ["Void Axe"] = {damage=0},
 ["God Axe"] = {damage=0}
}



--// random related stuff
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


--// kill aura related stuff
local killaurval = false 
local killauradistanceval = 10

--// silent aim related stuff
local silentaimval = false 
local closestskid  = nil 
local stupidhitpart 
local silentaimhitpartts  = "head"
local mystupidteamts  = nil 
local previoustarget = nil
local silentaimhitparts = {"head","torso"}
local defaultfovsize = 165
local canweusedrawinglibraryts = false 

--// void teleport related stuff
local mainplaceidval = 11729688377  
local voidplaceidval = 11879754496

--// auto pickup related stuff
local autopickupval = false 
local autopickupdistanceval = 10

--// auto heal related stuff
local autohealval = false
local autohealstarthealthval = 99
local selectedautohealfoodval = nil
local inventoryitemfoodindexval = 0
local autohealfoodselectionts = {"Bloodfruit","Bluefruit","Sunfruit"}

--// level autofarm related stuff
local levelautofarmval = false
local choppingtreeval = false 
local closesttreenearus = nil

--// autofarm related stuff
local autoplantval = false
local selectedautoplantfoodval = nil
local autoplantvaldistanceval = 10
local autoplantlfoodselectionts = {"Bloodfruit","Bluefruit","Sunfruit","Lemon"}
local autoplantfoodselectionids = {["Bloodfruit"] = {id= 0},["Bluefruit"] = {id = 0},["Berry"] = {id = 0},["Sunfruit"]={id=0}}


--// auto toxic stuff
local autotoxicval = false 


--// esp related stuff 
local playerespval = false 
local teamcheckval = false 
local RunService = game:GetService("RunService")
local TracerColor = Color3.fromRGB(255,255,255)
local TracerLines = {}
 

local function isPlayerOnSameTeam(playername)
    local myplayerteam = me.Team

    for i,v in pairs(plrservicets:GetPlayers()) do 
        if v.Name ~= me.Name and v.Name == playername then 
            if tostring(me.Team) == tostring(v.Team) then 
                return true 
            end
        end
    end

    return false
end


local function Get2DPosition(PartPosition) 
    local Vector, Visible = mycamts:WorldToViewportPoint(PartPosition)
    local ViewportPoint = Vector2.new(Vector.X, Vector.Y)
    return ViewportPoint, Visible
end


local function DrawNewLine(TracerPart,TracerPartType)

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
    
        if tracerdata.TracerPartType == "Player" and tracerdata.TracerPart.Parent then 
    
             local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

                if Visible == true and  playerespval == true then


                  

                    TracerLine.Color = Color3.fromRGB(10, 255,10)
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


plrservicets.PlayerAdded:Connect(function(newplayer)
    newplayer.CharacterAdded:Connect(function(newplayerchar)
        task.wait(1)
        if playerespval == true then 
            pcall(function()
                repeat task.wait(1) until newplayerchar and newplayerchar:FindFirstChild("HumanoidRootPart")
                if newplayerchar.Name ~= me.Name then
                    local newplayercharhumanoidrootpart = newplayerchar:FindFirstChild("HumanoidRootPart") 
                    DrawNewLine(newplayercharhumanoidrootpart,"Player")
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
                    DrawNewLine(newplayercharhumanoidrootpart,"Player")
                end
            end)
        end
    end)
end



if Drawing and Drawing.new then 
    canweusedrawinglibraryts = true
end
    
if canweusedrawinglibraryts == false then 
     me:Kick("drawing library not supported sorry")
    return
end

for i,v in pairs(getgc(true)) do 
    if typeof(v) == "table" and rawget(v,"EquipTool") and rawget(v,"SwingTool") and typeof(v.EquipTool) == "table" and typeof(v.SwingTool)=="table" then 
         bytenetfucker = v
    end
    if typeof(v) =="table" and rawget(v,"inventory") and typeof(v.inventory) == "table" then 
        myplayerdatats = v
    end
end

task.wait(2)
    
if bytenetfucker == nil then 
    me:Kick("unable to load bytenet")
    return 
end

local projectileimpactpacket = bytenetfucker.ProjectileImpact
local swingtoolpacket =  bytenetfucker.SwingTool
local pickupitempacket = bytenetfucker.Pickup
local usebagitempacket = bytenetfucker.UseBagItem
local interactstructurepacket = bytenetfucker.InteractStructure

--// loading games modules 
if noobreplicatedstorage:FindFirstChild("Modules") then 
    local gamemodulesfolder  = noobreplicatedstorage:FindFirstChild("Modules")
    local itemslistmodulets = gamemodulesfolder:FindFirstChild("ItemIDS")

    loadeditemslistmodulets = require(itemslistmodulets)
end 

--// auto pickup
if noobworkspace:FindFirstChild("Items") then 
    droppeditemsfolder = noobworkspace:FindFirstChild("Items")
end

--// level autofarm stuff
if noobworkspace:FindFirstChild("Resources") then
    gamerecoursesfolder = noobworkspace:FindFirstChild("Resources")
end
--// auto plant stuff

if noobworkspace:FindFirstChild("Deployables") then 
    deployeablesitemsfolder = noobworkspace:FindFirstChild("Deployables")
end


 if loadeditemslistmodulets  then 
    for i,v in pairs(loadeditemslistmodulets) do 
        if autoplantfoodselectionids[v] then 
            local autoplantfoodselectionids = autoplantfoodselectionids[v]
            autoplantfoodselectionids.id = i 
        end
    end
end

local function Isplayerholdingaxets()
    if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Tools") then 
        local mytoolsfolder = me.Character:FindFirstChild("Tools")
        for i,v in pairs(BoogaBoogaAxeTypests) do 
            if mytoolsfolder:FindFirstChild(i) then 
                return true
            end
        end
    end
    return false
end



local function FindPlayerByCharacterName(PlayerName) 
    if plrservicets:FindFirstChild(PlayerName) then 
        local playerfound = plrservicets:FindFirstChild(PlayerName) 
        return playerfound
    end
    return nil
end 






local function FindSunTreeNearMets()
    for i,v in pairs(gamerecoursesfolder:GetChildren()) do 
        if v.Name == "Sun Tree" and v:FindFirstChild("Trunk") and me.Character and me.Character:FindFirstChild("HumanoidRootPart")  and me.Character:FindFirstChild("Humanoid") then
        local suntreeroot = v:FindFirstChild("Trunk")
        local myroot = me.Character:FindFirstChild("HumanoidRootPart")
        local myhumanoid = me.Character:FindFirstChild("Humanoid")
        
        local distancebetweenmeandsuntree = (myroot.Position-suntreeroot.Position).Magnitude

        if distancebetweenmeandsuntree<=365 then 
            return v
        end
    end
end
    return nil
end


local function teleportoobjectts(newcframe)
if me.Character and me.Character:FindFirstChild("HumanoidRootPart")  and me.Character:FindFirstChild("Humanoid")  then 
    local myroot = me.Character:FindFirstChild("HumanoidRootPart")
    local myhumanoid = me.Character:FindFirstChild("Humanoid")
    local distancebetweenmeandobject = (myroot.Position-newcframe.Position).Magnitude

    if myhumanoid.Health>0 then 
    local tweenInfo = TweenInfo.new(
        distancebetweenmeandobject/9, -- Time
        Enum.EasingStyle.Linear, -- EasingStyle
        Enum.EasingDirection.Out, -- EasingDirection
        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
        false, -- Reverses (tween will reverse once reaching it's goal)
        0 -- DelayTime
    )


    local teleporttweents = TweenService:Create(myroot, tweenInfo, {CFrame = newcframe})
    teleporttweents:Play()
end
end
end


--// misc 
local function SetItemIndexByName(itemname)
    local InventoryItemIndexval = 0

    for itemindex,itemdata in pairs(myplayerdatats.inventory) do 
        InventoryItemIndexval = InventoryItemIndexval+1

        if itemdata.name == itemname then 
            inventoryitemfoodindexval = InventoryItemIndexval
            selectedautohealfoodval = itemdata
        end
    end
end

local function PlantFoodInPlantboxlol()
    for i,v  in pairs(deployeablesitemsfolder:GetChildren()) do 
        if v:IsA("Model") and v.Name == "Plant Box" and v:FindFirstChild("Compost") and not v:FindFirstChild("Seed") and me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
            local myroot = me.Character:FindFirstChild("HumanoidRootPart")
            local myhumanoid = me.Character:FindFirstChild("Humanoid")
            local plantboxroot = v:FindFirstChild("Compost")

            local distancebetweenmeandplantbox = (myroot.Position-plantboxroot.Position).Magnitude

            if distancebetweenmeandplantbox<=autoplantvaldistanceval then 
                if autoplantfoodselectionids[selectedautoplantfoodval] then 
                    local plantboxentityidlol = v:GetAttribute("EntityID")
                    local autoplantfoodselectedid =   autoplantfoodselectionids[selectedautoplantfoodval]
                    interactstructurepacket.send({["entityID"] = plantboxentityidlol, ["itemID"] = autoplantfoodselectedid.id})
                end
            end
        end
    end
end


--// auto toxic

local function sendtoxicmessage()
    local toxicwords = {
        "lazyware on top " .. utf8.char(0x0001F451), --// crown
        "jeeper creeper sends hes regards " .. utf8.char(0x00002620), --// double skull
        "L " .. previoustarget.Name .. " " .. utf8.char(0x0001F971), --// yawn
        "too ez " .. " " .. utf8.char(0x0001F971), --// yawn
        "get rekt " .. previoustarget.Name .. " " .. utf8.char(0x0001F971) --// yawn
    }

    local chosentoxicmessage = toxicwords[math.random(1,#toxicwords)]
end

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




local maintab = uilibrary:New('Booga Booga - [discord.gg/UVsD8V5J42]')
local misctab = maintab:Tab('Misc')
local autofarmtab = maintab:Tab('Autofarm')
local combattab = maintab:Tab('Combat')
local espTab = maintab:Tab('Esp')
local discordservertab = maintab:Tab('Discord server')




misctab:Button('Teleport to MainGame', function() 
    pcall(function()
    noobteleportservice:Teleport(mainplaceidval,me)
    end)
end)

misctab:Toggle('Auto Pickup',function(bool) 
    autopickupval = bool
end)

misctab:Textbox('Auto Pickup Distance', '5 - 35', function(newautopickupdistanceval)  
    if tonumber(newautopickupdistanceval) then 
        local newautopickupdistancenumber = tonumber(newautopickupdistanceval)

        if newautopickupdistancenumber>35 then 
            newautopickupdistancenumber = tonumber(35)
        end

        if newautopickupdistancenumber<5 then 
            newautopickupdistancenumber = tonumber(5)
        end 

        autopickupdistanceval = newautopickupdistancenumber
    end 
end)

autofarmtab:Toggle('Auto Plant Fruits',function(bool) 
    autoplantval = bool
end)


autofarmtab:Dropdown('AutoPlant','Food',autoplantlfoodselectionts,function(newautoplantfood) 
    selectedautoplantfoodval = newautoplantfood
end)


autofarmtab:Textbox('Auto Plant Distance', '5 - 25', function(newautoplantdistanceval)  
    if tonumber(newautoplantdistanceval) then 
        local newautoplantdistancevalnumber = tonumber(newautoplantdistanceval)

        if newautoplantdistancevalnumber>25 then 
            newautoplantdistancevalnumber = tonumber(25)
        end

        if newautoplantdistancevalnumber<5 then 
            newautoplantdistancevalnumber = tonumber(5)
        end 

        autoplantvaldistanceval = newautoplantdistancevalnumber
    end 
end)


autofarmtab:Toggle('Level Autofarm',function(bool) 
    levelautofarmval = bool

    if choppingtreeval == true then 
    choppingtreeval = false 
    end
end)


combattab:Toggle('Kill Aura',function(bool) 
    killaurval = bool
end)

combattab:Textbox('Kill Aura Distance', '5 - 25', function(newkillauradistanceval)  
    if tonumber(newkillauradistanceval) then 
        local newkillauradistancenumber = tonumber(newkillauradistanceval)

        if newkillauradistancenumber>25 then 
            newkillauradistancenumber = tonumber(25)
        end

        if newkillauradistancenumber<5 then 
            newkillauradistancenumber = tonumber(5)
        end 

        killauradistanceval = newkillauradistancenumber
    end 
end)


combattab:Toggle('Auto Heal',function(bool) 
    autohealval = bool
end)


combattab:Dropdown('AutoHeal','Food',autohealfoodselectionts,function(newautohealfood) 
    SetItemIndexByName(newautohealfood)
end)

combattab:Textbox('Health to start autoheal', '0 - 99', function(newautohealval)  
    if tonumber(newautohealval) then 
        local newautohealvalnumber = tonumber(newautohealval)

        if newautohealvalnumber>99 then 
            newautohealvalnumber = tonumber(99)
        end

        if newautohealvalnumber<0 then 
            newautohealvalnumber = tonumber(0)
        end 

        autohealstarthealthval = newautohealvalnumber
    end 
end)


espTab:Toggle('Player esp',function(bool) 
playerespval = bool 
if playerespval == true then 
    local playercharacters = plrservicets:GetPlayers()

    for i,v in pairs(playercharacters) do
        if v.Character and v.Character.Name~=me.Name and v.Character:FindFirstChild("HumanoidRootPart") then  
        local HumanoidRootPart = v.Character:FindFirstChild("HumanoidRootPart")
        DrawNewLine(HumanoidRootPart,"Player")
        end
    end 
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
    if killaurval == true then 
        pcall(function()
        for i,v in pairs(plrservicets:GetPlayers()) do 
            if v.Name ~= me.Name  and v.Character and me.Character and v.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and me.Character:FindFirstChild("Humanoid") then
               local myroot = me.Character:FindFirstChild("HumanoidRootPart")
               local myhumanoid = me.Character:FindFirstChild("Humanoid")

               local myenemyroot = v.Character:FindFirstChild("HumanoidRootPart")
               local myenemyhumanoid = v.Character:FindFirstChild("Humanoid")

               local distancebetweenenemyandmets = (myroot.Position - myenemyroot.Position).Magnitude
              
    

               if distancebetweenenemyandmets <= killauradistanceval and myhumanoid.Health>0 and myenemyhumanoid.Health>0  then
              
                local entitytohitidlolts = v.Character:GetAttribute("EntityID")
                swingtoolpacket.send({entitytohitidlolts})
               end
            end
        end
     end)
    end

    if autopickupval == true then 
        pcall(function()
        local myroot = me.Character:FindFirstChild("HumanoidRootPart")
        local myhumanoid = me.Character:FindFirstChild("Humanoid")

        if  me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then
        for i,v in pairs(droppeditemsfolder:GetChildren()) do 
            if v.ClassName ~= "Model"  then

            local distancebetweenmeanditem = (myroot.Position-v.Position).Magnitude
            
            if distancebetweenmeanditem<=autopickupdistanceval and myhumanoid.Health>0 then 
                local entitytopickuplolts = v:GetAttribute("EntityID")
                pickupitempacket.send(entitytopickuplolts)
            end
        end
    end
    end
    end)
    end


    if autohealval == true and selectedautohealfoodval and tonumber(selectedautohealfoodval.quantity)>15  and me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
       pcall(function()
        local myhumanoid = me.Character:FindFirstChild("Humanoid")

        if myhumanoid.Health>0 and myhumanoid.Health<=autohealstarthealthval then 
         usebagitempacket.send(inventoryitemfoodindexval)
         task.wait()
        end
       end)
    end

    if autoplantval == true then 
        pcall(function()
        if selectedautoplantfoodval then 
        PlantFoodInPlantboxlol()
        task.wait()
        end
     end)
    end


    if levelautofarmval == true and myplayerdatats.level<100   then 
        if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
            local myroot = me.Character:FindFirstChild("HumanoidRootPart")
            local myhumanoid = me.Character:FindFirstChild("Humanoid")
    
            if myhumanoid.Health > 0 then 
                local areweholdingaxe = Isplayerholdingaxets()
    
                if areweholdingaxe == true  then 

                    local suntreenearus = FindSunTreeNearMets()
    
                    if suntreenearus and choppingtreeval == false   then 
                        closesttreenearus = suntreenearus
                        local suntreenearustrunk = suntreenearus:FindFirstChild("Trunk")
                        local suntreenearushealth = suntreenearus:FindFirstChild("Health")
                        local suntreetohitentityid = suntreenearus:GetAttribute("EntityID")

    
                        myroot.CFrame = myroot.CFrame + Vector3.new(1.450,1.450,0)
                        teleportoobjectts(suntreenearustrunk.CFrame + Vector3.new(7,-3,4))
    
                        repeat task.wait() 
                        local distancebetweenmeandsuntree = (myroot.Position-suntreenearustrunk.Position).Magnitude
                        
                        if distancebetweenmeandsuntree<=10 then 
                        swingtoolpacket.send({suntreetohitentityid})
                        end 

                        until suntreenearus.Parent == nil or distancebetweenmeandsuntree<=10 or levelautofarmval == false 
    

                        choppingtreeval = false 
                        task.wait(0.350)
                        for i,v in pairs(droppeditemsfolder:GetChildren()) do 
                            if v.Name == "Essence" then 
                                local distancebetweenmeandessence = (myroot.Position - v.Position).Magnitude
                                if distancebetweenmeandessence <= 25 then 
                                    local itemidlolwtfts = v:GetAttribute("EntityID")
                                    myroot.CFrame = v.CFrame
                                    pickupitempacket.send(itemidlolwtfts)
                                end
                            end
                        end
                    end 
                end
            end
        end
    end
end
