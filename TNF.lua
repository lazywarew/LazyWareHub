getgenv().TSSettings = {
	key = "dogsarecute", --//  i removed key system btw so this is useless

	--// UI SETTINGS
	Style = 1,
	SizeX = 500,
	SizeY = 350,
	Theme = "Light", --// Light,Dark,Mocha,Aqua,Jester,
	MainFrame = Color3.fromRGB(0, 0, 0),
}

if isstscrptloaded then
	return
end

function guiprotectionfunctionts(gui)
	if get_hidden_gui or gethui then
		local hiddenui = get_hidden_gui or gethui
		gui.Parent = hiddenui()
	elseif syn and syn.protect_gui then
		syn.protect_gui(gui)
		gui.Parent = game:GetService("CoreGui")
	else
		gui.Parent = game:GetService("CoreGui")
	end
end

getgenv().isstscrptloaded = true

local plrservicets = game:GetService("Players")
local me = plrservicets.LocalPlayer
local mymousets = me:GetMouse()
local stupidhttpservicets = game:GetService("HttpService")
local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)
local CoreGuiService = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local tslaba = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

if not httrest then
	me:Kick("http function not supported")
	return
end

if not guiprotectionfunctionts then
	me:Kick("missing loader dependancies")
	return
end

local tweenInfo = TweenInfo.new(
	0.6, -- Time
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
loadinggui.Name = "tightstudiopro_" .. math.random(1000, 5000)
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

local tween = TweenService:Create(mainframe2, tweenInfo, { Rotation = 360 })
local tween2 = TweenService:Create(mainframe2, tweenInfo, { Transparency = 1 })

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
	uilibrary = loadstring(
		httrest({ Url = "https://raw.githubusercontent.com/lazywarew/Script/main/uilibrary.lua", Method = "GET" }).Body
	)()
end, function()
	me:Kick("an error occured while loading ui we are sorry!")
	return
end)

task.wait(1)

changestatus("checking whitelist")

task.wait(1)
iswhitelisted = true
changestatus("loading api")

task.wait(1)
--// misc
local noobreplicatedstorage = game:GetService("ReplicatedStorage")
local noobworkspace = game:GetService("Workspace")
local mousets = me:GetMouse()
local mycamts = noobworkspace.CurrentCamera

--// random related stuff
local function promptdiscordinvite()
	httrest({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com",
		},
		Body = stupidhttpservicets:JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = "UVsD8V5J42",
			},
			nonce = stupidhttpservicets:GenerateGUID(false),
		}),
	})
end

--// important stuff
local canweusedebuglibraryts = false

--// kill aura related stuff
local killaurval = false
local killauradistanceval = 15

--// integrity related stuff
local infhungerval = false
local maxhungerval = 200
local infstaminaval = false
local maxinfstaminaval = 100
local maxbagspaceval = 150
local maxbonuswarmthval = 150

--// speed related stuff
local extraspeedval = 16
local extraspeedandjumppowerval = false

--// autodrop related stuff
local playernametodropstufforval = ""
local itemnamelolval = ""
local itemamountlolval = 0
local autodroptoggledval = false

--// auto structure related stuff
local autoplacestructureval = false

--// fast interaction related stuff
local fastinteractionval = false
local alreadyinteracted = false
local fastinteractioncooldown = 0.250

--// autofarm related stuff
local fishautofarmtoggledval = false
local fishingpolethrownval = false
local currentlyfishingval = false
local treestochopamountval = 1550
local orestomineamountval = 1550


--// auto loot related stuff
local autolootdistanceval = 15
local autolootfilterval = false
local autolootteleportval = true


--// minigun related stuff
local miniguntoggledval = false

--// god mode related stuff
local godmodetoggledval = false

--// autoheal related stuff
local bandageuseanimationid = nil

local autohealtoggledval = false
local autohealdelayval = 0

--// heal aura related stuff
local healauratoggledval = false 
local healauradistanceaval = 0

--// auto toxic related stuff
local autotoxicval = false
local hbcgroupidval = 34472814
local nfcgroupidval = 34839406

--// silent aim related stuff
local silentaimval = false
local closestskid = nil
local stupidhitpart
local silentaimhitpartts = "head"
local mystupidteamts = nil
local previouskillauratargetts = nil
local silentaimhitparts = { "head", "torso" }
local defaultfovsize = 165
local canweusedrawinglibraryts = false


