

getgenv().tightstudioscoolapia = {}

getgenv().tightstudioscoolsettings = {
["autohealdelay"] = 0;
["killauradistance"] = 10;
["killauradelay"] = .2;
["maxspeedtsb"] = 30;
["silentdrydistance"] = 10;
["dmgafterswing"] = 0;
["treeautofarmts"] = false;
['maxtreelogs'] = 35;
['totaltreelogs'] = 0;
['maxreloadammots'] = 2;
["funnyminigun"] = false;
}


local LTSS
local rangetable = {}
local itemstatstable = {}
local reallyfunnystringts 
local coolstring = "F0222B56-83B3-4588-AD40-A980C2B27804EEB6DBBB-3224-4D1D-B8CC-E4FE5B5A212D8290F2DC-7CB7-4A6B-B6F0-B9258B2FE5FBD5C78B1D-3CD5-4E10-9595-D61C0E67F11535B19110-1418-4A23-968A-F41D834A0EB13756DCAA-EC0B-46F9-BAEC-5CA35276E1A9E9891651-08D3-47BD-B030-317ECD8C8A17DFE0F302-0B4E-49C8-9A24-E2643D9C5F073E1A9209-5A99-41C5-8436-DD80BADA2E563D9DCEF0-3C90-4482-83D0-162905557543EAAE004A-6809-4DB5-A2D9-58498D6A47B4A"
local alreadyinteracted = false
local colorisafuckingskidts = "{\"Torso\":[2,2,1],\"Left Leg\":[1,2,1],\"HumanoidRootPart\":[2,2,1],\"Right Arm\":[1,2,1],\"Head\":[2,1,1],\"Right Leg\":[1,2,1],\"Left Arm\":[1,2,1]}"
        
local closestobjecttsvar = nil

task.wait(.5)


for i,v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v,"item") then
      LTSS = v
    end
 end
 
task.wait(1)
local inventorytable = LTSS.inventory
local integritytable = LTSS.integrity
local itemtable = LTSS.item
local misctable = LTSS.miscHandler
local interactiontable = LTSS.interaction --// original name was interaction
local operabletable = LTSS.operable
local firingtable = LTSS.firing
local currenttask = "tree"






local TweenService = game:GetService('TweenService')

