
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
    local rushpointmodulests = {
        ["Network"] = nil,
        ["Characters"] = nil,
    }
    
        
    task.wait(1)
    --// misc 
    local noobreplicatedstorage = game:GetService("ReplicatedStorage")
    local noobworkspace = game:GetService("Workspace")
    local mousets = me:GetMouse()
    local mycamts = noobworkspace.CurrentCamera
    
    --// discord prompt system
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
    local closestskid  = nil 
    local stupidhitpart 
    local silentaimhitpartts  = "head"
    local mystupidteamts  = nil 
    local previoustarget = nil
    local silentaimhitparts = {"head","torso"}
    local defaultfovsize = 165
    local canweusedrawinglibraryts = false 
    
    
    --// auto toxic stuff
    local autotoxicval = false 

    --// esp related stuff 
    local playerespval = false 
    local teamcheckval = false 
    local RunService = game:GetService("RunService")
    local TracerColor = Color3.fromRGB(255,255,255)
    local TracerLines = {}
    

    local function isPlayerOnSameTeam(playername)
        local myplayerteam = me:FindFirstChild("SelectedTeam")
    
        for i,v in pairs(plrservicets:GetPlayers()) do 
            if v.Name ~= me.Name and v.Name == playername then 
                local playerteam = v:FindFirstChild("SelectedTeam")
                if tostring(myplayerteam.Value) == tostring(playerteam.Value) then 
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

                        local IsOnSameTeam = isPlayerOnSameTeam(tracerdata.TracerPart.Parent.Name)

           
                        if IsOnSameTeam == true then 

                        TracerLine.Color = Color3.fromRGB(75, 95, 240)
                        else
                            TracerLine.Color = Color3.fromRGB(255, 110, 60)
                        end

                        TracerLine.To = To
       
                        if teamcheckval == true and  IsOnSameTeam == true then 
                            TracerLine.Visible = false
                        elseif teamcheckval == false then 
                            TracerLine.Visible = true
                        else
                            TracerLine.Visible = true
                        end

                    else
                        TracerLine.Visible = false
                    end
             end     
        end
    end
    
    
    RunService.RenderStepped:Connect(function() 
            UpdateTracerLines()
    end)

    

    if noobworkspace:FindFirstChild("MapFolder") then 
        noobworkspace.MapFolder.Players.ChildAdded:Connect(function(player)
            task.wait(1)
            pcall(function()
                if playerespval == true and player.Name ~= me.Name then 
                    repeat task.wait(1) until player:FindFirstChild("HumanoidRootPart") 
                    local newplayerhumanoidrootpart = player:FindFirstChild("HumanoidRootPart") 
                    DrawNewLine(newplayerhumanoidrootpart, "Player")
                end
            end)
        end)
    end

    

    local modulesfolder = nil 
    local sharedmodulesfolder =nil 
    local modulesbacfolder = nil 
    
    
    if Drawing and Drawing.new then 
        canweusedrawinglibraryts = true
    end
        
    if canweusedrawinglibraryts == false then 
         me:Kick("drawing library not supported sorry")
        return
    end


    if noobreplicatedstorage:FindFirstChild("Modules") then
        modulesfolder = noobreplicatedstorage:FindFirstChild("Modules")
        if noobreplicatedstorage:FindFirstChild("BAC") then
          modulesbacfolder = noobreplicatedstorage:FindFirstChild("BAC")
        end
       if modulesfolder:FindFirstChild("Shared") then
         sharedmodulesfolder =  modulesfolder:FindFirstChild("Shared")
       end
    end
    
    

    local rushpointcoolapits = {}
    
    function rushpointcoolapits:loadmodulets(state,modulename,modulenickname) 
    if state and modulesfolder and sharedmodulesfolder  and modulename and modulenickname  then
    if state == "shared" then
    if sharedmodulesfolder:FindFirstChild(modulename) then 
    local stupidmoduletorequirets = sharedmodulesfolder:FindFirstChild(modulename)
    rushpointmodulests[modulenickname] = require(stupidmoduletorequirets)
    end
    elseif state == "bac" then
    if modulesbacfolder:FindFirstChild("Characters") then 
    local stupidbacmoduletorequirets = modulesbacfolder:FindFirstChild("Characters")
    rushpointmodulests[modulenickname] = require(stupidbacmoduletorequirets)
    end
    elseif state == "statetwo" then 
    elseif state == "statethree" then 
    
    end
    end
    end


    --// import rushpoint modules
    rushpointcoolapits:loadmodulets("shared", "Network","Network")
    rushpointcoolapits:loadmodulets("bac", "Characters","Characters")
    
    local NetworkModule = rushpointmodulests.Network
    local oldfireserver = NetworkModule.FireServer
    
    
    task.wait(2)
        
    
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
        NetworkModule.FireServer({},"ChatMessage",chosentoxicmessage,"Global")
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
    

    if me:FindFirstChild("PlayerStats") then 
        local myplayerstatsfolder = me:FindFirstChild("PlayerStats")
        local myplayerkills = myplayerstatsfolder:FindFirstChild("Kills")
    
        myplayerkills:GetPropertyChangedSignal("Value"):Connect(function()
            task.wait()
            if myplayerkills.Value > 0 then 
                if autotoxicval == true and previoustarget then 
                    sendtoxicmessage()
                end
            end
        end)
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
    
       local playercharacters = rushpointmodulests.Characters:GetAllCharacters()

       
       for i,v in pairs(playercharacters) do
           if (v and v.Name ~= me.Name and v:FindFirstChild("Head")) then
               local position, onscreen = mycamts:WorldToScreenPoint(v.Head.Position)
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
    


    NetworkModule.FireServer = function(self,...)
        local args = {...}
        if silentaimval == true and args[1] =="FireBullet"  then 
            local closestskidtous  = nil 
            
            if fovcirclets.Visible == true and fovcirclets.Radius>0 then 
                closestskidtous = getclosestplrtocirclets(fovcirclets.Radius) 
            else
                closestskidtous = getclosestplrtocirclets(defaultfovsize) 
            end

            if  closestskidtous == nil  then 
                return oldfireserver(self,...)
            end 

            local silentaimchosenhitpartts = choosehitpart(silentaimhitpartts,closestskidtous)

            if silentaimchosenhitpartts == nil then 
                return oldfireserver(self,...)
            end

            previoustarget = silentaimchosenhitpartts.Parent
            local bulletdatalol = args[2]
            local rotationmatrixcframe = CFrame.new(mycamts.CFrame.Position,silentaimchosenhitpartts.CFrame.Position)

            bulletdatalol[1].RotationMatrix = (rotationmatrixcframe - rotationmatrixcframe.Position)
            bulletdatalol[1].OriginCFrame = rotationmatrixcframe

           return oldfireserver(self,unpack(args))
        end
        return oldfireserver(self,...)
    end

    
    task.wait(1)
    
    
    playdisconnectscreents()
    task.wait(2)
    
    


    local maintab = uilibrary:New('Rush Point - [discord.gg/UVsD8V5J42]')
    local silentaimtab = maintab:Tab('Silent aim')
    local espTab = maintab:Tab('Esp')
    local discordservertab = maintab:Tab('Discord server')

    
   
    espTab:Toggle('Player esp',function(bool) 
    playerespval = bool 
    if playerespval == true then 
        local playercharacters = rushpointmodulests.Characters:GetAllCharacters()

        for i,v in pairs(playercharacters) do
            if v.Parent and v.Parent.Name~=me.Name and v:FindFirstChild("HumanoidRootPart") then  
			local HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")
			DrawNewLine(HumanoidRootPart,"Player")
            end
        end 
        end
    end)

    espTab:Toggle('Team Check',function(bool) 
        teamcheckval = bool 
        end)
        
    
    
    silentaimtab:Toggle('Silent Aim',function(bool) 
        silentaimval = bool
    end)

    silentaimtab:Toggle('Auto Toxic',function(bool) 
        autotoxicval = bool
    end)



    silentaimtab:Toggle('Fov',function(bool) 
        silentaimval = bool
        fovcirclets.Visible = bool
        local newposts = getmousepositionts()
        fovcirclets.Position = newposts
    end)

    silentaimtab:Textbox('Fov Size', '120 - 250', function(newfovsize)  
        if tonumber(newfovsize) then 
            local newfovsizenumber = tonumber(newfovsize)

            if newfovsizenumber>250 then 
                newfovsizenumber = tonumber(250)
            end

            if newfovsizenumber<120 then 
                newfovsizenumber = tonumber(120)
            end 

            defaultfovsize = newfovsizenumber
            fovcirclets.Radius = newfovsizenumber
        end 
    end)

    
    silentaimtab:Dropdown('Hit','Part',silentaimhitparts,function(newsilentaimhitpart) 
        silentaimhitpartts = newsilentaimhitpart 
    end)


    discordservertab:Button('copy invite', function() 
        if setclipboard then 
            setclipboard(tostring("discord.gg/FkFcbXjfXw"))
        end
    end)

    discordservertab:Button('join server', function() 
        promptdiscordinvite()
    end)



    silentaimtab:Show('Silent aim')


while task.wait() do 

end