--// inf yield admin related stuff
local infyieldadminenabledval = false

--// esp related stuff
local playerespval = false
local teamcheckval = false
local RunService = game:GetService("RunService")
local TracerColor = Color3.fromRGB(255, 255, 255)
local TracerTextColor = Color3.fromRGB(255, 255, 255)
local TracerLines = {}

if game.PlaceId == 18242339083 then
	--// trying to test script in staging
	me:Kick("you cant test script in staging place you skid")
	return
end

local function Get2DPosition(PartPosition)
	local Vector, Visible = mycamts:WorldToViewportPoint(PartPosition)
	local ViewportPoint = Vector2.new(Vector.X, Vector.Y)
	return ViewportPoint, Visible
end

local function DrawNewLine(TracerPart, TracerText, TracerPartType)
	for tracerindex, tracerdata in pairs(TracerLines) do
		if tracerdata.TracerPart == TracerPart then
			tracerdata.TracerLine.Visible = false
			tracerdata.TracerLine:Remove()
			table.remove(TracerLines, tracerindex)
		end
	end

	local TracerLine = Drawing.new("Line")
	TracerLine.Visible = true
	TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y / 1)

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
	TracerLineText.Position = Vector2.new(To.X, To.Y)
	TracerLineText.Color = TracerTextColor

	table.insert(TracerLines, {
		["TracerPart"] = TracerPart,
		["TracerPartType"] = TracerPartType,
		["TracerLine"] = TracerLine,
		["TracerLineText"] = TracerLineText,
		["TracerLineTextText"] = TracerText,
	})
end

local function UpdateTracerLines()
	for tracerindex, tracerdata in pairs(TracerLines) do
		if not tracerdata.TracerPart:IsDescendantOf(workspace) then
			tracerdata.TracerLine.Visible = false
			tracerdata.TracerLine:Remove()
			tracerdata.TracerLineText.Visible = false
			tracerdata.TracerLineText:Remove()
			table.remove(TracerLines, tracerindex)
		end

		local TracerLine = tracerdata.TracerLine
		local TracerLineText = tracerdata.TracerLineText
		local TracerLineTextText = tracerdata.TracerLineTextText

		TracerLine.From = Vector2.new(mycamts.ViewportSize.X / 2, mycamts.ViewportSize.Y / 1)

		if tracerdata.TracerPartType == "Player" and tracerdata.TracerPart.Parent then
			local To, Visible = Get2DPosition(tracerdata.TracerPart.Position)

			if Visible == true and playerespval == true then
				TracerLine.Color = Color3.fromRGB(255, 110, 60)
				TracerLine.To = To
				TracerLine.Visible = true

				TracerLineText.Color = Color3.fromRGB(60, 90, 255)
				TracerLineText.Position = Vector2.new(To.X, To.Y - 65)
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
				repeat
					task.wait(1)
				until newplayerchar and newplayerchar:FindFirstChild("HumanoidRootPart")
				if newplayerchar.Name ~= me.Name then
					local newplayercharhumanoidrootpart = newplayerchar:FindFirstChild("HumanoidRootPart")
					DrawNewLine(newplayercharhumanoidrootpart, newplayerchar.Name, "Player")
				end
			end)
		end
	end)
end)

for playerindex, player in pairs(plrservicets:GetPlayers()) do
	player.CharacterAdded:Connect(function(newplayerchar)
		task.wait(1)
		if playerespval == true then
			pcall(function()
				repeat
					task.wait(1)
				until newplayerchar and newplayerchar:FindFirstChild("HumanoidRootPart")
				if newplayerchar.Name ~= me.Name then
					local newplayercharhumanoidrootpart = newplayerchar:FindFirstChild("HumanoidRootPart")
					DrawNewLine(newplayercharhumanoidrootpart, newplayerchar.Name, "Player")
				end
			end)
		end
	end)
end

if Drawing and Drawing.new then
	canweusedrawinglibraryts = true
end

if getupvalue and setupvalue then
	canweusedebuglibraryts = true
end

if canweusedrawinglibraryts == false then
	me:Kick("drawing library not supported sorry")
	return
end

if canweusedebuglibraryts == false then
	me:Kick("debug library not supported sorry")
	return
end

task.wait(2)

