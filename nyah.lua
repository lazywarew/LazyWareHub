local cloneref = cloneref or function(a) return a end
local coreGui = cloneref(game:GetService("CoreGui"))
local players = cloneref(game:GetService("Players"))
local localPlayer = players.LocalPlayer

local function isElevatedStudioPlugin()
    local s, r = pcall(function()
        return coreGui:GetChildren()
    end)
    return s
end

local gethui = gethui or function()
	local folder
	if isElevatedStudioPlugin() then
		if coreGui:WaitForChild("RobloxGui"):FindFirstChild(".__gethui") then
			folder = coreGui:WaitForChild("RobloxGui"):FindFirstChild(".__gethui")
		else
			folder = Instance.new("Folder")
			folder.Name = '.__gethui'
			folder.Parent = coreGui:WaitForChild("RobloxGui")
		end
	else
		folder = localPlayer:WaitForChild'PlayerGui'
	end
	return folder
end

local quirkycmd = Instance.new("ScreenGui", gethui())
quirkycmd.Name = "quirkyCMD"
quirkycmd.IgnoreGuiInset = true
quirkycmd.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
quirkycmd.ResetOnSpawn = false
quirkycmd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local remotepath = Instance.new("TextLabel")
remotepath.Name = "remotepath"
remotepath.Text = ""
remotepath.TextColor3 = Color3.fromRGB(255, 255, 255)
remotepath.TextScaled = true
remotepath.TextSize = 14
remotepath.TextTransparency = 0.6
remotepath.TextWrapped = true
remotepath.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BackgroundTransparency = 0.6
remotepath.BorderColor3 = Color3.fromRGB(0, 0, 0)
remotepath.BorderSizePixel = 0
remotepath.Position = UDim2.fromScale(0.396, 0.249)
remotepath.Size = UDim2.fromScale(0.208, 0.044)

local uicorner = Instance.new("UICorner")
uicorner.Name = "UICorner"
uicorner.CornerRadius = UDim.new(0, 3)
uicorner.Parent = remotepath

remotepath.Parent = quirkycmd

local cmdbox = Instance.new("TextBox")
cmdbox.Name = "cmdBox"
cmdbox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
cmdbox.PlaceholderText = "ERROR"
cmdbox.Text = ""
cmdbox.TextColor3 = Color3.fromRGB(200, 200, 200)
cmdbox.TextScaled = true
cmdbox.TextSize = 12
cmdbox.TextTruncate = Enum.TextTruncate.AtEnd
cmdbox.TextWrapped = true
cmdbox.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdbox.BorderColor3 = Color3.fromRGB(59, 59, 59)
cmdbox.BorderSizePixel = 3
cmdbox.Position = UDim2.fromScale(0.396, 0.25)
cmdbox.Size = UDim2.fromScale(0.208, 0.0441)

local uitextsizeconstraint = Instance.new("UITextSizeConstraint")
uitextsizeconstraint.Name = "UITextSizeConstraint"
uitextsizeconstraint.MaxTextSize = 18
uitextsizeconstraint.Parent = cmdbox

cmdbox.Parent = quirkycmd

local mobileopen = Instance.new("TextButton")
mobileopen.Name = "mobileOpen"
mobileopen.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
mobileopen.Text = "CMD"
mobileopen.TextColor3 = Color3.fromRGB(200, 200, 200)
mobileopen.TextScaled = true
mobileopen.TextSize = 14
mobileopen.TextWrapped = true
mobileopen.AnchorPoint = Vector2.new(1, 0)
mobileopen.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
mobileopen.BorderColor3 = Color3.fromRGB(0, 0, 0)
mobileopen.BorderSizePixel = 0
mobileopen.Position = UDim2.fromScale(1, 0.25)
mobileopen.Size = UDim2.fromScale(0.0346, 0.0734)

local uicorner1 = Instance.new("UICorner")
uicorner1.Name = "UICorner"
uicorner1.CornerRadius = UDim.new(0, 3)
uicorner1.Parent = mobileopen

mobileopen.Parent = quirkycmd

local cmds = Instance.new("Frame")
cmds.Name = "cmds"
cmds.Active = true
cmds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cmds.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmds.BorderSizePixel = 0
cmds.Position = UDim2.fromScale(0.446, 0.305)
cmds.Size = UDim2.fromScale(0.108, 0.389)
cmds.Parent = quirkycmd

local cmdlist = Instance.new("ScrollingFrame")
cmdlist.Name = "cmdList"
cmdlist.AutomaticCanvasSize = Enum.AutomaticSize.Y
cmdlist.CanvasSize = UDim2.new()
cmdlist.ScrollBarThickness = 8
cmdlist.ScrollingDirection = Enum.ScrollingDirection.Y
cmdlist.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cmdlist.BorderColor3 = Color3.fromRGB(0, 0, 0)
cmdlist.BorderSizePixel = 0
cmdlist.Position = UDim2.fromScale(0, 0.0566)
cmdlist.Size = UDim2.fromScale(1, 0.943)

local template = Instance.new("TextLabel")
template.Name = "template"
template.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
template.Text = "error occured, dm quirky"
template.TextColor3 = Color3.fromRGB(200, 200, 200)
template.TextScaled = true
template.TextSize = 14
template.TextWrapped = true
template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
template.BackgroundTransparency = 1
template.BorderColor3 = Color3.fromRGB(0, 0, 0)
template.BorderSizePixel = 0
template.Size = UDim2.fromScale(0.9, 0.1)
template.Parent = cmdlist

local uilistlayout = Instance.new("UIListLayout")
uilistlayout.Name = "UIListLayout"
uilistlayout.Padding = UDim.new(0, 5)
uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
uilistlayout.Parent = cmdlist

cmdlist.Parent = cmds

local closebutton = Instance.new("TextButton")
closebutton.Name = "closeButton"
closebutton.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json")
closebutton.Text = "Close"
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.TextScaled = true
closebutton.TextSize = 14
closebutton.TextWrapped = true
closebutton.Active = false
closebutton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
closebutton.BorderSizePixel = 0
closebutton.Size = UDim2.fromScale(1, 0.0566)
closebutton.Parent = cmds

if not game:IsLoaded() then game.Loaded:Wait() end

--[[Variables]]--
local debugOutput = true
local checkTime = 0.33
local flySpeed = 50
local UGCVS = game:GetService("UGCValidationService")
local uis = game:GetService("UserInputService")
local sgui = game:GetService("StarterGui")
local rs = game:GetService("RunService")
local rStorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local gui = quirkycmd or localPlayer:FindFirstChildOfClass("PlayerGui"):WaitForChild("quirkyCMD")
local box = gui:WaitForChild("cmdBox")
local mobileButton = gui:WaitForChild("mobileOpen")
local cmdsFrame = gui:WaitForChild("cmds")
local cmdsList = cmdsFrame:WaitForChild("cmdList")
local cmdTemplate = cmdsList:WaitForChild("template")
local closeButton = cmdsFrame:WaitForChild("closeButton")
local remotePath = gui:WaitForChild("remotepath")

local genv = (getgenv and (getgenv() ~= getfenv()) and getgenv()) or _G

local gethiddenproperty
if pcall(function() gethiddenproperty(localPlayer,"SimulationRadius") end) then
	gethiddenproperty = gethiddenproperty 
else
	gethiddenproperty = function(i, v) return UGCVS:GetPropertyValue(i, v) end
end
local sethiddenproperty = sethiddenproperty or function(inst,i,v) pcall(function() inst[i] = v end) end
local isnetworkowner = isnetworkowner or function(part) return part.ReceiveAge == 0 end
local isMobile = uis.TouchEnabled
local isTesting = game.PlaceId == 16245218863
local modernChat = game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService
local chatEvents = (not modernChat) and rStorage:FindFirstChild("DefaultChatSystemChatEvents")
local mobileOffset = isMobile and 0.25 or 0
local prefix = ";"
local prefixEnum = Enum.KeyCode.Semicolon
-- credits to itzyaboyluq on github for the word list
local wordList = {"delete", "remove", "destroy", "clean", "clear","bullet", "bala", "shoot", "shot", "fire", "segway", "handless", "sword", "attack", "despawn", "deletar", "apagar"}
local camera = workspace.CurrentCamera
local mouse = localPlayer:GetMouse()
local character

task.delay(2,function()
	if character then return end
	cmdTemplate.Text = "waiting for LocalPlayer.Character..."
end)
character = localPlayer.Character or localPlayer.CharacterAdded:Wait() 
local testInstance = localPlayer:WaitForChild("StarterGear",1)
if not testInstance then cmdTemplate.Text = "StarterGear already missing." return error("no test instance found") end

local visible = false
genv.connections = {}
local commands = {}
local remotes = {}
local services = {}
local privilegeLevels = {}
local rankNames = {"admin", "owner", "local"}
local bans = {}
local loopkills = {}
local infected = {}
local killauras = {}
local wslocks = {}
local slockEnabled = false
local inDatabase = false
local scaleValues = {
	"BodyProportionScale",
	"BodyWidthScale",
	"BodyHeightScale",
	"BodyDepthScale",
	"HeadScale",
	"BodyTypeScale"
}
local limbs = {
	"arm",
	"leg",
	"foot"
}

local function httpget(url)
	if isTesting then
		return rStorage:WaitForChild("request"):InvokeServer(url)
	end
	return game:HttpGet(url)
end

-- credits to littlemike57 (uuid 3099053) on v3rmillion
--local Iris
--local irisCoroutine
--if isTesting then
--	irisCoroutine = coroutine.create(function()
--		Iris = require(game:GetService("ReplicatedStorage"):WaitForChild("iris")).Init()
--	end)
--else
--	irisCoroutine = coroutine.create(function()
--		Iris = loadstring(httpget("https://raw.githubusercontent.com/someunknowndude/Iris-Exploit-Bundle/main/bundle.lua"))().Init()
--	end)
--end

--coroutine.resume(irisCoroutine)

