
    
    
    local tweenInfo = TweenInfo.new(
        .6, -- Time
        Enum.EasingStyle.Linear, -- EasingStyle
        Enum.EasingDirection.Out, -- EasingDirection
        0, -- RepeatCount (when less than zero the tween will loop indefinitely)
        false, -- Reverses (tween will reverse once reaching it's goal)
        0 -- DelayTime
    )
    
    
    
    
    
    local TweenService = game:GetService('TweenService')
    local CoreGuiService = game:GetService("CoreGui")
    local httrest = http_request or request or (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request)

    local TweenService = game:GetService('TweenService')
    local CoreGuiService = game:GetService("CoreGui")
    local tslaba='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' 
    
    
    
    
    task.wait(2)
    
    
    
    local Material

    xpcall(function()
    Material = loadstring(httrest({Url="https://raw.githubusercontent.com/Bura1458/Script/main/module.lua", Method="GET"}).Body)()
    end,function()
    while true do end
    return
    end)
        
    
    local plrservicets = game:GetService("Players")
    local me = plrservicets.LocalPlayer
    local mychar = me.Character
    local mymousets = me:GetMouse()
    local mycamts = game:GetService("Workspace"):FindFirstChildOfClass("Camera")
    local replicatedstoragets = game:GetService("ReplicatedStorage")
    local autotoxicval = false
    local killaura = true 
    local killauradistance = 10
    
    
    local function damagekid(player,swordhitpart)
        firetouchinterest(player.Character.Head,swordhitpart,0)
        task.wait()
        firetouchinterest(player.Character.Head,swordhitpart,1)
    end
    
    me.CharacterAdded:Connect(function(newchar)
        repeat task.wait(1) until newchar:FindFirstChild("HumanoidRootPart")
        local newcam = game:GetService("Workspace"):FindFirstChildOfClass("Camera")
        mychar = newchar
        mycamts = newcam
    end)
    
    
    local X = Material.Load({
        Title = "Steal Time From-Others by bura",
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
    
    
 

    
    while task.wait() do
    if killaura == true and me.Character and me.Character:FindFirstChild("HumanoidRootPart") and me.Character:FindFirstChild("Humanoid") then 
        for i,v in pairs(plrservicets:GetPlayers()) do 
            if v~=me and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") then 
               
                if not v.Character:FindFirstChild("Sword") or v.Character.Humanoid.Health<0 then 
                    return 
                end

            local Distance = (me.Character.HumanoidRootPart.Position-v.Character.HumanoidRootPart.Position).Magnitude

            if Distance<=killauradistance then 
                local equippedsword = v.Character:FindFirstChild("Sword")
                local swordHitpart = equippedsword:FindFirstChild("Part")
                print("testt")
                damagekid(v,swordHitpart)
            end
          end
        end
    end