local tnfmainsharedmodules = nil

for i, v in pairs(getgc(true)) do
	if type(v) == "table" and rawget(v, "item") and typeof(v.item) == "table" then
		tnfmainsharedmodules = v
	end
end

if tnfmainsharedmodules == nil then
	me:Kick("an error occured while loading modules")
	return
end

--// importing modules
local tnfmischandler = tnfmainsharedmodules["misc"]
local tnfinventoryhandler = tnfmainsharedmodules["inventory"]
local tnfitemstatshandler = tnfmainsharedmodules["stats"]
local tnfinterfacehandler = tnfmainsharedmodules["interface"]
local tnfitemshandler = tnfmainsharedmodules["item"]
local tnffiringhandler = tnfmainsharedmodules["firing"]
local tnfintegrityhandler = tnfmainsharedmodules["integrity"]
local tnfinteractionhandler = tnfmainsharedmodules["interaction"]
local tnfoperablehandler = tnfmainsharedmodules["operable"]

if not noobreplicatedstorage:FindFirstChild("Resources") then 
	me:Kick("unable to locate shared games folder")
	return 
end 

local tnffireserverfunctionts = nil
local tnffireserverrequestsmade = nil

if tnfmischandler and tnfmischandler["request"] then
	tnffireserverfunctionts = tnfmischandler["request"]
end

if tnffireserverfunctionts then
	tnffireserverrequestsmade = getupvalue(tnffireserverfunctionts, 2)
end

if tnffireserverrequestsmade == nil then
	me:Kick("couldnt load network verifier")
	return
end



if tnfitemstatshandler.items["Bandage"] then
	bandageuseanimationid = tnfitemstatshandler.items["Bandage"].animations["use"]
end

if bandageuseanimationid == nil then
	me:Kick("couldnt find bandage animation use id")
	return
end


--// network manager
local function SendRequestToServerts(...)
    if tnfmischandler  then
		local packetstosendtoserverts = { ... }
		tnffireserverrequestsmade = 0 --// finishJob function moment xd
		coroutine.wrap(function()
			tnffireserverfunctionts(unpack(packetstosendtoserverts))
		end)()
	end
end


--// auto toxic
local function getrandomkillauratoxicmsgts(skidarg)
	local toxicwordsts = {
		"synthetic is a skid and uses chatgpt",
		"blackops on top",
		"we got viking bundle before the anticheat " .. utf8.char(0x0001F480), --// normal skull emoji
		"f3axmfuxwq - #1 TNF SCRIPT " .. utf8.char(0x0001F451), --// crown
		"jeeper creeper sends hes regards " .. utf8.char(0x00002620), --// double skull
		"w anticheat " .. utf8.char(0x00002620), --// double skull
		"L " .. skidarg.Name .. " " .. utf8.char(0x0001F971), --// yawn
		"factionroast",
	}

	--sendChat,message,iswhispering
	local randomtoxicwordindex = math.random(1, #toxicwordsts)
	local chosentoxicmessage = toxicwordsts[randomtoxicwordindex]

	if chosentoxicmessage == "factionroast" then 
		if skidarg:FindFirstChild("Status") then 
			if skidarg.Status.Faction.Value == hbcgroupidval then 
				chosentoxicmessage = "NFC ON TOP"
			elseif skidarg.Status.Faction.Value == nfcgroupidval then 
				chosentoxicmessage = "HBC ON TOP"
			end
		end
	end 

	return chosentoxicmessage
end

local function LoadInfYieldAdmints()
	if infyieldadminenabledval == false then
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
		end)
		infyieldadminenabledval = true
	end
end


local function fastinteractwithobject()
	pcall(function()
		--// funny

		if tnfinteractionhandler.interacting == true then
			if alreadyinteracted == true then
				task.wait(fastinteractioncooldown)
				alreadyinteracted = false
			end

			if tnfinteractionhandler.interactionType == "tree" then
				tnfinteractionhandler.objectTargetting:cutDown()
				alreadyinteracted = true
			elseif tnfinteractionhandler.interactionType == "lootPlayer" then
				tnfinteractionhandler.objectTargetting:lootStart()
				alreadyinteracted = true
			elseif tnfinteractionhandler.interactionType == "takeItem" then
				tnfinteractionhandler.objectTargetting:take()
				alreadyinteracted = true
			elseif tnfinteractionhandler.interactionType == "bandagePlayer" then
				tnfinteractionhandler.objectTargetting:bandage()
				alreadyinteracted = true
			elseif tnfinteractionhandler.interactionType == "shop" then
				tnfinteractionhandler.objectTargetting:showShop()
				alreadyinteracted = true
			elseif tnfinteractionhandler.interactionType == "mine" then
				tnfinteractionhandler.objectTargetting:Mine()
				alreadyinteracted = true
			elseif tnfinteractionhandler.interactionType == "takeDown" then
				tnfinteractionhandler.objectTargetting:takeDown()
				alreadyinteracted = true
			end
		end
	end)