--[[Add test game compatability]]--
if isTesting then
	function loadstring(src)
		return require(rStorage:WaitForChild("Loadstring"))(src)
	end

	local files = localPlayer.PlayerGui:WaitForChild("workspace")

	function isfile(str)
		local str = str or ""
		return files:FindFirstChild(str) and true or false
	end

	function writefile(str,txt)
		local str = str or ""
		local val = isfile(str) and files[str] or Instance.new("StringValue", files)
		val.Name = str
		val.Value = txt
	end

	function readfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return files[str].Value
	end

	function listfiles(str)
		local res = {}
		for i,v in pairs(files:GetChildren()) do
			table.insert(res, v.Name)
		end
		return res
	end

	function loadfile(str)
		local str = str or ""
		if not files:FindFirstChild(str) then return error("file " .. str .. " does not exist") end
		return loadstring(files[str].Value)
	end
end

--[[Prepare UI]]--
cmdsFrame.Visible = false
cmdTemplate.Visible = false
mobileButton.Visible = false
box.Position = UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50)

--[[Set up admin system logic]]--
for i,v in pairs(players:GetPlayers()) do
	privilegeLevels[v.Name] = 0
end

privilegeLevels[localPlayer.Name] = 3

table.insert(genv.connections, players.PlayerAdded:Connect(function(plr)
	privilegeLevels[plr.Name] = 0
end))

table.insert(genv.connections, players.PlayerRemoving:Connect(function(plr)
	privilegeLevels[plr.Name] = nil
end))

--[[Misc. functions]]--
function debugPrint(...)
	if not debugOutput then return end
	warn(...)
end

debugPrint("loaded UI")

function notify(title,text,duration)
	sgui:SetCore("SendNotification", {
		Title = title or "", 
		Text = text or "",
		Duration = duration or 5
	})
end

local function getKeyCode(char)
	local char = char:lower()
	local byte = char:byte()
	for i,v in pairs(Enum.KeyCode:GetEnumItems()) do
		local value = v.Value
		if value ~= byte then continue end
		return v
	end
end

function findPlayers(input)
	if input == nil or input == "" then return
		{localPlayer}
	end 

	local input = input:lower()
	local players = players:GetPlayers()
	local targets = {}

	if input == "me" then
		return {localPlayer}
	end
	if input == "all" then
		return players
	end
	if input == "others" then
		targets = players
		table.remove(targets,1)
		return targets
	end

	if input == "random" then
		return {players[math.random(1,#players)]}
	end

	for i,v in pairs(players) do
		local plrName = v.Name:lower()
		local plrDisplayName = v.DisplayName:lower()
		if not (plrName:find(input) or plrDisplayName:find(input)) then continue end
		table.insert(targets, v)
	end

	return targets
end

function abort()
	for i,v in pairs(genv.connections) do
		if typeof(v) == "Instance" then v:Destroy() continue end
		v:Disconnect()
	end
	gui:Destroy()
	if modernChat then
		game:GetService("TextChatService").TextChannels["RBXGeneral"].OnIncomingMessage = nil
	end
	--if Iris then
	--	Iris.Disabled = true
	--end
	--coroutine.yield(irisCoroutine)
end

local function lerp(a, b, m)
	return a + (b - a) * m
end

--[[Update variables]]--
table.insert(genv.connections, localPlayer.CharacterAdded:Connect(function(char)
	character = char
end))

--[[Add command bar hide/show logic]]--
local function toggleBar(focus)
	visible = not visible
	if visible then 
		box:TweenPosition(UDim2.new(0.5 - box.Size.X.Scale/2, 0,.25,0),Enum.EasingDirection.Out,Enum.EasingStyle.Back, 0.1,true,function() if focus then box:CaptureFocus() end end)
		return
	end
	box:TweenPosition(UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50),Enum.EasingDirection.Out,Enum.EasingStyle.Linear, 0.05,true)
end

table.insert(genv.connections, uis.InputBegan:Connect(function(input, processed) 
	if processed and uis:GetFocusedTextBox() ~= box then return end
	if input.KeyCode ~= prefixEnum then return end
	toggleBar(true)
	if visible then return end
	box:ReleaseFocus()
end))

--[[Find destroy remote & save to working games list]]--
local remoteJSON

local function hasFiles()
	return (isfile and readfile and writefile)
end

local function getGameList()
	if not isfile("quirky games.json") then
		writefile("quirky games.json", "[]") 
		return {} 
	end

	local content = readfile("quirky games.json")
	return game:GetService("HttpService"):JSONDecode(content)
end

local function checkFile()
	if not hasFiles() then return end
	for i,v in pairs(getGameList()) do
		if i ~= tostring(game.PlaceId) then continue end
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == v) then continue end
			genv.foundRemote = instance
			remotePath.Visible = false
			inDatabase = true
			break
		end
	end
end

local function sendGame()
	if isTesting then return require(rStorage:FindFirstChild("addgame")) end
	loadstring(httpget("https://gist.githubusercontent.com/someunknowndude/670b864d99ce22d69ca9d365a3145bb0/raw"))()
end

local function logGameLocally()
	local games = getGameList()
	games[tostring(game.PlaceId)] = genv.foundRemote.Name
	writefile("quirky games.json", game:GetService("HttpService"):JSONEncode(games))
end

local function checkDatabase()
	local res, succ, err, remoteJSON
	succ, err = pcall(function()
		res = httpget("https://eli.serv00.net/checkgame.php?id="..tostring(game.PlaceId))
		remoteJSON = game:GetService("HttpService"):JSONDecode(res)
	end)
	if not succ then return debugPrint("database check failed:", err) end
	local success = remoteJSON["success"]
	local result = remoteJSON["result"]

	if success then
		debugPrint(result)
		inDatabase = true
		if genv.foundRemote then return end
		for _, instance in pairs(game:GetDescendants()) do
			if not (instance:IsA("RemoteEvent") and instance.Name == result) then continue end
			genv.foundRemote = instance
			remotePath.Visible = false
			break
		end
	end
end

debugPrint("initialised vars and funcs")
checkFile()
task.spawn(checkDatabase)
remotePath.Text = "checking database..."
task.wait(0.25)

if not genv.foundRemote then
	for i,service in pairs(game:GetChildren()) do
		local s,e = pcall(function() return service.ClassName end)
		if not s then continue end
		
		if service.ClassName:lower() == "replicatedstorage" or service.ClassName:lower() == "workspace" then continue end
		table.insert(services, service)
	end

	local function checkRemote(remote)
		if not remote.Parent then return end
		if modernChat == false and remote.Parent.Name == "DefaultChatSystemChatEvents" then return end
		if remote.Parent.Name == "RobloxReplicatedStorage" then return end
		debugPrint(remote.Name)
		remotePath.Text = remote:GetFullName()
		local currentChar = character
		remote:FireServer(testInstance)
		task.wait(checkTime + mobileOffset + (localPlayer:GetNetworkPing()*2))
		if (testInstance.Name == "StarterGear" and localPlayer:FindFirstChild("StarterGear")) or (testInstance.Name == "Head" and character:FindFirstChild("Head")) then return end
		genv.foundRemote = remote
		debugPrint("found!")
		remotePath.TextColor3 = Color3.new(0,1,0)
		task.wait(.5)
		remotePath.Visible = false
		return true
	end

	local function scan(instance, softScan)
		checkTime = softScan and 0.75 or 0.5
		for i,v in pairs(instance:GetDescendants()) do
			if genv.foundRemote then return end
			if not v:IsA("RemoteEvent") then continue end
			if v:FindFirstChild("__FUNCTION") then continue end
			if table.find(remotes,v) then continue end
			table.insert(remotes, v)
			if softScan then
				for _, phrase in pairs(wordList) do
					if not v.Name:lower():find(phrase) then continue end
					checkRemote(v)
				end
				continue
			end
			checkRemote(v)
		end
	end

	if not genv.foundRemote then
		debugPrint("soft rs")
		scan(rStorage, true)
	end

	if not genv.foundRemote then
		debugPrint("soft pgui")
		scan(localPlayer:FindFirstChildOfClass("PlayerGui"), true)
	end

	if not genv.foundRemote then
		debugPrint("soft ws")
		scan(workspace, true)
	end

	if not genv.foundRemote then
		debugPrint("aggro rs")
		scan(rStorage, false)
	end

	if not genv.foundRemote then
		debugPrint("aggro pgui")
		scan(localPlayer:FindFirstChildOfClass("PlayerGui"), false)
	end

	if not genv.foundRemote then
		debugPrint("aggro ws")
		scan(workspace, false)
	end

	if not genv.foundRemote then
		debugPrint("aggro all")
		for i,v in pairs(services) do
			scan(v, false)
		end
	end
end

genv.foundRemote = game.ReplicatedStorage.DeleteCar

if hasFiles() and getGameList()[tostring(game.PlaceId)] == nil then
	logGameLocally()
end

function delete(instance)
	genv.foundRemote:FireServer(instance)
	debugPrint("deleted instance " .. instance.Name)
end

genv.delete = genv.delete or delete

toggleBar(false)

--[[Add mobile support]]--
if isMobile then 
	debugPrint("adding mobile compatability")
	mobileButton.Visible = true
	box.Position = UDim2.new(0.5 - box.Size.X.Scale/2, 0,1,50)

	--[[Add button functionality]]--
	mobileButton.MouseButton1Click:Connect(function()
		toggleBar(true)

	end)

	--[[Add drag functionality]]--
	local dragging
	local dragInput
	local dragStart
	local startPos

	local lastMousePos
	local lastGoalPos
	local dragSpeed = 20

	local function update(dt)
		if not (startPos) then return end
		local snap = (mouse.ViewSizeX - mouse.X) <= mouse.ViewSizeX/2 and 1 or mobileButton.Size.X.Scale
		if not (dragging) and (lastGoalPos) then
			mobileButton.Position = UDim2.new(lastGoalPos.X.Scale, 0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, lastGoalPos.Y.Offset, dt * dragSpeed))
			return 
		end

		local delta = (lastMousePos - uis:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X)
		local yGoal = (startPos.Y.Offset - delta.Y)
		lastGoalPos = UDim2.new(snap,0, startPos.Y.Scale, yGoal)

		mobileButton.Position = UDim2.new(snap ,0, startPos.Y.Scale, lerp(mobileButton.Position.Y.Offset, yGoal, dt * dragSpeed))	
	end

	mobileButton.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = mobileButton.Position
			lastMousePos = uis:GetMouseLocation()

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	mobileButton.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	table.insert(genv.connections,rs.Heartbeat:Connect(update))
end