local tweenInfo = TweenInfo.new(
    3, -- Time
    Enum.EasingStyle.Linear, -- EasingStyle
    Enum.EasingDirection.Out, -- EasingDirection
    0, -- RepeatCount (when less than zero the tween will loop indefinitely)
    false, -- Reverses (tween will reverse once reaching it's goal)
    0 -- DelayTime

)
 
 function tightstudioscoolapia:isplayerinsafezonets(player)
     local isiplrnsafezonevar = false 
    if player and  player:FindFirstChild("Status") then
        local statusfolder = player:FindFirstChild("Status")
        if statusfolder:FindFirstChild("Zones") then
        local zonesfolder = statusfolder:FindFirstChild("Zones")
        for index,szvalue in pairs(zonesfolder:GetChildren()) do
            if szvalue.Value == true then 
                if isiplrnsafezonevar == false then
                    isiplrnsafezonevar = true 
                    end
                end
        end
        end
    end
    return isiplrnsafezonevar
end


 function tightstudioscoolapia:interactwithobjectsts(boolval)
    if boolval == true then
        task.wait(3.5)
                        
        end
    if interactiontable.objectTargetting and inventorytable.itemDrawn then
    interactiontable:_start(interactiontable.objectTargetting)
end
end


 function tightstudioscoolapia:teleportoclosestobject()
      local root = game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')


    if root and closestobjecttsvar:FindFirstChild("Main") then
        local targetPart = closestobjecttsvar.Main
local offset = Vector3.new(0, -12, 5) -- offset by half of the target part's height
local finalcframets = CFrame.new(targetPart.Position + offset) * CFrame.Angles(0, math.pi, 0)

local tween = TweenService:Create(root, tweenInfo, {CFrame = finalcframets})

tween:Play()
end
end

function tightstudioscoolapia:getclosestobjecttome(objecttype)
    tightstudioscoolapia:changehungercapacity(tonumber(5000))
    local me = game:GetService("Players").LocalPlayer
    local mychar = me.Character 
    local myroot = mychar:FindFirstChild("HumanoidRootPart")
    
    if not myroot or not objecttype then
        return 
    end
    if objecttype == "tree" then
        pcall(function()
    for _,object in pairs(game:GetService("Workspace").World.Operables.Resources:GetChildren()) do
        if object:FindFirstChild("Status")  and object.Status.Available.Value == true and object.Status.Type.Value == objecttype then
            if closestobjecttsvar == nil then
            closestobjecttsvar = object
            currenttask="tree"
            elseif (myroot.Position-object.Main.Position).magnitude<(myroot.Position-closestobjecttsvar.Main.Position).magnitude then
                closestobjecttsvar = object
                currenttask="tree"
            end
        end
    end
    end)
    end
        
end

function tightstudioscoolapia:getclosestlogtome(objecttype)
      local me = game:GetService("Players").LocalPlayer
    local mychar = me.Character 
    local myroot = mychar:FindFirstChild("HumanoidRootPart")

    if not myroot or not objecttype then
        return 
    end
    
    closestobjecttsvar = nil
    task.wait(5.5)
    pcall(function()

    for _,object in pairs(game:GetService("Workspace").World.Items:GetChildren()) do
        if objecttype == "log" then
        if string.match(object.Name,"Tree") and object:FindFirstChild("Main") then
            local mag = (myroot.Position-object.Main.Position).magnitude
            if mag<15 then
             currenttask = "log"
            mychar:MoveTo(object.Main.Position)
                closestobjecttsvar = object
                task.wait(1)                    
                tightstudioscoolapia:interactwithobjectsts(false)
                tightstudioscoolsettings.totaltreelogs = tightstudioscoolsettings.totaltreelogs+1
                    closestobjecttsvar = nil
                    
                end
            
            end
        end
    end
    end)
end


task.wait(1)

function tightstudioscoolapia:changehungercapacity(newvalue)
integritytable:setHunger(tonumber(newvalue))
end




function tightstudioscoolapia:changestaminacapacity(newvalue)
rawset(integritytable,"stamina",tonumber(newvalue))
end

function tightstudioscoolapia:minigungobrrr(state)
    if state == true then 
        setconstant(firingtable.fire,3,0)
   else 
    setconstant(firingtable.fire,3,1)
   end
end 

function tightstudioscoolapia:sendtoxicmessage(skiduser)
local toxicwords = {"rian likes blackops feets","rianator is obese","color is skid","rian likes men","tightstudios on top  | gg/bcT9w8r","nice anti cheat","jeeper creeper sends his regards","L "..skiduser}
misctable.request("sendChat",toxicwords[math.random(1,#toxicwords)],false)
end

function tightstudioscoolapia:changebagcapacity(newvalue)
rawset(inventorytable,"maxWeight",tonumber(newvalue))
task.wait()
inventorytable:updateWeight()
end

function tightstudioscoolapia:changewarmthcapacity(newvalue)
rawset(inventorytable,"warmthBonus",tonumber(newvalue))
end




function tightstudioscoolapia:changerange(newvalue)
for _,range in pairs(rangetable) do
rawset(range,"maxRange",tonumber(newvalue))
end
end

function tightstudioscoolapia:fastinteractwithobjectts()
pcall(function()
--// funny
if interactiontable.interacting == true  then
    if alreadyinteracted == true then
        task.wait(1)
        alreadyinteracted = false
        end
if interactiontable.interactionType == "tree" then
    operabletable.cutDown(interactiontable.objectTargetting)
    alreadyinteracted = true
    
elseif interactiontable.interactionType == "takeDown" then
    operabletable.takeDown(interactiontable.objectTargetting)
    alreadyinteracted = true
    
elseif interactiontable.interactionType == "lootPlayer" then
    operabletable.lootStart(interactiontable.objectTargetting)
    alreadyinteracted = true
    elseif interactiontable.interactionType == "animal" then
    operabletable.skin(interactiontable.objectTargetting)
    alreadyinteracted = true
    
end
end
end)
end


function tightstudioscoolapia:tsusebandage()
itemtable.useBandage(inventorytable.itemDrawn)
end

function tightstudioscoolapia:equipobjectts(name)
for _,v in pairs(inventorytable.backpack) do
if v.name == name then
itemtable.equip(v)
break;
end
end
end


function tightstudioscoolapia:damageplayertss(killauradistance,killauradelay,dmgafterswing,autotoxicbool)
local me = game:GetService("Players").LocalPlayer
pcall(function()
for _,v in pairs(game:GetService('Players'):GetPlayers()) do
if v.Name ~=me.Name and v.Status.IsDead.Value ~= true  and integritytable.staminaAvailable == true and inventorytable.itemDrawn~=nil   then

    if inventorytable.itemDrawn.stats.weaponType == "bow" then
         local mag = (me.Character.Head.Position - v.Character.Head.Position).magnitude
   if mag <tonumber(killauradistance) then
          local isskidinsafezonets = tightstudioscoolapia:isplayerinsafezonets(v)
   if isskidinsafezonets == false then
   if killauradelay ~= tonumber(0) then
   task.wait(killauradelay)
     misctable.request("damage",v,inventorytable.itemDrawn.name,1)
       return
       end
   end
end
        end
   if inventorytable.itemDrawn.stats.type == 'melee' or inventorytable.itemDrawn.stats.type == 'knife'  then
    local mag = (me.Character.Head.Position - v.Character.Head.Position).magnitude
   if mag <tonumber(killauradistance) then
            local isskidinsafezonetsa = tightstudioscoolapia:isplayerinsafezonets(v)
   if isskidinsafezonetsa == false then
   if killauradelay ~= tonumber(0) then
   task.wait(killauradelay)
end
   itemtable.swing(inventorytable.itemDrawn)
   if dmgafterswing ~= tonumber(0) then
   task.wait(dmgafterswing)
  end
  
  misctable.request("damage",v,inventorytable.itemDrawn.name)
  if autotoxicbool == true and v.Status.IsDead.Value == true  then
   task.wait(.3)
  tightstudioscoolapia:sendtoxicmessage(v.Name)
end
end
end
end
end
end
end)
end

function tightstudioscoolapia:holdbandage(object)
for _,v in pairs(inventorytable.tools) do
if v.name == object then
inventorytable:drawOrHolsterItem(v)
break;
end
end
end

function tightstudioscoolapia:lootskidtss(silentdrydistance,lootfilter)
local plrs = game:GetService('Players')
local me = plrs.LocalPlayer
local root = plrs.LocalPlayer.Character.HumanoidRootPart 
local target = nil
local old = nil
old = root.CFrame

for _,v in pairs(plrs:GetPlayers()) do
if v.Name~=me.Name and v.Character:FindFirstChild('HumanoidRootPart') and v:FindFirstChild("Status") then
local victimroot = v.Character.HumanoidRootPart
local mag = (root.Position-victimroot.Position).magnitude
if mag<tonumber(silentdrydistance) and v.Status.IsDead.Value == true then
target = v
root.CFrame = victimroot.CFrame+Vector3.new(0,1,0)


for _,items in pairs(target.Status.Items:GetChildren()) do
if not target or not target:FindFirstChild("Status") then
    break;
    end
if target.Status.Health.Value >0 then
break;
end
if lootfilter == true then
if items.Name ~= 'Bandage' and items.Name ~= 'Flintlock ball' and items.Name~="Arrow" then
misctable.request('lootPlayer',target,items.Name,reallyfunnystringts)
end
else
misctable.request('lootPlayer',target,items.Name,reallyfunnystringts)
end
end
root.CFrame = old
if target:FindFirstChild("Status") then
target.Status.IsDead.Value = false
end
end
end
end
return target
end


misctable.finishJob = function() end -- a.b.c.