end

local function TakeTheFuckingItemts()
	for _, v in pairs(noobworkspace.World.Items:GetChildren()) do
		local mainPart
		if v:FindFirstChild("Main") then
			mainPart = v.Main
		elseif v:FindFirstChild("MeshPart") then
			mainPart = v.MeshPart
		end

		if mainPart then
			local shouldWait
			if (me.Character.HumanoidRootPart.Position - mainPart.Position).Magnitude > 10 then
				shouldWait = true
			end

			me.Character.HumanoidRootPart.CFrame = CFrame.new(mainPart.Position) * CFrame.new(0, 3, 0)

			if shouldWait then
				task.wait(0.235)
			end

			coroutine.wrap(function()
				SendRequestToServerts("take", v)
			end)()
		end
	end
end

local function GetTreeModelsByAmount(maxtreecounter)
	local treemodels = {}
	local totaltrees = 0

	for i, v in pairs(noobworkspace.World.Operables.Resources:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Status") then
			if v.Status.Type.Value == "tree" then
				totaltrees = totaltrees + 1

				if totaltrees >= maxtreecounter then
					return treemodels
				end
				table.insert(treemodels, v)
			end
		end
	end
	return treemodels
end

local function GetOresByAmount(maxorecounter)
	local oremodels = {}
	local totaltrees = 0

	for i, v in pairs(noobworkspace.World.Operables.Resources:GetChildren()) do
		if v:IsA("Model") and v:FindFirstChild("Status") then
			if v.Status.Type.Value == "mine" then
				totaltrees = totaltrees + 1

				if totaltrees >= maxorecounter then
					return oremodels
				end
				table.insert(oremodels, v)
			end
		end
	end
	return oremodels
end

local function ChopTreeLogsts()
	local treemodelslol = GetTreeModelsByAmount(treestochopamountval)

	local treeschoppedval = 0
	for i, v in pairs(treemodelslol) do
		if treeschoppedval > treestochopamountval then
			break
		end
		me.Character.HumanoidRootPart.CFrame = CFrame.new(v.Main.Position) * CFrame.new(2, 4, 0)
		task.wait(0.125)
		spawn(function()
			SendRequestToServerts("interact", true, "tree", v)
			treeschoppedval = treeschoppedval + 1
		end)
	end
end

local function MineOresxdts()
	local oremodelslol = GetOresByAmount(orestomineamountval)

	local oresminedval = 0
	for i, v in pairs(oremodelslol) do
		if oresminedval > orestomineamountval then
			break
		end
		me.Character.HumanoidRootPart.CFrame = CFrame.new(v.Main.Position) * CFrame.new(2, 4, 0)
		task.wait(0.125)
		spawn(function()
			SendRequestToServerts("interact", true, "mine", v)
			oresminedval = oresminedval + 1
		end)
	end
end

local function CatchFishGrrrts()
	if
		currentlyfishingval == false
		and me.Character
		and me.Character:FindFirstChild("HumanoidRootPart")
		and me:FindFirstChild("Status")
		and me.Status.Items:FindFirstChild("Fishing pole")
	then
		local myfishingpole = me.Status.Items:FindFirstChild("Fishing pole")

		if fishingpolethrownval == false then
			fishingpolethrownval = true
			SendRequestToServerts("ResetCaughtFish")
			task.wait()
			SendRequestToServerts("LogFish")
		end

		if currentlyfishingval == false then
			currentlyfishingval = true
			local randomfishautofarmdelayxd = math.random(20, 25)
			task.wait(randomfishautofarmdelayxd)
			SendRequestToServerts("GenerateCaughtFish", myfishingpole)
			task.wait(0.250)
			SendRequestToServerts("TakeCaughtFish", myfishingpole)
			fishingpolethrownval = false
			currentlyfishingval = false
		end
	end
end

local function usebandagets()
	if me.Status.Items:FindFirstChild("Bandage") then
		SendRequestToServerts("bandagePlayer", me)

		local bandageanimation = Instance.new("Animation")
		bandageanimation.AnimationId = "rbxassetid://" .. tostring(bandageuseanimationid)
		local bandageanimationtrack = me.Character.Humanoid:LoadAnimation(bandageanimation)
		bandageanimationtrack.Looped = false
		bandageanimationtrack:Play()

		bandageanimationtrack.Stopped:Connect(function()
			bandageanimation:Destroy()
		end)
	end
end

local function holdbandagets()
	if me.Status.Items:FindFirstChild("Bandage") then
		local bandagetoequiplolts = me.Status.Items:FindFirstChild("Bandage")
		SendRequestToServerts("equip", bandagetoequiplolts)
	end
end

local function EquipAndUseBandagets()
	pcall(function()
		if
			autohealtoggledval == true
			and me.Character
			and me.Character:FindFirstChild("HumanoidRootPart")
			and me:FindFirstChild("Status")
			and me.Status.Health.Value < 100
		then
			holdbandagets()
			task.wait()
			usebandagets()
			task.wait(autohealdelayval)
		end
	end)
end

local function BuyTheFuckingItemts(itemname,amounttobuy)
	if tnfinterfacehandler.currentShop then 
		if itemname == "" then 
			return 
		end 

		SendRequestToServerts("purchaseItem",tnfinterfacehandler.currentShop,itemname,amounttobuy)
	end
end 

local function SellTheFuckingItemts(itemname,amounttobuy)
	if tnfinterfacehandler.currentShop then 
		if itemname == "" then 
			return 
		end 

		SendRequestToServerts("sellItem",tnfinterfacehandler.currentShop,itemname,amounttobuy)
	end
end 


local function killauradamageskidts()
	pcall(function()
		if me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me:FindFirstChild("Status") then
			for i, v in pairs(plrservicets:GetPlayers()) do
				if
					tnfinventoryhandler.itemDrawn
					and v.Name ~= me.Name
					and v.Character
					and me.Character
					and v.Character:FindFirstChild("HumanoidRootPart")
					and me.Character:FindFirstChild("HumanoidRootPart")
					and v:FindFirstChild("Status")
				then
					local mag = (me.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
					if mag <= killauradistanceval then
						if
							v:FindFirstChild("Status")
							and v.Status.Health.Value > 0
							and v.Status.Downed.Value == false
						then
							if
								tnfinventoryhandler.itemDrawn.stats.type == "melee"
								or tnfinventoryhandler.itemDrawn.stats.type == "knife"
							then
								local itemmodeltodamagewith = me.Status.Items:FindFirstChild(tnfinventoryhandler.itemDrawn.name)
								previouskillauratargetts = v
								tnfitemshandler.swing(tnfinventoryhandler.itemDrawn)
								task.wait()
								SendRequestToServerts("damage", v, tnfinventoryhandler.itemDrawn.name)
								task.wait()
								task.spawn(function()
									if autotoxicval == true then 
										task.wait(0.195)
										if previouskillauratargetts:FindFirstChild("Status") then 
										if previouskillauratargetts.Status.Health.Value<1 then 
										local randomfunnytoxicmsg = getrandomkillauratoxicmsgts(previouskillauratargetts)
										SendRequestToServerts("sendChat",randomfunnytoxicmsg,false)
										end
									   end
									end
								end)

							elseif tnfinventoryhandler.itemDrawn.stats.weaponType == "bow" then
								local itemmodeltodamagewith = me.Status.Items:FindFirstChild(tnfinventoryhandler.itemDrawn.name)
								previouskillauratargetts = v
								SendRequestToServerts("damage", v, tnfinventoryhandler.itemDrawn.name,1)
								task.wait()
								task.spawn(function()
									if autotoxicval == true then 
										task.wait(0.195)
										if previouskillauratargetts:FindFirstChild("Status") then 
										if previouskillauratargetts.Status.Health.Value<1 then 
										local randomfunnytoxicmsg = getrandomkillauratoxicmsgts(previouskillauratargetts)
										SendRequestToServerts("sendChat",randomfunnytoxicmsg,false)
										end
									   end
									end
								end)
							end
						end
					end
				end
			end
		end
	end)
end

local function lootskidts()
	local target = nil

	for _, v in pairs(plrservicets:GetPlayers()) do
		if
			v.Name ~= me.Name
			and me.Character
			and me.Character:FindFirstChild("HumanoidRootPart")
			and v.Character
			and v.Character:FindFirstChild("HumanoidRootPart")
			and v:FindFirstChild("Status")
		then
			local mag = (me.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
			if mag < tonumber(autolootdistanceval) and v.Status.Downed.Value == true then
				target = v

				if autolootteleportval == true then
					me.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
						+ Vector3.new(0, 0.450, 0)
				end

				task.wait()

				for _, items in pairs(target.Status.Items:GetChildren()) do
					if target.Status.Health.Value > 0 then
						break
					end

					if autolootfilterval == true then
						if items.Name ~= "Bandage" and items.Name ~= "Flintlock ball" and items.Name ~= "Arrow" then
							SendRequestToServerts("lootPlayer", target, items.Name)
							task.wait(0.205)
						end
					else
						SendRequestToServerts("lootPlayer", target, items.Name)
						task.wait(0.205)
					end
				end

				if target:FindFirstChild("Status") then
					target.Status.Downed.Value = false

				if autotoxicval == true then 
					SendRequestToServerts("sendChat","Thanks for the loot "..v.Name.." <3 (dm ryez to get your loot back)",false)						
				  end
				end
			end
		end
	end
	return target
end

local function SpamDropItemts(playernametodropstuffor, itemname)
	if plrservicets:FindFirstChild(playernametodropstuffor) then
		local plrtodropstufffor = plrservicets:FindFirstChild(playernametodropstuffor)
		if plrtodropstufffor.Character and plrtodropstufffor.Character:FindFirstChild("HumanoidRootPart") then
			if me.Status.Items:FindFirstChild(itemname) then
				local itemtodropts = me.Status.Items:FindFirstChild(itemname)
				SendRequestToServerts(
					"drop",
					itemtodropts,
					plrtodropstufffor.Character.HumanoidRootPart.Position,
					plrtodropstufffor.Character.HumanoidRootPart.Position
				)
				task.wait()
			end
		end
	end
end

local function PlaceStructurelolts(playernametodropstuffor, itemname)
	if plrservicets:FindFirstChild(playernametodropstuffor) then
		local plrtodeploystufffor = plrservicets:FindFirstChild(playernametodropstuffor)
		if plrtodeploystufffor.Character and plrtodeploystufffor.Character:FindFirstChild("HumanoidRootPart") then
			if me.Status.Items:FindFirstChild(itemname) then
				local itemtodeployts = me.Status.Items:FindFirstChild(itemname)
				SendRequestToServerts("deploy", itemtodeployts, plrtodeploystufffor.Character.HumanoidRootPart.CFrame)
				task.wait()
			end
		end
	end
end

local function UpdatePlayersCharacterSpeedts(newspeed)
	if me.Character and me.Character:FindFirstChild("Humanoid") then
		if me:FindFirstChild("Status") then
			if me.Status.Health.Value > 0 then
				me.Character.Humanoid.WalkSpeed = newspeed
			end
		end
	end
end


local function SetStaminalolts(maxstamnumbervar)
	rawset(tnfintegrityhandler, "stamina", maxstamnumbervar)
end

local function SetHungerlolts(maxhungernumbervar)
	rawset(tnfintegrityhandler, "hunger", maxhungernumbervar)
end

local function SetBonusWarmthlolts(maxbonuswarthnumbervar)
	rawset(tnfinventoryhandler, "warmthBonus", maxbonuswarthnumbervar)
	task.wait()
	tnfinterfacehandler:updateWarmthLost()
end

local function SetMaxWeightlolts(maxweightnumbervar)
	rawset(tnfinventoryhandler, "maxWeight", maxweightnumbervar)
	task.wait()
	tnfinventoryhandler:updateWeight()
	tnfinterfacehandler:updateInventoryLists()
end

--// silent aim stuff
local function getmousepositionts()
	return game:GetService("UserInputService"):GetMouseLocation()
end

--// handle respawning
me.CharacterAdded:Connect(function(newchar)
	task.wait()
	repeat
		task.wait(1)
	until newchar and newchar:FindFirstChild("HumanoidRootPart")
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

	for i, v in pairs(plrservicets:GetPlayers()) do
		if v.Character and v.Name ~= me.Name and v.Character:FindFirstChild("Head") then
			local position, onscreen = mycamts:WorldToScreenPoint(v.Character.Head.Position)
			if onscreen then
				local cursorPositionts = getmousepositionts()
				local distance = (cursorPositionts - Vector2.new(position.X, position.Y)).Magnitude

				if distance < closestdistance then
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

local maintab = uilibrary:New("TNF - [discord.gg/UVsD8V5J42]")
local misctab = maintab:Tab("Misc")
local autofarmtab = maintab:Tab("Autofarm")
local combattab = maintab:Tab("Combat")
local espTab = maintab:Tab("Esp")
local settingstab = maintab:Tab("Settings")
local discordservertab = maintab:Tab("Discord server")

autofarmtab:Toggle("Fish AutoFarm", function(bool)
	fishautofarmtoggledval = bool
end)

autofarmtab:Button("Tree log autofarm", function()
	if tnfinventoryhandler.itemDrawn and tnfinventoryhandler.itemDrawn.stats.type == "axe" then
		ChopTreeLogsts()
		task.wait(2.450)
		TakeTheFuckingItemts()
	end
end)

autofarmtab:Button("Mining autofarm", function()
	if tnfinventoryhandler.itemDrawn and tnfinventoryhandler.itemDrawn.stats.type == "pickaxe" then
		MineOresxdts()
		task.wait(2.450)
		TakeTheFuckingItemts()
	end
end)

misctab:Button("inf yield admin", function()
	LoadInfYieldAdmints()
end)

misctab:Button("Purchase Item", function(bool)
	BuyTheFuckingItemts(itemnamelolval,itemamountlolval)
end)


misctab:Button("Sell Item", function(bool)
	SellTheFuckingItemts(itemnamelolval,itemamountlolval)
end)


misctab:Textbox("Bag Space", "0 - inf", function(newbagspace)
	if tonumber(newbagspace) then
		local newbagspacenumber = tonumber(newbagspace)

		if newbagspacenumber < 0 then
			newbagspacenumber = 0
		end

		maxbagspaceval = newbagspacenumber
		SetMaxWeightlolts(maxbagspaceval)
	end
end)

misctab:Textbox("Bonus Warmth", "0 - inf", function(newbonuswarmth)
	if tonumber(newbonuswarmth) then
		local newbonuswarmthnumber = tonumber(newbonuswarmth)

		if newbonuswarmthnumber < 0 then
			newbonuswarmthnumber = 0
		end

		maxbonuswarmthval = newbonuswarmthnumber
		SetBonusWarmthlolts(maxbonuswarmthval)
	end
end)

misctab:Textbox("Extra Speed Amount", "0 - inf", function(newplayerspeed)
	if tonumber(newplayerspeed) then
		local newplayerspeednumber = tonumber(newplayerspeed)

		if newplayerspeednumber < 0 then
			newplayerspeednumber = 0
		end

		extraspeedval = newplayerspeednumber
	end
end)

misctab:Textbox("PlayerName to dropitems", "PlayerName", function(newplayertodropitemname)
	if tostring(newplayertodropitemname) then
		local newplayertodropitemnamestring = tostring(newplayertodropitemname)

		if newplayertodropitemnamestring == "" then
			newplayertodropitemnamestring = ""
		end

		playernametodropstufforval = newplayertodropitemnamestring
		task.wait()
	end
end)

misctab:Textbox("ItemName", "ItemName", function(newitemname)
	if tostring(newitemname) then
		local newitemnamestring = tostring(newitemname)

		if newitemnamestring == "" then
			newitemnamestring = ""
		end

		itemnamelolval = newitemnamestring
		task.wait()
	end
end)

misctab:Textbox("ItemAmount", "1 - inf", function(newitemamount)
	if tonumber(newitemamount) then
		local newitemamountnumber = tonumber(newitemamount)

		if newitemamountnumber <0 then
			newitemamountnumber = 1
		end

		itemamountlolval = newitemamountnumber
		task.wait()
	end
end)

misctab:Toggle("Speed and JumpPower", function(bool)
	extraspeedandjumppowerval = bool
end)

misctab:Toggle("Auto Drop", function(bool)
	autodroptoggledval = bool
end)

misctab:Toggle("Auto Place Structure", function(bool)
	autoplacestructureval = bool
end)


misctab:Toggle("Inf Hunger", function(bool)
	infhungerval = bool
end)

misctab:Toggle("Inf Stamina", function(bool)
	infstaminaval = bool
end)

misctab:Toggle("Fast Interaction", function(bool)
	fastinteractionval = bool
end)

combattab:Button("AutoLoot", function()
	lootskidts()
end)

combattab:Toggle("Kill Aura", function(bool)
	killaurval = bool
end)

combattab:Toggle("Auto Toxic", function(bool)
	autotoxicval = bool
end)

combattab:Toggle("Auto Heal", function(bool)
	autohealtoggledval = bool
end)


combattab:Toggle("God Mode", function(bool)
	godmodetoggledval = bool
	if godmodetoggledval == true then
		SendRequestToServerts("downPlayer")
		me.Status.Downed.Value = false
		me.Status.Health.Value = 100
	else
		me.Status.Downed.Value = true
		me.Status.Health.Value = 0
	end
end)

combattab:Toggle("Minigun", function(bool)
	miniguntoggledval = bool
	if miniguntoggledval == true then
		setconstant(tnffiringhandler.fire, 3, 0)
	else
		setconstant(tnffiringhandler.fire, 3, 1)
	end
end)

espTab:Toggle("Player esp", function(bool)
	playerespval = bool
	if playerespval == true then
		local playercharacters = plrservicets:GetPlayers()

		for i, v in pairs(playercharacters) do
			if v.Character and v.Character.Name ~= me.Name and v.Character:FindFirstChild("HumanoidRootPart") then
				local HumanoidRootPart = v.Character:FindFirstChild("HumanoidRootPart")
				DrawNewLine(HumanoidRootPart, v.Name, "Player")
			end
		end
	end
end)

settingstab:Textbox("Kill Aura Distance", "0 - inf", function(newkkillauradistance)
	if tonumber(newkkillauradistance) then
		local newkillauradistancenumber = tonumber(newkkillauradistance)

		if newkillauradistancenumber < 0 then
			newkillauradistancenumber = 0
		end

		killauradistanceval = newkillauradistancenumber
	end
end)

settingstab:Textbox("AutoHeal Delay", "0 - inf", function(newautohealdelay)
	if tonumber(newautohealdelay) then
		local newautohealdelaynumber = tonumber(newautohealdelay)

		if newautohealdelaynumber < 0 then
			newautohealdelaynumber = 0
		end

		autohealdelayval = newautohealdelaynumber
	end
end)

settingstab:Textbox("AutoLoot Distance", "0 - inf", function(newautolootdistance)
	if tonumber(newautolootdistance) then
		local newautolootdistancenumber = tonumber(newautolootdistance)

		if newautolootdistancenumber < 0 then
			newautolootdistancenumber = 0
		end

		autolootdistanceval = newautolootdistancenumber
	end
end)

settingstab:Toggle("AutoLoot Filter", function(bool)
	autolootfilterval = bool
end)

discordservertab:Button("copy invite", function()
	if setclipboard then
		setclipboard(tostring("discord.gg/UVsD8V5J42"))
	end
end)

discordservertab:Button("join server", function()
	promptdiscordinvite()
end)

misctab:Show("Misc")



while task.wait() do
	if infstaminaval == true then
		SetStaminalolts(maxinfstaminaval)
	end
	if infhungerval == true then
		SetHungerlolts(maxhungerval)
	end
	if fastinteractionval == true then
		fastinteractwithobject()
	end
	if fishautofarmtoggledval == true then
		CatchFishGrrrts()
	end
	if autohealtoggledval == true then
		EquipAndUseBandagets()
	end
	if killaurval == true then
		killauradamageskidts()
	end
	if autodroptoggledval == true then
		SpamDropItemts(playernametodropstufforval, itemnamelolval)
	end
	if autoplacestructureval == true then
		PlaceStructurelolts(playernametodropstufforval, itemnamelolval)
	end
	if extraspeedandjumppowerval == true then
		UpdatePlayersCharacterSpeedts(extraspeedval)
	end
end