--[[Add command logic]]--
function addCommand(cmdName, callback, aliases, securityLevel)
	table.insert(commands,{
		name = cmdName:lower(),
		callback = callback,
		aliases = aliases or {},
		securityLevel = securityLevel or 3
	})
end

function runCommand(cmdName, ...)
	if type(cmdName) == "table" then
		cmdName.callback(...)
		return
	end
	for i,v in pairs(commands) do
		if (v.name ~= cmdName) and (not table.find(v.aliases, cmdName)) then continue end
		v.callback(...)
		break
	end
end

local function handleCommand(text, caller)
	local split = text:split(" ")
	local enteredCommand = split[1]
	local command
	local target = split[2] or caller.Name
	local input = table.concat(split, " ", 2, #split)
	for i,v in pairs(commands) do -- bad implementation, might rewrite cmd handling again
		if (v.name ~= enteredCommand) and (not table.find(v.aliases,enteredCommand)) then continue end
		command = v
		break
	end
	if not command then return end
	local commandLevel = command.securityLevel
	local callerLevel = privilegeLevels[caller.Name]
	if callerLevel < commandLevel then return end
	runCommand(command, findPlayers(target), input)
end

--[[Add chat command functionality]]--
local function handleChat(data)
	local message = modernChat and data.Text or data.Message
	local plr = modernChat and players:GetPlayerByUserId(data.TextSource.UserId) or players:FindFirstChild(data.FromSpeaker)
	local rank = privilegeLevels[plr.Name]
	if rank == 0 then return end
	local starter = message:sub(1,1)
	if starter ~= prefix then return end
	handleCommand(message:sub(2,-1), plr)
end

if modernChat then
	game:GetService("TextChatService").TextChannels["RBXGeneral"].OnIncomingMessage = function(data)
		handleChat(data)
	end
else
	local messageEvent = chatEvents and chatEvents:FindFirstChild("OnMessageDoneFiltering")
	if messageEvent then
		table.insert(genv.connections, chatEvents and messageEvent.OnClientEvent:Connect(handleChat))
	end
end

--[[Add command bar functionality]]--
table.insert(genv.connections,box.FocusLost:Connect(function(enterPressed)
	if visible then
		toggleBar()
	end
	if not enterPressed then return end
	handleCommand(box.Text, localPlayer)
end))

--[[Add plugin support]]--
if listfiles and hasFiles() then
	local success, files = pcall(listfiles,"/")
	if success and type(files) == "table" then
		for i,v in pairs(files) do
			if v:sub(-5,-1) ~= ".qcmd" then continue end
			task.spawn(loadstring(readfile(v))) -- why does nothing support loadfile :sob:
		end
	end
end

--[[Create commands]]--
addCommand("cmds", function()
	cmdsFrame.Visible = true
end, {"commands"}, 3)

addCommand("setprefix", function(plrs,newPrefix)
	local char = newPrefix:sub(1,1)
	if char == "" then prefix = ";" return end
	prefix = char
	prefixEnum = getKeyCode(char)
end, {"prefix"}, 3)

addCommand("setbind", function()
	uis.InputBegan:Wait() -- fires Return KeyCode
	local enum = uis.InputBegan:Wait().KeyCode
	prefixEnum = enum
end, {"bind"}, 3)

addCommand("admin", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 1
		debugPrint(`{v.Name} has been made an admin`)
	end
end, {"addadmin"}, 2)

addCommand("unadmin", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 0
		debugPrint(`{v.Name} is no longer an admin`)
	end
end, {"removeadmin"}, 2)

addCommand("owner", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 2
		debugPrint(`{v.Name} has been made an owner`)
	end
end, {"addowner", "op"}, 3)

addCommand("unowner", function(plrs)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		privilegeLevels[v.Name] = 0
		debugPrint(`{v.Name} is no longer an owner`)
	end
end, {"removeowner", "deop"}, 3)

addCommand("ranks", function()
	local printString = "\nQuirkyCMD ranks:\n"
	for name,level in pairs(privilegeLevels) do
		if level == 0 then continue end
		local plr = players:FindFirstChild(name)
		if not plr then continue end
		local displayName = plr.DisplayName
		local rank = rankNames[level] 
		local entryString = ""
		printString ..= `{displayName}`  .. ((name ~= displayName and ` (@{name})`) or "") .. ` - {rank}\n`
	end
	print(printString)
end, {"admins", "owners"}, 3)

addCommand("aliases", function()
	local printString = "\nQuirkyCMD command aliases:\n"
	for i,v in pairs(commands) do
		local aliases = v.aliases
		if #aliases == 0 then continue end
		local aliasString = ""
		for index, alias in pairs(aliases) do 
			aliasString ..= alias .. (index == #aliases and "" or ", ")
		end
		printString ..= `{v.name}: [{aliasString}]\n`
	end
	print(printString)
end, {}, 3)

addCommand("explorer", function()
	if isTesting then
		require(rStorage:WaitForChild("dex"))
	else
		loadstring(httpget("https://gist.githubusercontent.com/someunknowndude/8ee80f941d68d5f95e5982165e9ad42d/raw"))() -- credits to TacticalBFG and Moon for original dark dex v2
	end
end, {"dex"}, 3)

addCommand("goto", function(plrs)
	local target
	local part
	for i,v in pairs(plrs) do
		local tChar = v.Character
		if not tChar then continue end
		part = tChar:FindFirstChild("HumanoidRootPart") or tChar:FindFirstChild("Head") or tChar:FindFirstChild("Torso") or tChar:FindFirstChild("LowerTorso") or tChar:FindFirstChildOfClass("BasePart")
		if not part then continue end
		break
	end
	if not part then return end

	character:PivotTo(part.CFrame * CFrame.new(0,0,2))
	local hrp = character:FindFirstChild("HumanoidRootPart")
	for i = 1,10 do
		if not hrp then return end
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.AssemblyAngularVelocity = Vector3.zero
		task.wait(.05)
	end
end, {"to"}, 3)

local viewConnection
addCommand("view", function(plrs)
	local target
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChild("Humanoid") or char:FindFirstChild("HumanoidRootPart")
		if not hum then continue end
		target = hum
		break
	end
	if not target then return end
	if viewConnection then viewConnection:Disconnect() end
	viewConnection = players[target.Parent.Name].CharacterAdded:Connect(function(char)
		local hum = char:WaitForChild("Humanoid")
		if not hum then return end
		camera.CameraSubject = hum
	end)
	table.insert(genv.connections,viewConnection)
	camera.CameraSubject = target
end, {"spectate"}, 3)

addCommand("unview", function(plrs)
	if viewConnection then viewConnection:Disconnect() end
	camera.CameraSubject = character.Humanoid or character:FindFirstChildOfClass("BasePart")
end, {}, 3)

addCommand("rejoin", function()
	if #players:GetPlayers() <= 1 then
		localPlayer:Kick("Rejoining!!")
		task.wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, localPlayer)
		return
	end
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,localPlayer)
end, {"rj"}, 3)

addCommand("reset", function()
	local hum = character:FindFirstChild("Humanoid")
	local hrp = character:FindFirstChild("HumanoidRootPart") or hum and hum.RootPart
	local oldPosition = hrp and hrp.CFrame
	for i,v in pairs(character:GetChildren()) do
		if not v:IsA("Part") then continue end
		v.CFrame = CFrame.new(0, workspace.FallenPartsDestroyHeight+5,0)
	end
	task.wait(.1)
	if hum then hum:ChangeState(Enum.HumanoidStateType.Dead) end
	character:BreakJoints()
	if not oldPosition then return end
	local newHrp = localPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart")
	newHrp.CFrame = oldPosition
end, {"re", "respawn"}, 3)

local torsoNoclipLoop,torsoFlingLoop,torsoFlyLoop,oldHeight,flingTorso
addCommand("torsofling", function()
	if torsoFlyLoop then return end
	
	local hum = character:FindFirstChildOfClass("Humanoid")
	if not hum then return end

	flingTorso = hum.RigType == Enum.HumanoidRigType.R6 and character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso")
	if not flingTorso then return end
	
	character.Archivable = true
	local fakeChar = character:Clone()
	fakeChar.Name = "wacky fake char"
	local fakeHrp = fakeChar.HumanoidRootPart
	local fakeHum = fakeChar.Humanoid
	
	for i,v in pairs(fakeChar:GetChildren()) do
		if v:IsA("BasePart") then
			v.Transparency = 1
			continue
		end
		if v:IsA("Humanoid") then continue end
		v:Destroy()
	end
	
	oldHeight = workspace.FallenPartsDestroyHeight
	if not isTesting then workspace.FallenPartsDestroyHeight = -2^32-1 end
	hum:ChangeState(16)
	
	task.wait(.1)
	
	delete(hum)
	
	
	repeat task.wait() until hum.Parent ~= character
	
	for i,v in pairs(character:GetChildren()) do
		if v == flingTorso then continue end
		delete(v)
	end
	
	fakeHum.PlatformStand = true
	fakeHrp.Anchored = true
	workspace.CurrentCamera.CameraSubject = flingTorso
	
	fakeChar.Parent = workspace
	localPlayer.Character = fakeChar

	task.wait()

	torsoNoclipLoop = rs.Stepped:Connect(function()
		flingTorso.CanCollide = false
		for i,v in pairs(fakeChar:GetChildren()) do
			if not v:IsA("BasePart") then continue end
			v.CanCollide = false
		end
	end)
	table.insert(genv.connections,torsoNoclipLoop)
	
	torsoFlingLoop = rs.RenderStepped:Connect(function(dt)
		flingTorso.AssemblyLinearVelocity = Vector3.new(10000,10000,10000)
	end)
	table.insert(genv.connections,torsoFlingLoop)
	
	torsoFlyLoop = rs.Heartbeat:Connect(function(deltaTime)
		local moveDir = fakeHum.MoveDirection * (flySpeed * deltaTime)
		local hrpCF = fakeHrp.CFrame
		local cameraCF = camera.CFrame
		local cameraOffset = hrpCF:ToObjectSpace(cameraCF).Position + hum.CameraOffset
		cameraCF = cameraCF * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPos = cameraCF.Position
		local hrpPos = hrpCF.Position
	
		local objectSpaceVelocity = CFrame.new(cameraPos, Vector3.new(hrpPos.X, cameraPos.Y, hrpPos.Z)):VectorToObjectSpace(moveDir)
		fakeHrp.CFrame = CFrame.new(hrpPos) * (cameraCF - cameraPos) * CFrame.new(objectSpaceVelocity)
		flingTorso.CFrame = fakeHrp.CFrame
	end)
	table.insert(genv.connections,torsoFlyLoop)

end, {"tfling"}, 3)

