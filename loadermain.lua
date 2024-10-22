  local games = {
    ["northwind"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/LazyWareHub/main/northwindbad.lua",
        gamename = "northwind",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=4540286603&width=768&height=432&format=png",
        gameid = 4540286603,
    },
      ["universal silent aim"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/Script/main/universalsilentaim.lua",
        gamename = "universal silent aim",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=7791106063&width=768&height=432&format=png",
        gameid = 7791106063,
    },
    ["aimblox"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/Script/main/aimblox.lua",
        gamename = "aimblox",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=6808416928&width=768&height=432&format=png",
        gameid = 6808416928,
    },
    ["rushpoint"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/Script/main/rushpoint.lua",
        gamename = "rushpoint",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=5993942214&width=768&height=432&format=png",
        gameid = 5993942214,
    },
    ["weaponary"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/Script/main/weaponary.lua",
        gamename = "weaponary",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=3297964905&width=768&height=432&format=png",
        gameid = 3297964905,
    },
      ["booga booga"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/Script/main/boogabooga/boogaloader.lua",
        gamename = "booga booga",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=11729688377&width=768&height=432&format=png",
        gameid = 11729688377,
    }, 
    ["CombatWarriors"] = {
        gamescript = "https://raw.githubusercontent.com/lazywarew/Script/main/combatwarriors.lua",
        gamename = "CombatWarriors",
        status = "working",
        gameimg = "https://www.roblox.com/asset-thumbnail/image?assetId=4282985734&width=768&height=432&format=png",
        gameid = 4282985734,
    }, 
}


       
    
    
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

   function importmodulets(url)
    local formattedurl =  loadstring(game:HttpGet('https://raw.githubusercontent.com/lazywarew/Script/'..url))()
  end

    local function getcolorfromstatusts(statustype)
    if statustype == "working" then
    return Color3.fromRGB(0, 255, 0) --// green
    elseif statustype == "notworking" then
    return Color3.fromRGB(255, 0, 0) --// red
    else 
    return  Color3.fromRGB(255, 255, 255) --// white 
    end 
    end
    
    
    local thing = Instance.new("ScreenGui")
    local Frame = Instance.new("ImageLabel")
    local ClickShadow = Instance.new("ImageLabel")
    local HoverShadow = Instance.new("ImageLabel")
    local UIGradient = Instance.new("UIGradient")
    local Shadow = Instance.new("ImageLabel")
    local Title = Instance.new("TextLabel")
    local ButtonFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    local Bloxburg = Instance.new("ImageButton")
    local Text = Instance.new("TextLabel")
    local ImageBounds = Instance.new("Frame")
    local GameIcon = Instance.new("ImageLabel")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local HoverShadow_2 = Instance.new("ImageLabel")
    local UIGradient_2 = Instance.new("UIGradient")
    local IsActive = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local Border = Instance.new("ImageLabel")
    local ClickShadow_2 = Instance.new("ImageLabel")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
    local Hint = Instance.new("TextLabel")
    local gametemplete = Instance.new("LocalScript")
    gametemplete.Name = "Animate"
    gametemplete.Parent = thing

    guiprotectionfunctionts(thing)
    thing.Name = "thing"
    thing.DisplayOrder = 1
    
    Frame.Name = "Frame"
    Frame.Parent = thing
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0.286814511, 0, 0.426544666, 0)
    Frame.Image = "rbxassetid://3570695787"
    Frame.ImageColor3 = Color3.fromRGB(59, 33, 96)
    Frame.ScaleType = Enum.ScaleType.Slice
    Frame.SliceCenter = Rect.new(100, 100, 100, 100)
    Frame.SliceScale = 0.040
    
    ClickShadow.Name = "ClickShadow"
    ClickShadow.Parent = Frame
    ClickShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    ClickShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ClickShadow.BackgroundTransparency = 1.000
    ClickShadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ClickShadow.BorderSizePixel = 0
    ClickShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    ClickShadow.Size = UDim2.new(1, 4, 1, 4)
    ClickShadow.Image = "rbxassetid://1316045217"
    ClickShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ClickShadow.ImageTransparency = 1.000
    ClickShadow.ScaleType = Enum.ScaleType.Slice
    ClickShadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    HoverShadow.Name = "HoverShadow"
    HoverShadow.Parent = Frame
    HoverShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    HoverShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HoverShadow.BackgroundTransparency = 1.000
    HoverShadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HoverShadow.BorderSizePixel = 0
    HoverShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    HoverShadow.Size = UDim2.new(1, 0, 1, 0)
    HoverShadow.Image = "rbxassetid://3570695787"
    HoverShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    HoverShadow.ImageTransparency = 1.000
    HoverShadow.ScaleType = Enum.ScaleType.Slice
    HoverShadow.SliceCenter = Rect.new(100, 100, 100, 100)
    HoverShadow.SliceScale = 0.040
    
    UIGradient.Rotation = -90
    UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(0.20, 0.40), NumberSequenceKeypoint.new(1.00, 1.00)}
    UIGradient.Parent = HoverShadow
    
    Shadow.Name = "Shadow"
    Shadow.Parent = Frame
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1.000
    Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.BorderSizePixel = 0
    Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow.Size = UDim2.new(1, 10, 1, 10)
    Shadow.ZIndex = 0
    Shadow.Image = "rbxassetid://1316045217"
    Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Shadow.ImageTransparency = 0.600
    Shadow.ScaleType = Enum.ScaleType.Slice
    Shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    
    Title.Name = "Title"
    Title.Parent = Frame
    Title.AnchorPoint = Vector2.new(0.5, 0.5)
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.5, 0, 0.0900862291, 0)
    Title.Size = UDim2.new(1, -5, 0.180000007, -22)
    Title.ZIndex = 2
    Title.Font = Enum.Font.Gotham
    Title.Text = "Select script to execute"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 20.000
    Title.TextWrapped = true
    
    ButtonFrame.Name = "ButtonFrame"
    ButtonFrame.Parent = Frame
    ButtonFrame.Active = true
    ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonFrame.BackgroundTransparency = 1.000
    ButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ButtonFrame.BorderSizePixel = 0
    ButtonFrame.Position = UDim2.new(0.5, 0, 0.545332909, 0)
    ButtonFrame.Size = UDim2.new(0.899999917, 0, 0.756665766, 0)
    ButtonFrame.ZIndex = 2
    ButtonFrame.BottomImage = "rbxassetid://255233918"
    ButtonFrame.MidImage = "rbxassetid://255233974"
    ButtonFrame.TopImage = "rbxassetid://255234002"
    
    UIListLayout.Parent = ButtonFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)
    
    UIPadding.Parent = ButtonFrame
    UIPadding.PaddingBottom = UDim.new(0, 5)
    UIPadding.PaddingTop = UDim.new(0, 5)
    
    Bloxburg.Name = "Bloxburg"
    Bloxburg.Parent = gametemplete
    Bloxburg.AnchorPoint = Vector2.new(0.5, 0.5)
    Bloxburg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bloxburg.BackgroundTransparency = 1.000
    Bloxburg.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Bloxburg.BorderSizePixel = 0
    Bloxburg.Position = UDim2.new(0.49999997, 0, 0.154386401, 0)
    Bloxburg.Size = UDim2.new(0.850000024, 0, 0, 70)
    Bloxburg.ZIndex = 3
    Bloxburg.Image = "rbxassetid://3570695787"
    Bloxburg.ImageColor3 = Color3.fromRGB(0, 0, 0)
    Bloxburg.ImageTransparency = 1.000
    Bloxburg.ScaleType = Enum.ScaleType.Slice
    Bloxburg.SliceCenter = Rect.new(100, 100, 100, 100)
    Bloxburg.SliceScale = 0.040
    
    Text.Name = "Text"
    Text.Parent = Bloxburg
    Text.AnchorPoint = Vector2.new(0.5, 0.5)
    Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Text.BackgroundTransparency = 1.000
    Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Text.BorderSizePixel = 0
    Text.Position = UDim2.new(0.5, 0, 0.5, 0)
    Text.Size = UDim2.new(1, -5, 1, -40)
    Text.ZIndex = 4
    Text.Font = Enum.Font.Gotham
    Text.Text = "Bloxburg"
    Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Text.TextScaled = true
    Text.TextSize = 25.000
    Text.TextStrokeTransparency = 0.800
    Text.TextWrapped = true
    
    ImageBounds.Name = "ImageBounds"
    ImageBounds.Parent = Bloxburg
    ImageBounds.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageBounds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageBounds.BackgroundTransparency = 1.000
    ImageBounds.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageBounds.BorderSizePixel = 0
    ImageBounds.ClipsDescendants = true
    ImageBounds.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageBounds.Size = UDim2.new(1, 0, 1, 0)
    
    GameIcon.Name = "GameIcon"
    GameIcon.Parent = ImageBounds
    GameIcon.AnchorPoint = Vector2.new(0.5, 0.5)
    GameIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameIcon.BackgroundTransparency = 1.000
    GameIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    GameIcon.BorderSizePixel = 0
    GameIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
    GameIcon.Size = UDim2.new(1, 0, 6, 0)
    GameIcon.Image = ""
    
    UIAspectRatioConstraint.Parent = GameIcon
    
    HoverShadow_2.Name = "HoverShadow"
    HoverShadow_2.Parent = Bloxburg
    HoverShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
    HoverShadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HoverShadow_2.BackgroundTransparency = 1.000
    HoverShadow_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HoverShadow_2.BorderSizePixel = 0
    HoverShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    HoverShadow_2.Size = UDim2.new(1, 0, 1, 0)
    HoverShadow_2.ZIndex = 2
    HoverShadow_2.Image = "rbxassetid://3570695787"
    HoverShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
    HoverShadow_2.ImageTransparency = 1.000
    HoverShadow_2.ScaleType = Enum.ScaleType.Slice
    HoverShadow_2.SliceCenter = Rect.new(100, 100, 100, 100)
    HoverShadow_2.SliceScale = 0.040
    
    UIGradient_2.Rotation = -90
    UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.20), NumberSequenceKeypoint.new(0.20, 0.40), NumberSequenceKeypoint.new(1.00, 1.00)}
    UIGradient_2.Parent = HoverShadow_2
    
    IsActive.Name = "IsActive"
    IsActive.Parent = Bloxburg
    IsActive.AnchorPoint = Vector2.new(0.5, 0.5)
    IsActive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    IsActive.BackgroundTransparency = 1.000
    IsActive.BorderColor3 = Color3.fromRGB(0, 0, 0)
    IsActive.BorderSizePixel = 0
    IsActive.Position = UDim2.new(0.932953835, 0, 0.810571373, 0)
    IsActive.Size = UDim2.new(0.0692616031, 0, 0.209804118, 0)
    IsActive.ZIndex = 4
    IsActive.Image = "rbxasset://textures/whiteCircle.png"
    IsActive.ImageColor3 = Color3.fromRGB(177, 229, 166)
    
    UIAspectRatioConstraint_2.Parent = IsActive
    
    Border.Name = "Border"
    Border.Parent = IsActive
    Border.AnchorPoint = Vector2.new(0.5, 0.5)
    Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Border.BackgroundTransparency = 1.000
    Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Border.BorderSizePixel = 0
    Border.Position = UDim2.new(0.5, 0, 0.5, 0)
    Border.Size = UDim2.new(1.39999998, 0, 1.39999998, 0)
    Border.ZIndex = 3
    Border.Image = "rbxasset://textures/whiteCircle.png"
    
    ClickShadow_2.Name = "ClickShadow"
    ClickShadow_2.Parent = Bloxburg
    ClickShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
    ClickShadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ClickShadow_2.BackgroundTransparency = 1.000
    ClickShadow_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ClickShadow_2.BorderSizePixel = 0
    ClickShadow_2.Position = UDim2.new(0.5, 0, 0.5, 0)
    ClickShadow_2.Size = UDim2.new(1, 4, 1, 4)
    ClickShadow_2.ZIndex = 2
    ClickShadow_2.Image = "rbxassetid://1316045217"
    ClickShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ClickShadow_2.ImageTransparency = 0.600
    ClickShadow_2.ScaleType = Enum.ScaleType.Slice
    ClickShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)
    
    UIAspectRatioConstraint_3.Parent = Bloxburg
    UIAspectRatioConstraint_3.AspectRatio = 3.029
    
    UIAspectRatioConstraint_4.Parent = Frame
    UIAspectRatioConstraint_4.AspectRatio = 0.949
    
    Hint.Name = "Hint"
    Hint.Parent = Frame
    Hint.AnchorPoint = Vector2.new(0.5, 0.5)
    Hint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Hint.BackgroundTransparency = 1.000
    Hint.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Hint.BorderSizePixel = 0
    Hint.Position = UDim2.new(0.5, 0, 0.958999991, 0)
    Hint.Size = UDim2.new(1, -5, 0.153992981, -22)
    Hint.ZIndex = 2
    Hint.Font = Enum.Font.Unknown
    Hint.Text = "Tip: if you see 🟢 on bottom right of script, it means its working, otherwise 🔴 will show"
    Hint.TextColor3 = Color3.fromRGB(255, 255, 255)
    Hint.TextScaled = true
    Hint.TextSize = 20.000
    Hint.TextWrapped = true
    
    local function updatescrollingframe()
    ButtonFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y+35)
    end 
    
    
    updatescrollingframe()
    
    for _,v in pairs(games) do 
    local newgame = Bloxburg:Clone()
    newgame.Parent = ButtonFrame
    newgame.Name = v.gamename
    newgame.ImageBounds.GameIcon.Image = v.gameimg
    newgame.Text.Text = v.gamename
    local scriptstatusts =  getcolorfromstatusts(v.status)
    newgame.IsActive.ImageColor3 = scriptstatusts
    updatescrollingframe()
    
    newgame.Activated:Connect(function()
    if games[newgame.Name] then
    thing:Remove()
    
    local gameinfots = games[newgame.Name]
    loadstring(game:HttpGet(gameinfots.gamescript))()
    end
    end)
    end