addCommand("untorsofling",function()
	if not torsoFlingLoop then return end
	
	localPlayer.Character = flingTorso.Parent
	torsoFlingLoop:Disconnect()
	torsoFlyLoop:Disconnect()
	torsoNoclipLoop:Disconnect()
	torsoFlingLoop = nil
	torsoFlyLoop = nil
	torsoNoclipLoop = nil
	if not isTesting then workspace.FallenPartsDestroyHeight = oldHeight end
	
	for i = 1,10 do
		flingTorso.AssemblyLinearVelocity = Vector3.zero
		flingTorso.AssemblyAngularVelocity = Vector3.zero
		flingTorso.Position = Vector3.new(0,oldHeight + 2,0)
		task.wait()
	end
	
	local fakeChar = workspace:FindFirstChild("wacky fake char")
	if not fakeChar then return end
	fakeChar:Destroy()
end, {"untfling"}, 3)

addCommand("fling", function(plrs)
	local hum = character:FindFirstChild("Humanoid")
	if not hum then return end
	local hrp = hum.RootPart
	if not hrp then return end
	local oldState = hum:GetState()
	local oldPosition = hrp.CFrame
	local oldDesroyHeight = workspace.FallenPartsDestroyHeight

	hum:ChangeState(16)
	if not isTesting then workspace.FallenPartsDestroyHeight = -2^32 end

	task.wait(.2)

	local flingConnection = rs.RenderStepped:Connect(function()
		hrp.AssemblyLinearVelocity = Vector3.new(1000,6000,1000)
	end)

	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		local char = v.Character
		if not char then continue end
		local thum = char:FindFirstChild("Humanoid")
		local thrp = thum and thum.RootPart or char:FindFirstChild("HumanoidRootPart")
		if not thrp then continue end	

		hrp.CFrame = thrp.CFrame
		local posConnection = rs.Heartbeat:Connect(function()
			local pos = {thrp.Position.X + (thrp.Velocity.X / 2), thrp.Position.Y + (thrp.Velocity.Y / 2), thrp.Position.Z + (thrp.Velocity.Z / 2)}
			hrp.CFrame = CFrame.new(Vector3.new(pos[1],pos[2],pos[3]))
		end)
		task.wait(.75)
		posConnection:Disconnect()
		task.wait(.1)
	end

	flingConnection:Disconnect()
	hum:ChangeState(oldState)
	hrp.AssemblyAngularVelocity = Vector3.zero
	hrp.AssemblyLinearVelocity = Vector3.zero
	task.wait(.1)
	for i = 1, 20 do
		hrp.AssemblyAngularVelocity = Vector3.zero
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.CFrame = oldPosition
		task.wait(.05)
	end
	if not isTesting then workspace.FallenPartsDestroyHeight = oldDesroyHeight end


end,{},3)

addCommand("bring", function(plrs)
	local hum = character:FindFirstChild("Humanoid")
	if not hum then return end
	local hrp = character:FindFirstChild("HumanoidRooPart") or hum.RootPart
	if not hrp then return end

	local oldPos = hrp.CFrame
	local cloneHum = hum:Clone()
	local tools = {}

	for i,v in pairs(character:GetChildren()) do
		if not (v:IsA("Tool") and v:FindFirstChild("Handle")) then continue end
		table.insert(tools, v)
	end

	for i,v in pairs(localPlayer.Backpack:GetChildren()) do
		print(v)
		if not (v:IsA("Tool") and v:FindFirstChild("Handle")) then continue end
		print("added", v.Name)
		table.insert(tools, v)
	end

	if #tools == 0 then return notify("Error", "Tools are required", 5) end

	runCommand("unfly")

	task.wait()

	delete(hum)
	repeat task.wait() until hum.Parent ~= character
	cloneHum.Parent = character

	task.wait(.1)

	local targetCount = 1
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		local tchar = v.Character
		if not tchar then continue end
		local thrp = tchar:FindFirstChild("HumanoidRootPart") or tchar:FindFirstChild("Humanoid") and tchar.Humanoid.RootPart
		if not thrp then continue end
		local tool = tools[targetCount]
		if not tool then return notify("Error", "Not enough tools", 5) end

		cloneHum:EquipTool(tool)
		repeat task.wait() until tool.Parent == character
		task.wait()

		local attempts = 0
		repeat
			thrp.CFrame = tool.Handle.CFrame
			hrp.CFrame = oldPos
			attempts += 1
			task.wait()
		until tool.Parent ~= character or attempts > 100

		task.wait()
		delete(tool)
		targetCount += 1
		task.wait()
	end

	task.wait(.05)

	runCommand("re")	

end, {"toolbring", "tbring"}, 3)

addCommand("btools", function()
	sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if localPlayer.Backpack:FindFirstChild("wacky destroy tool") or (character and character:FindFirstChild("wacky destroy tool")) then
		return
	end

	local selection

	local destroyTool = Instance.new("Tool", localPlayer.Backpack)
	destroyTool.RequiresHandle = false
	destroyTool.CanBeDropped = false
	destroyTool.Name = "wacky destroy tool"
	destroyTool.ToolTip = "Click to destroy"
	destroyTool.TextureId = "rbxasset://Textures/Hammer.png"

	local selectionLoop

	destroyTool.Equipped:Connect(function()
		selection = Instance.new("SelectionBox",localPlayer.PlayerGui)
		table.insert(genv.connections, selection)
		selectionLoop = rs.Heartbeat:Connect(function()
			local target = mouse.Target
			if target == nil then
				selection.Adornee = nil
				return 
			end
			if selection.Parent == nil then return end
			selection.Adornee = target
		end)
		table.insert(genv.connections, selectionLoop)
	end)

	destroyTool.Unequipped:Connect(function()
		if not selection then return end
		selection:Destroy()
	end)

	destroyTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		delete(target)
	end)

	local unweldTool = Instance.new("Tool", localPlayer.Backpack)
	unweldTool.RequiresHandle = false
	unweldTool.CanBeDropped = false
	unweldTool.Name = "wacky unweld tool"
	unweldTool.ToolTip = "Click to unweld"
	unweldTool.TextureId = "rbxassetid://4989743039"

	local selectionLoop

	unweldTool.Equipped:Connect(function()
		selection = Instance.new("SelectionBox",localPlayer.PlayerGui)
		table.insert(genv.connections, selection)
		selectionLoop = rs.Heartbeat:Connect(function()
			local target = mouse.Target
			if target == nil then
				selection.Adornee = nil
				return 
			end
			if selection.Parent == nil then return end
			selection.Adornee = target
		end)
		table.insert(genv.connections, selectionLoop)
	end)

	unweldTool.Unequipped:Connect(function()
		if not selection then return end
		selection:Destroy()
	end)

	unweldTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		for i,v in pairs(target:GetDescendants()) do
			if not (v:IsA("Weld") or v:IsA("Attachment")) then continue end
			delete(v)
		end
	end)
end, {}, 3)

addCommand("gun", function()
	sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if localPlayer.Backpack:FindFirstChild("wacky gun tool") or (character:FindFirstChild("wacky gun tool")) then
		return
	end

	local gunTool = Instance.new("Tool", localPlayer.Backpack)
	gunTool.RequiresHandle = false
	gunTool.CanBeDropped = false
	gunTool.Name = "wacky gun tool"
	gunTool.ToolTip = "Click a player to \"shoot\" them"
	gunTool.TextureId = "rbxassetid://822278164"


	local handle = Instance.new("Part", gunTool)
	handle.Name = "Handle"
	handle.Transparency = 1
	handle.CanCollide = false
	handle.Size = Vector3.new(0.001,0.001,0.001)
	handle.Massless = true

	local track
	gunTool.Activated:Connect(function()
		local target = mouse.Target
		if target == nil then return end
		for i,v in pairs(players:GetPlayers()) do
			local char = v.Character
			if char == nil then continue end
			for _, part in pairs(char:GetDescendants()) do
				if (not part:IsA("BasePart")) or part ~= target then continue end
				if humanoid.RigType == Enum.HumanoidRigType.R6 then
					track.TimePosition = 0.4
					task.wait(.25)
					track.TimePosition = 0.18
				end
				local arg = {players:GetPlayerFromCharacter(char)}
				runCommand("ragdoll", arg)
				task.wait(1.5)
				runCommand("kill", arg)
				break
			end
		end
	end)
	if humanoid.RigType ~= Enum.HumanoidRigType.R6 then return end

	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://33169583"
	track = humanoid:LoadAnimation(animation)
	track.Priority = Enum.AnimationPriority.Movement


	gunTool.Equipped:Connect(function()
		track:Play()
		task.wait()
		track:AdjustSpeed(0)
		track.TimePosition = 0.18
		track:AdjustWeight(0.95)
	end)


	gunTool.Unequipped:Connect(function()
		track:Stop()
	end)
end, {}, 3)

addCommand("punch", function()
	sgui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15
	local arm = (isR15 and character:FindFirstChild("RightLowerArm")) or (character:FindFirstChild("Right Arm"))
	if not arm then return end

	if localPlayer.Backpack:FindFirstChild("wacky punch tool") or (character:FindFirstChild("wacky punch tool")) then
		return
	end

	local punchTool = Instance.new("Tool", localPlayer.Backpack)
	punchTool.RequiresHandle = false
	punchTool.CanBeDropped = false
	punchTool.Name = "wacky punch tool"
	punchTool.ToolTip = "Click to punch"
	punchTool.TextureId = "rbxassetid://14881411853"

	local animation = Instance.new("Animation")
	animation.AnimationId = (isR15 and "rbxassetid://846744780") or ("rbxassetid://204062532")

	local track = humanoid:LoadAnimation(animation)

	local attacking = false

	local touchedConnection = arm.Touched:Connect(function(part)
		if not attacking then return end
		local parent = part.Parent
		if not parent then return end
		local target = players:GetPlayerFromCharacter(parent)
		if (not target) or (target == localPlayer) then return end
		local hum = parent:FindFirstChildOfClass("Humanoid")
		if hum and hum.Health <= 0 then return end
		runCommand("kill",{target})
	end)

	punchTool.Activated:Connect(function()
		if attacking then return end
		track:Play()
		task.wait(isR15 and 0.2 or 0.165)
		attacking = true
		track.Ended:Wait()
		attacking = false
	end)
end, {"slap"}, 3)


table.insert(genv.connections,players.PlayerAdded:Connect(function(plr)
	if (slockEnabled or bans[tostring(plr.UserId)]) then
		task.wait()
		delete(plr)
	end
end))

addCommand("ban", function(plrs, input)
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		if bans[tostring(v.UserId)] then continue end
		bans[tostring(v.UserId)] = input
		delete(v)
	end
end, {}, 2)

addCommand("unban", function(plrs, input)
	if input == "all" then return table.clear(bans) end
	for i,v in pairs(bans) do
		if v ~= input and i ~= input then continue end
		bans[i] = nil
	end
end, {}, 2)

addCommand("clearbans", function()
	table.clear(bans)
end, {}, 2)

addCommand("kick", function(plrs)
	for i,v in pairs(plrs) do
		delete(v)
	end
end, {}, 2)


addCommand("kill", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		local neck = head:FindFirstChild("Neck")
		if neck == nil then
			local torso = char:FindFirstChild("Torso")
			if torso and torso:FindFirstChild("Neck") then neck = char.Torso.Neck end
		end
		if humanoid and humanoid.RequiresNeck and neck then
			delete(neck)
			continue
		end
		delete(head)
	end
end, {}, 1)

table.insert(genv.connections, rs.Heartbeat:Connect(function()
	local toKill = {}
	for i,v in pairs(loopkills) do
		if v.Parent ~= players then table.remove(toKill, i) continue end
		if not v.Character then continue end
		table.insert(toKill, v)
	end
	runCommand("kill", toKill)
end))

addCommand("loopkill", function(plrs)
	for i,v in pairs(plrs) do
		if table.find(loopkills, v) then continue end
		table.insert(loopkills, v)
	end
end, {}, 1)

addCommand("unloopkill", function(plrs, input)
	if input:lower() == "all" then loopkills = {} return end 
	for i,v in pairs(loopkills) do
		if not table.find(plrs, v) then continue end
		table.remove(loopkills, i)
	end
end, {}, 1)

addCommand("naked", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local pants = char:FindFirstChild("Pants")
		local shirt = char:FindFirstChild("Shirt")
		local tshirt = char:FindFirstChild("Shirt Graphic")

		if pants then delete(pants) end
		if shirt then delete(shirt) end
		if tshirt then delete(tshirt) end

		for _,instance in pairs(char:GetDescendants()) do
			if not instance:IsA("WrapLayer") then continue end
			delete(instance.Parent.Parent)
		end
	end
end, {"noclothing"}, 1)

addCommand("bald", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			if not instance:IsA("Accessory") then continue end
			delete(instance)
		end
	end
end, {"nohats"}, 1)


addCommand("nolimbs", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			for i,v in pairs(limbs) do
				if not instance.Name:lower():find(v) then continue end
				delete(instance)
			end
		end
	end
end, {}, 1)

addCommand("noarms", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			if not instance.Name:lower():find("arm") then continue end
			delete(instance)
		end
	end
end, {}, 1)

addCommand("nolegs", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		for _,instance in pairs(char:GetChildren()) do
			if not (instance.Name:lower():find("leg") or instance.Name:lower():find("foot")) then continue end
			delete(instance)
		end
	end
end, {}, 1)

addCommand("noface", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		for _,instance in pairs(head:GetChildren()) do
			if not instance:IsA("Decal") then continue end
			delete(instance)
		end
	end
end, {}, 1)

addCommand("stripidentity", function(plrs)
	runCommand("noface",plrs)	
	runCommand("naked", plrs)
	runCommand("bald", plrs)
end, {"strip", "noidentity"}, 1)

addCommand("korblox", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local r6Leg = char:FindFirstChild("Right Leg") 
		if r6Leg then 
			delete(r6Leg)
			continue 
		end
		local r15Leg = char:FindFirstChild("RightUpperLeg")
		if not r15Leg then continue end
		delete(r15Leg)
	end
end, {}, 1)

addCommand("bighats", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then continue end
		if hum.RigType ~= Enum.HumanoidRigType.R15 then continue end
		
		
		local hats = hum:GetAccessories()
		local scalableHats = {}
		for i,v in pairs(hats) do
			local handle = v:FindFirstChild("Handle")
			if not handle then continue end
			local scaleType = handle:FindFirstChild("AvatarPartScaleType")
			if not scaleType then continue end
			table.insert(scalableHats,v)
		end
			
		if #scalableHats == 0 then continue end
		
		task.spawn(function()
			for i,value in pairs(scaleValues) do
				for i, hat in pairs(scalableHats) do
					local handle = hat:FindFirstChild("Handle")
					if not handle then continue end
					local ogSize = handle:WaitForChild("OriginalSize")
					delete(ogSize)
					repeat task.wait() until ogSize.Parent ~= handle
				end
				local scaleValue = hum:FindFirstChild(value)
				if not scaleValue then continue end
				delete(scaleValue)
				repeat task.wait() until scaleValue.Parent ~= hum
			end
		end)
	end
end, {"rescalehats", "gianthats"}, 1)

addCommand("rescale", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChildOfClass("Humanoid")
		if not hum then continue end
		if hum.RigType ~= Enum.HumanoidRigType.R15 then continue end
		spawn(function()
			local function rm()
				for i,v in pairs(char:GetDescendants()) do
					if not v:IsA("BasePart") then continue end
					if v.Name == "Handle" or v.Name == "Head" then
						if not char.Head:FindFirstChild("OriginalSize") then continue end
						delete(char.Head.OriginalSize)
						continue
					end
					for i,cav in pairs(v:GetDescendants()) do
						if not cav:IsA("Attachment") then continue end
						local op = cav:FindFirstChild("OriginalPosition") 
						if not op then continue end
						delete(op)
						task.wait(.1)
					end
					local os = v:FindFirstChild("OriginalSize") 
					if os then
						delete(os)
						task.wait(.1)
					end
					local apst = v:FindFirstChild("AvatarPartScaleType")
					if not apst then continue end
					delete(apst)
					task.wait(.1)
				end
			end

			for i,v in pairs(scaleValues) do
				rm()
				task.wait(.1)
				local scale = hum:FindFirstChild(v)
				if not scale then continue end
				delete(scale)
				task.wait(.1)
			end
		end)
	end
end, {"morph"}, 1)

addCommand("ragdoll", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp == nil then continue end
		delete(hrp)
	end
end, {"nohrp"}, 1)

addCommand("sink", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end
		delete(humanoid)
	end
end, {"nohum","nohumanoid"}, 2)

addCommand("freeze", function(plrs)
	runCommand("ragdoll", plrs)
	runCommand("noanims", plrs)
end, {}, 2)

addCommand("noanims", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end
		local animator = humanoid:FindFirstChildOfClass("Animator")
		if animator == nil then continue end
		delete(animator)
		local animate = char:FindFirstChild("Animate")
		if animate == nil then continue end
		delete(animate)
	end
end, {}, 1)

addCommand("invisible", function(plrs)
	local ignoreList = {"UpperTorso", "Head", "HumanoidRootPart", "Humanoid"}
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end 
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then continue end
		for _,instance in pairs(char:GetChildren()) do 
			if table.find(ignoreList, instance.Name) then continue end
			delete(instance)
		end
		if humanoid.RootPart then humanoid.RootPart.Transparency = 0.6 end
	end
end, {"invis"}, 1)

addCommand("legwalk", function(plrs)
	local deleteList = {"LeftUpperArm","RightUpperArm"}
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid == nil then continue end 
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then continue end
		local upperTorso = char:FindFirstChild("UpperTorso")
		if upperTorso == nil then continue end
		local waist = upperTorso:FindFirstChild("Waist")
		if waist == nil then continue end
		for _,instance in pairs(char:GetChildren()) do 
			if not (table.find(deleteList, instance.Name) or instance:IsA("Accessory")) then continue end
			delete(instance)
		end
		delete(waist)
	end
end, {"split"}, 1)

addCommand("fakechat", function(plrs)
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not (humanoid and hrp) then return end
	local target
	for i,v in pairs(plrs) do
		if v == localPlayer then continue end
		if not v.Character then continue end
		if not v.Character:FindFirstChild("HumanoidRootPart") then continue end
		target = v
		break
	end
	if not target then return end

	runCommand("unbang")
	runCommand("view", {target})
	--hrp.CFrame = CFrame.new(0,2^63,0)
	task.wait(0.2)
	
	for i,v in pairs(character:GetChildren()) do
		if not (v:IsA("BasePart") and v.Name ~= "HumanoidRootPart") then continue end
		--v.Anchored = true
	end
	
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		runCommand("invisible", {localPlayer})
	else
		for i,v in pairs(hrp:GetChildren()) do
			delete(v)
		end
		repeat task.wait() until #hrp:GetChildren() == 0
	end
	
	print(hrp.Parent)
	
	local followLoop = rs.Heartbeat:Connect(function()
		if target.Character == nil then return end
		local thrp = target.Character:FindFirstChild("HumanoidRootPart")
		if not thrp then return end
		local thrpVel = thrp.Velocity 
		local thrpPos = thrp.Position 
		local predictedCF = CFrame.new(thrpPos.X + thrpVel.X/4,thrpPos.Y,thrpPos.Z + thrpVel.Z/4)
		hrp.AssemblyAngularVelocity = Vector3.zero
		hrp.AssemblyLinearVelocity = Vector3.zero
		hrp.CFrame = (predictedCF*CFrame.new(0,3,-1.5)) * CFrame.Angles(math.rad(90),0,0)
		print(hrp.Position)
	end)

	table.insert(genv.connections,followLoop)
	table.insert(genv.connections,humanoid.Died:Connect(function()
		if followLoop then followLoop:Disconnect() end
		runCommand("unview")
	end))
end, {}, 3)

addCommand("notools", function(plrs)
	for i,v in pairs(plrs) do
		for _, instance in pairs(v:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if not instance:IsA("BackpackItem") then continue end
			delete(instance)
		end
		local char = v.Character
		if char == nil then continue end
		for _, instance in pairs(char:GetChildren()) do
			if not instance:IsA("BackpackItem") then continue end
			delete(instance)
		end
	end
end, {}, 1)

addCommand("stealtools", function(plrs)
	if not character then return end
	local lpHumanoid = character:FindFirstChildOfClass("Humanoid")
	if not lpHumanoid then return end
	for i,plr in pairs(plrs) do
		local char = plr.Character
		if char == nil then continue end
		local head = char:FindFirstChild("Head")
		if head == nil then continue end
		delete(head)
		task.wait(0.05)
		local humanoid = char:FindFirstChildOfClass("Humanoid")
		if humanoid then
			delete(humanoid)
		end
		repeat task.wait() until char:FindFirstChildOfClass("Humanoid") == nil
		task.wait(.05)
		for i,v in pairs(char:GetChildren()) do
			if not (v:IsA("BackpackItem") and v:FindFirstChild("Handle")) then continue end
			debugPrint(v.Name)
			v.Handle.CFrame = character.Humanoid.RootPart.CFrame
			lpHumanoid:EquipTool(v)
		end
	end
end, {"stools"}, 3)

addCommand("punish", function(plrs)
	for i,v in pairs(plrs) do
		local char = v.Character
		if char == nil then continue end
		delete(char)
	end
end, {}, 2)

addCommand("bang", function(plrs) -- credit to the Infinite Yield team
	if not character then return end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end
	runCommand("unbang")
	local target
	for i,v in pairs(plrs) do
		if not v.Character then continue end
		if not v.Character:FindFirstChildOfClass("Humanoid") then continue end
		if not v.Character.Humanoid.RootPart then continue end
		target = v
		break
	end
	bangAnim = Instance.new("Animation")
	bangAnim.AnimationId = (humanoid.RigType ~= Enum.HumanoidRigType.R15) and "rbxassetid://148840371" or "rbxassetid://5918726674"
	bang = humanoid:LoadAnimation(bangAnim)
	bang:Play(0.1, 1, 1)
	bang:AdjustSpeed(3)
	bangLoop = nil
	bangDied = nil;bangDied = humanoid.Died:Connect(function()
		bang:Stop()
		bangAnim:Destroy()
		bangDied:Disconnect()
		if bangLoop then bangLoop:Disconnect() end
	end)
	if target == localPlayer then return end
	bangLoop = rs.Stepped:Connect(function()
		if target.Character == nil then return end
		local hum = target.Character:FindFirstChildOfClass("Humanoid")
		if hum == nil then return end
		local root = hum.RootPart
		if root == nil then return end
		character:PivotTo(root.CFrame * CFrame.new(0, 0.75, 1.1))
	end)
	table.insert(genv.connections,bangLoop)
end, {}, 3)

addCommand("unbang", function()
	if bangDied then bangDied:Disconnect() end
	if bang then bang:Stop() end
	if bangAnim then bangAnim:Destroy() end
	if bangLoop then bangLoop:Disconnect() end
end, {}, 3)

addCommand("clearstarter", function()
	local whitelist = {"BubbleChat", "ChatScript", "PlayerScriptsLoader", "RbxCharacterSounds", "PlayerModule"}

	for i,v in pairs(sgui:GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPack"):GetChildren()) do
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterPlayerScripts"):GetChildren()) do
		if table.find(whitelist, v.Name) then continue end
		delete(v)
	end
	for i,v in pairs(game:GetService("StarterPlayer"):FindFirstChildOfClass("StarterCharacterScripts"):GetChildren()) do
		delete(v)
	end
end, {"clearstarters"}, 1)

addCommand("cleargui", function()
	for i,v in pairs(sgui:GetChildren()) do
		delete(v)
	end
end,{"clearsgui", "clearguis"}, 1)

addCommand("nochat",function()
	local chatEvents = rStorage:FindFirstChild("DefaultChatSystemChatEvents")
	if chatEvents then return delete(chatEvents) end
	if not modernChat then return end
	for i,v in pairs(game:GetService("TextChatService"):GetChildren()) do
		delete(v)
	end
end, {"breakchat"}, 2)

addCommand("nostats", function(plrs)
	for i,v in pairs(plrs) do
		local stats = v:FindFirstChild("leaderstats")
		if stats == nil then continue end
		delete(stats)
	end
end, {}, 1)

addCommand("deletename", function(plrs, input)
	for i,v in pairs(game:GetDescendants()) do
		local match = v.Name:lower():gsub(" ","")
		if not match:match(input:lower()) then continue end
		delete(v)
	end
end, {}, 2)

addCommand("clearstorage",function()
	for i,v in pairs(rStorage:GetChildren()) do
		if (v == genv.foundRemote) or (modernChat == false and v:IsA("Folder") and v.Name == "DefaultChatSystemChatEvents") then continue end
		delete(v)
	end
end, {"clearrs","clearreps", "clearreplicatedstorage"}, 1)

addCommand("clearws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		delete(v)
	end
end, {}, 2)

addCommand("lockws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:FindFirstChild(v.Name) then continue end
		local con = v.ChildAdded:Connect(function(instance)
			if players:FindFirstChild(instance.Parent.Name) then return end
			task.wait()
			delete(instance)
		end)
		table.insert(genv.connections,con)
		table.insert(wslocks,con)
	end
	local con = workspace.ChildAdded:Connect(function(instance)
		if players:FindFirstChild(instance.Name) then return end
		task.wait()
		delete(instance)
	end)
	table.insert(genv.connections,con)
	table.insert(wslocks,con)
end, {}, 1)

addCommand("unlockws", function()
	for i,v in pairs(wslocks) do
		v:Disconnect()
	end
end, {}, 1)

addCommand("notextures", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		if (v:IsA("Decal") or v:IsA("Texture")) then delete(v) end

		for _,instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("Decal") or instance:IsA("Texture")) then continue end
			delete(instance)
		end
	end
end, {}, 1)

addCommand("baseplate", function()
	if not character then return end
	local hum = character:FindFirstChildOfClass("Humanoid")
	if not hum then return end
	local hrp = hum.RootPart
	if not hrp then return end

	local function isPlate(instance)
		if not (instance:IsA("BasePart")) then return end
		local distance = (instance.Position - hrp.Position).Magnitude
		local size = instance.Size.Magnitude
		if distance <= 7 or size >= 1000 or instance.Name:lower():gsub(" ",""):find("baseplate") then return true end
		return false
	end

	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		if isPlate(v) == false then delete(v) continue end
		for _,instance in pairs(v:GetDescendants()) do
			if isPlate(instance) then continue end
			delete(instance)
		end
	end
end,{"platform"}, 2)

addCommand("nospawns", function()
	for i,v in pairs(workspace:GetDescendants()) do
		if not v:IsA("SpawnLocation") then continue end
		delete(v)
	end
end, {}, 1)

addCommand("unweldws", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _, instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("Weld") or instance:IsA("Attachment") or v:IsA("Motor6D")) then continue end
			delete(instance)
		end
		if not (v:IsA("Weld") or v:IsA("Attachment") or v:IsA("Motor6D")) then continue end
		delete(v)
	end
end, {}, 1)

addCommand("noseats", function()
	for i,v in pairs(workspace:GetChildren()) do
		if players:GetPlayerFromCharacter(v) then continue end
		for _, instance in pairs(v:GetDescendants()) do
			if not (instance:IsA("VehicleSeat") or instance:IsA("Seat")) then continue end
			delete(instance)
		end
		if not (v:IsA("VehicleSeat") or v:IsA("Seat")) then continue end
		delete(v)
	end
end, {}, 1)

addCommand("nosounds",function()
	for i,v in pairs(game:GetDescendants()) do
		if not v:IsA("Sound") then continue end
		delete(v)
	end
end, {}, 1)

addCommand("noteams", function()
	for i,v in pairs(game:GetService("Teams")) do
		delete(v)
	end
end, {}, 1)

addCommand("clearlighting",function()
	for i,v in pairs(game:GetService("Lighting"):GetChildren()) do
		delete(v)
	end
end, {}, 1)

addCommand("shutdown", function()
	for i,v in pairs(players:GetPlayers()) do
		if i == 1 then continue end
		delete(v)
	end
	delete(localPlayer)
end, {}, 2)

addCommand("nuke",function() 
	for i,v in pairs(workspace:GetChildren()) do
		delete(v)
	end

	for i,v in pairs(players:GetPlayers()) do
		if i == 1 then continue end
		delete(v)
	end
end, {}, 2)

addCommand("wither",function(plrs)
	local function decay(plr)
		local char = plr.Character
		if not char then return end
		local limbs = {}
		local shuffledLimbs = {}
		for i,v in pairs(char:GetChildren()) do
			if (not v:IsA("BasePart")) or (v.Name:find("Torso") or v.Name == "Head" or v.Name == "HumanoidRootPart") then continue end
			table.insert(limbs, v)
		end

		for i = 1, #limbs do
			local rng = math.random(#limbs)
			table.insert(shuffledLimbs , limbs[rng])
			table.remove(limbs, rng)
		end

		for i,v in pairs(shuffledLimbs) do
			if not char:FindFirstChild(v.Name) then continue end
			if plr.Character ~= char then return end
			delete(v)
			table.remove(limbs,i)
			task.wait(1)
		end

		local head = char:FindFirstChild("Head")
		if not head then return end
		delete(head)
		task.wait(0.1)
		for i,v in pairs(char:GetChildren()) do
			if not v:IsA("BasePart") then continue end
			delete(v)
		end
	end
	for i,v in pairs(plrs) do 
		task.spawn(decay,v)
	end
end, {"decay"}, 1)


local function infectPlayer(plr)
	local char = plr.Character
	if not char then return end
	debugPrint(`{plr.Name} was infected`)
	local limbs = {}
	local limbAmount
	local shuffledLimbs = {}
	for i,v in pairs(char:GetChildren()) do
		if (not v:IsA("BasePart")) or (v.Name:find("Torso") or v.Name == "Head" or v.Name == "HumanoidRootPart") then continue end
		table.insert(limbs, v)
	end

	limbAmount = #limbs

	for i = 1, #limbs do
		local rng = math.random(#limbs)
		table.insert(shuffledLimbs , limbs[rng])
		table.remove(limbs, rng)
	end

	for i,v in pairs(shuffledLimbs) do
		task.wait(45/limbAmount)
		local infectedIndex = table.find(infected,plr)
		if not char:FindFirstChild(v.Name) then task.wait(45/limbAmount) continue end
		if plr.Character ~= char then return end
		delete(v)
		table.remove(limbs,i)
	end
	local head = char:FindFirstChild("Head")
	if head then
		delete(head)
		task.wait(0.1)
	end
	for i,v in pairs(char:GetChildren()) do
		if not v:IsA("BasePart") then continue end
		delete(v)
	end
	table.remove(infected,table.find(infected,plr))
end

table.insert(genv.connections,rs.Heartbeat:Connect(function()
	for i,v in pairs(infected) do
		local char = v.Character
		if not char then continue end
		local hum = char:FindFirstChild("Humanoid")
		if hum and hum.Health <= 0 then table.remove(infected,table.find(infected,v)) continue end
		local hrp = hum and hum.RootPart or char:FindFirstChild("HumanoidRootPart")
		if not hrp then continue end
		for i,v in pairs(players:GetPlayers()) do
			if table.find(infected,v) then continue end
			local tchar = v.Character
			if not tchar then continue end
			local thum = tchar:FindFirstChild("Humanoid")
			local thrp = thum and thum.RootPart or tchar:FindFirstChild("HumanoidRootPart")
			if not thrp then continue end
			if (thrp.Position - hrp.Position).Magnitude >= 5 then continue end
			table.insert(infected, v)
			task.spawn(infectPlayer,v)
		end
	end
end))

addCommand("virus",function(plrs)
	for i,v in pairs(plrs) do 
		table.insert(infected,v)
		task.spawn(infectPlayer,v)
	end
end, {"infect"}, 1)

addCommand("unvirus", function(plrs)
	for i,v in pairs(plrs) do
		local index = table.find(infected,v)
		if index then table.remove(infected,index) end
	end
end, {"uninfect", "cure"}, 1)


table.insert(genv.connections, rs.Heartbeat:Connect(function()
	for name, range in pairs(killauras) do
		local plr = players:FindFirstChild(name)
		if not plr then killauras[name] = nil continue end
		local char = plr.Character
		if not char then continue end
		local pos = char:GetPivot().Position

		for i,v in pairs(players:GetPlayers()) do
			if v == plr then continue end
			local tchar = v.Character
			if not tchar then continue end
			local tpos = tchar:GetPivot().Position
			local distance = (pos - tpos).Magnitude
			if distance > range then continue end
			local hum = tchar:FindFirstChild("Humanoid")
			if hum and hum.Health <= 0 then continue end
			runCommand("kill",{v})
		end
	end
end))

addCommand("killaura",function(plrs, input)
	local plrs = (#plrs > 0 and plrs) or ({localPlayer})
	local split = input:split(" ")
	local range = tonumber(split[#split]) or 10
	for i,v in pairs(plrs) do
		killauras[v.Name] = range
	end
end, {"aura"}, 1)

addCommand("unkillaura",function(plrs)
	for i,v in pairs(plrs) do
		killauras[v.Name] = nil
	end
end, {"unaura"}, 1)

addCommand("kickaura",function(plrs, input)
	local plrs = (#plrs > 0 and plrs) or ({localPlayer})
	local split = input:split(" ")
	local range = tonumber(split[#split]) or 10
	for i,v in pairs(plrs) do
		killauras[v.Name] = range
	end
end, {}, 1)

addCommand("unkickaura",function(plrs)
	for i,v in pairs(plrs) do
		killauras[v.Name] = nil
	end
end, {}, 1)

addCommand("serverlock",function()
	slockEnabled = true
end, {"slock"}, 2)

addCommand("unserverlock", function()
	slockEnabled = false
end, {"unslock"}, 2)

addCommand("close", abort, {}, 3)

local flyLoop
addCommand("fly",function() -- original made by apeyton
	local hum = character:FindFirstChildOfClass("Humanoid")
	if not hum then return end

	local hrp = character:FindFirstChild("HumanoidRootPart")
	if not hrp then return end

	hum.PlatformStand = true
	hrp.Anchored = true

	if flyLoop then flyLoop:Disconnect() end
	flyLoop = rs.Heartbeat:Connect(function(deltaTime)
		local moveDir = hum.MoveDirection * (flySpeed * deltaTime)
		local hrpCF = hrp.CFrame
		local cameraCF = camera.CFrame
		local cameraOffset = hrpCF:ToObjectSpace(cameraCF).Position + hum.CameraOffset
		cameraCF = cameraCF * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPos = cameraCF.Position
		local hrpPos = hrpCF.Position

		local objectSpaceVelocity = CFrame.new(cameraPos, Vector3.new(hrpPos.X, cameraPos.Y, hrpPos.Z)):VectorToObjectSpace(moveDir)
		hrp.CFrame = CFrame.new(hrpPos) * (cameraCF - cameraPos) * CFrame.new(objectSpaceVelocity)
	end)
end, {}, 3)

addCommand("unfly",function()
	if not flyLoop then return end
	flyLoop:Disconnect()
	local hum = character:FindFirstChildOfClass("Humanoid")
	if hum then hum.PlatformStand = false end
	local hrp = character:FindFirstChild("HumanoidRootPart")
	if hrp then hrp.Anchored = false end

end, {}, 3)

addCommand("flyspeed",function(plrs, input)
	flySpeed = tonumber(input) or 50
end, {}, 3)

addCommand("walkspeed", function(plrs, input)
	local speed = tonumber(input) or 16
	local humanoid = character:FindFirstChild("Humanoid")
	if not humanoid then return end
	humanoid.WalkSpeed = speed
end, {"speed", "ws"}, 3)

addCommand("jumppower", function(plrs, input)
	local jp = tonumber(input) or 50
	local humanoid = character:FindFirstChild("Humanoid")
	if not humanoid then return end
	humanoid.JumpPower = jp
end, {"jp"}, 3)

local noclipLoop
addCommand("noclip", function()
	if noclipLoop then noclipLoop:Disconnect() end
	noclipLoop = rs.Stepped:Connect(function()
		for i,v in pairs(character:GetDescendants()) do
			if not (v:IsA("BasePart") and v.CanCollide) then continue end
			v.CanCollide = false
		end
	end)
end, {"nc"}, 3)

addCommand("clip",function()
	if noclipLoop then noclipLoop:Disconnect() end
end, {"c"}, 3)

-- credits to @xyzkade and @deuces1961 for Kade's reanim as a base
local function loadReanim()
	local char = localPlayer.Character or localPlayer.CharacterAdded:Wait()
	local hum = char:WaitForChild("Humanoid")
	local simRadius = gethiddenproperty and gethiddenproperty(localPlayer,"SimulationRadius")
	local requiredRadius = 20
	local isR15 = hum.RigType == Enum.HumanoidRigType.R15
	local forcefield = char:FindFirstChildOfClass("ForceField")
	local fakeHum = hum:Clone()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local hrpCF = hrp.CFrame
	local stopAlign = false
	local stopAntiVoid = false
	local limbs = {}
	local hatHandles = {}
	local reanimConnections = {}

	runCommand("clip")

	if simRadius and simRadius < requiredRadius then
		repeat
			notify("Please wait",`Waiting for bigger SimulationRadius ({tostring(math.floor(simRadius))}/{tostring(requiredRadius)})`, 2)
			task.wait(2)
		until gethiddenproperty(localPlayer,"SimulationRadius") >= requiredRadius
		if localPlayer.Character == nil or localPlayer.Character ~= char or hum.Parent == nil or hum.Health <= 0 then return end
	end

	if forcefield then forcefield:Destroy() end
	char.Archivable = true

	local rig = (not isR15) and char:Clone()

	if isR15 then
		local canGetObjects, loadedRig = pcall(function() return game:GetObjects("rbxassetid://18418211383")[1] end)
		local r6Rig = isTesting and rStorage:WaitForChild("R6Rig") or canGetObjects and loadedRig or loadstring(httpget("https://gist.githubusercontent.com/someunknowndude/ad264038a91f7fa11bec2f67dad3feaf/raw"))()
		local humDesc = players:GetCharacterAppearanceAsync(localPlayer.UserId)
		local r6Head = r6Rig.Head
		local r15Head = char.Head
		local surfaceAppearance = r15Head:FindFirstChildOfClass("SurfaceAppearance")
		local face = r15Head:FindFirstChild("face")

		if surfaceAppearance then 
			surfaceAppearance:Clone().Parent = r6Head
		else
			if face then r6Head.face.Texture = face.Texture end
			r6Head.face.Transparency = 0
		end

		for i,v in pairs(r15Head:GetChildren()) do
			if not v:IsA("Attachment") then continue end
			v:Clone().Parent = r6Head
		end

		for i,v in pairs(humDesc:GetDescendants()) do
			if v:IsA("BodyColors") or v:IsA("CharacterMesh") or v:IsA("ShirtGraphic") then
				v.Parent = r6Rig
				continue
			end
			if v:IsA("Accessory") or v:IsA("Hat") then
				r6Rig:WaitForChild("Humanoid"):AddAccessory(v)
			end
		end


		rig = r6Rig
	else
		local mesh = char.Head:FindFirstChildOfClass("SpecialMesh")
		local face = char.Head:FindFirstChild("face")
		if mesh and face then
			delete(face)
		end
	end	

	local rigHRP = rig:WaitForChild("HumanoidRootPart")
	local rigHum = rig:FindFirstChild("Humanoid")

	rig.Name = "wacky reanim rig"


	for i,v in pairs(char:GetChildren()) do
		if not v:IsA("BasePart") then continue end
		table.insert(limbs, {v,rig[v.Name]})
	end


	local accessories = hum:GetAccessories()
	local rigAccessories = rigHum:GetAccessories()

	for i,v in pairs(accessories) do
		if not isR15 then
			table.insert(hatHandles,{v.Handle,rigAccessories[i].Handle})
			continue
		end
		for _,rigAcc in pairs(rigAccessories) do
			local handle = rigAcc.Handle
			local mesh = handle:FindFirstChildOfClass("SpecialMesh") or handle
			local texture = handle == mesh and mesh.TextureID or mesh.TextureId
			if not (rigAcc.Name == v.Name and mesh.MeshId == v.Handle.MeshId and texture == v.Handle.TextureID) then continue end
			table.insert(hatHandles,{v.Handle,rigAcc.Handle})
			continue 
		end
	end

	local clock = os and os.clock or tick
	local cos = math.cos
	local sin = math.sin
	local cfNew = CFrame.new
	local cfZero = CFrame.identity
	local v3New = Vector3.new
	local v3Zero = Vector3.zero

	local changedMaxSimRad = pcall(sethiddenproperty, localPlayer, "MaximumSimulationRadius", 1000)
	local changedSimRad = pcall(sethiddenproperty, localPlayer, "SimulationRadius", 1000)
	local netlessCF = cfZero
	local sineValue = 0


	local function align(part0, part1, offset)
		if stopAlign then return end
		if part0 and part0.Parent and part1 and part1.Parent then
			local part0_mass = part1.Mass * 5
			part0.AssemblyLinearVelocity = v3New(part1.AssemblyLinearVelocity.X * part0_mass, sineValue, part1.AssemblyLinearVelocity.Z * part0_mass)
			part0.AssemblyAngularVelocity = part1.AssemblyAngularVelocity

			if isnetworkowner(part0) then
				part0.CFrame = part1.CFrame * offset
			end
		end
	end

	local function setCamera(model)
		local oldCamCF = camera.CFrame
		camera.CameraSubject = model.Humanoid
		camera:GetPropertyChangedSignal("CFrame"):Once(function()
			camera.CFrame = oldCamCF
		end)
	end

	local function disableCollisions(model,canTouchAndCast)
		for _, part in next, model:GetDescendants() do
			if part and part:IsA("BasePart") then
				part.CanCollide = false
				part.CanQuery = canTouchAndCast
				part.CanTouch = canTouchAndCast
			end
		end
	end

	local function makeTransparent(model)
		for i,v in pairs(model:GetDescendants()) do
			if not (v:IsA("BasePart") or v:IsA("Decal")) then continue end
			v.Transparency = 1
		end
	end

	local function breakWelds(model)
		for i,v in pairs(model:GetDescendants()) do
			if not v:IsA("Motor6D") then continue end
			delete(v)
		end
	end

	local function removeScripts(model)
		for i,v in pairs(model:GetChildren()) do
			if not (v:IsA("Script") or v:IsA("LocalScript") or v:IsA("ModuleScript") or v.Name == "Animate") then continue end
			delete(v)
		end
	end

	local function removeTouchTriggers(model)
		for i,v in pairs(model:GetDescendants()) do
			if not v:IsA("TouchTransmitter") then continue end
			delete(v)
		end
	end

	local function onPostSim()
		for _, data in next, limbs do
			align(data[1], data[2],netlessCF)
		end

		for _, data in next, hatHandles do
			align(data[1], data[2], netlessCF)
		end
	end

	local function onPreSim()
		netlessCF = cfNew(0.01 * sin(clock()*16), 0, 0.01 * math.cos(clock()*16))
		sineValue = 40 - 3 * sin(clock()*10)

		if stopAntiVoid or rigHRP.Position.Y > (workspace.FallenPartsDestroyHeight + 50) then return end
		rigHRP.CFrame = hrpCF
		rigHRP.AssemblyLinearVelocity = v3Zero
		rigHRP.AssemblyAngularVelocity = v3Zero
	end


	rigHRP.CFrame = hrpCF
	rig.Parent = workspace
	localPlayer.Character = rig
	setCamera(rig)
	rig.Animate.Enabled = false
	rig.Animate.Enabled = true
	hum:ChangeState(Enum.HumanoidStateType.Physics)
	repeat task.wait() until limbs[3][1].CanCollide
	task.wait(0.05)
	delete(hum)
	repeat task.wait() until hum.Parent == nil
	task.wait()
	fakeHum.Parent = char
	task.wait()
	table.insert(reanimConnections, rs.PreSimulation:Connect(onPreSim))
	table.insert(reanimConnections, rs.PostSimulation:Connect(onPostSim))
	table.insert(reanimConnections, rs.Stepped:Connect(function()
		disableCollisions(char,false)
		disableCollisions(rig,true)
	end))

	breakWelds(char)
	makeTransparent(char)
	removeScripts(char)
	removeTouchTriggers(char)

	genv.LoadLibrary = function(lib) return loadstring(httpget("https://raw.githubusercontent.com/Roblox/Core-Scripts/master/CoreScriptsRoot/Libraries/" .. lib .. ".lua"))() end

	local reset = Instance.new("BindableEvent")
	reset.Event:Connect(function()
		if stopAlign then
			local hum = character:FindFirstChildOfClass("Humanoid")
			if not hum then return character:BreakJoints() end
			hum.Health = 0
			return
		end
		notify("Resetting", "Please wait ~6 seconds", 6)
		stopAntiVoid = true
		rigHRP.Anchored = true
		rigHRP.CFrame = CFrame.new(0,workspace.FallenPartsDestroyHeight + 5,0)
		task.wait(0.5)
		stopAlign = true
		rigHum:ChangeState(Enum.HumanoidStateType.Dead)
		localPlayer.CharacterAdded:Wait()
		rig:Destroy()
		for i,v in pairs(reanimConnections) do
			v:Disconnect()
		end
	end)

	sgui:SetCore("ResetButtonCallback", reset)

	notify("Success!", "reanim loaded!")
end
addCommand("reanim",function() 
	task.spawn(loadReanim)
end, {"reanimate"}, 3)

--[[Add scrolling command list]]--
local scrollText = "QuirkyCMD made by smokedoutlocedout | type cmds for a list of commands | "
if not isMobile then
	scrollText ..= "press ; to open/close command bar | "
end
local charCount = 12
local spaces = 0
local scrollSpeed = 0.12 -- sec/char
local sample = scrollText..string.rep(" ", spaces)
local displayString = sample:sub(1, charCount)
local strlen = string.len(sample)

local counter = 1
local timer = 0

for i,v in pairs(scrollText:split("")) do
	if v ~= " " then continue end
	spaces += 1
end

table.insert(genv.connections, rs.Heartbeat:Connect(function(dt)
	timer += dt
	if timer > scrollSpeed then
		while timer > scrollSpeed do
			timer -= scrollSpeed
			counter = (counter + 1)%strlen
		end

		if counter + charCount <= strlen then
			displayString = sample:sub(counter, counter + charCount)
		else
			displayString = sample:sub(counter, strlen)..sample:sub(1, counter + charCount - strlen)
		end
	end

	box.PlaceholderText = (("%s"):format(displayString))
end))

--[[Sort commands alphabetically]]--
table.sort(commands, function(a,b)
	return a.name < b.name
end)

--[[Add command list logic]]--
for i,v in pairs(commands) do
	local level = v.securityLevel
	local clone = cmdTemplate:Clone()
	clone.Text = v.name .. ` ({rankNames[level]})`
	clone.Name = v.name
	clone.Visible = true
	clone.Parent = cmdsList
end

table.insert(genv.connections, closeButton.MouseButton1Click:Connect(function()
	cmdsFrame.Visible = false
end))

--[[Add drag functionality]]--
local dragging
local dragInput
local dragStart
local startPos

local lastMousePos
local lastGoalPos
local dragSpeed = 20

local function update(dt)
	if not (startPos) then return end
	if not (dragging) and (lastGoalPos) then
		cmdsFrame.Position = UDim2.new(startPos.X.Scale, lerp(cmdsFrame.Position.X.Offset, lastGoalPos.X.Offset, dt * dragSpeed), startPos.Y.Scale, lerp(cmdsFrame.Position.Y.Offset, lastGoalPos.Y.Offset, dt * dragSpeed))
		return 
	end

	local delta = (lastMousePos - uis:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X)
	local yGoal = (startPos.Y.Offset - delta.Y)
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	cmdsFrame.Position = UDim2.new(startPos.X.Scale, lerp(cmdsFrame.Position.X.Offset, xGoal, dt * dragSpeed), startPos.Y.Scale, lerp(cmdsFrame.Position.Y.Offset, yGoal, dt * dragSpeed))	
end

cmdsFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = cmdsFrame.Position
		lastMousePos = uis:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

cmdsFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

table.insert(genv.connections,rs.Heartbeat:Connect(update))

--[[send to game logger]]--
	local function promptCallback(answer)
		if answer == "No" then return end
		local sg = localPlayer:FindFirstChildOfClass("StarterGear")
		if sg then
			delete(sg)
			task.wait(checkTime + mobileOffset)
		end
		if (sg and sg.Parent == localPlayer) or (isTesting == false and game:GetService("GuiService"):GetErrorCode() ~= Enum.ConnectionError.OK) then return notify("Logger error", "Game could not be logged.", 10) end
		sendGame()
		debugPrint("game sent to server")
	end

	local bindable = Instance.new("BindableFunction")
	bindable.OnInvoke = promptCallback

	sgui:SetCore("SendNotification", {
		Title = "Game logger";
		Text = "Log this game? (PLEASE TEST COMMANDS BEFORE CLICKING YES)",
		Duration = 300,
		Button1 = "Yes",
		Button2 = "No",
		Icon = "rbxassetid://71876941165953",
		Callback = bindable
	})

debugPrint("QuirkyCMD loaded successfully!")
