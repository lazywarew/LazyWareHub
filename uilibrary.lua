if not guiprotectionfunctionts then 
	while true do end 
	return
end

local tweenservice = game:GetService("TweenService")
local tween = function(object,props,speed)
	local info = TweenInfo.new(speed)
	tweenservice:Create(object,info,props):Play()
end
local library = {}
local tabsTable = {}

function library:New(Name)
	local ScreenGui = Instance.new("ScreenGui")
	local NotificationsHolder = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local FeaturesContainer = Instance.new("Frame")
	local TabsContainer = Instance.new("Frame")
	local UIListLayout2 = Instance.new("UIListLayout")
	local UserInputService = game:GetService("UserInputService")

	ScreenGui.Name = Name
	guiprotectionfunctionts(ScreenGui)

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if input.KeyCode == Enum.KeyCode.Quote and not gameProcessed then
			if ScreenGui.Enabled == true then
				ScreenGui.Enabled = false
			else
				ScreenGui.Enabled = true
			end
		end
	end)

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame.Position = UDim2.new(0.237586424, 0, 0.19225806, 0)
	Frame.Size = UDim2.new(0, 510, 0, 273)

	NotificationsHolder.Name = "Notifications Holder"
	NotificationsHolder.Parent = ScreenGui
	NotificationsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationsHolder.BackgroundTransparency = 1.000
	NotificationsHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)
	NotificationsHolder.BorderSizePixel = 0
	NotificationsHolder.Position = UDim2.new(0.012, 0, 0.93, 0)
	NotificationsHolder.Size = UDim2.new(0, 340, 0, 32)

	UIListLayout2.Parent = NotificationsHolder
	UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout2.Padding = UDim.new(0, 4)

    local function IOMXD_fake_script() -- Frame.DragControl 
        local script = Instance.new('LocalScript', Frame)
    
        local UILIB = {}
        UILIB = script.Parent
        
        local UserInputService = game:GetService("UserInputService")
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        local function update(input)
            local delta = input.Position - dragStart
            UILIB:TweenPosition(UDim2.new(startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y),
            "Out", "Linear", 0.1, true)
        end
        UILIB.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = UILIB.Position
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        UILIB.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then update(input) end
        end)
    end
    coroutine.wrap(IOMXD_fake_script)()

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Frame

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.0313725509, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 140, 0, 33)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = Name
	TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

	FeaturesContainer.Name = "FeaturesContainer"
	FeaturesContainer.Parent = Frame
	FeaturesContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FeaturesContainer.BackgroundTransparency = 1.000
	FeaturesContainer.BorderSizePixel = 0
	FeaturesContainer.ClipsDescendants = true
	FeaturesContainer.Position = UDim2.new(0.31764707, 0, 0.120879129, 0)
	FeaturesContainer.Size = UDim2.new(0, 348, 0, 240)

	TabsContainer.Name = "TabsContainer"
	TabsContainer.Parent = Frame
	TabsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabsContainer.BackgroundTransparency = 1.000
	TabsContainer.BorderSizePixel = 0
	TabsContainer.Position = UDim2.new(0, 0, 0.120879121, 0)
	TabsContainer.Size = UDim2.new(0, 162, 0, 240)

	UIListLayout.Parent = TabsContainer
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local tabs = TabsContainer
	local sections = FeaturesContainer

	local tabersTables = {}
	function tabersTables:Tab(Name)
		local Frame = Instance.new("Frame")
		local Frame_2 = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local TextButton = Instance.new("TextButton")
		local Container = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")

		Frame.Parent = tabs
		Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.BorderSizePixel = 0
		Frame.Size = UDim2.new(1, 0, 0, 32)

		Frame_2.Parent = Frame
		Frame_2.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
		Frame_2.BorderSizePixel = 0
		Frame_2.BackgroundTransparency = 1.000
		Frame_2.Position = UDim2.new(0.0963855386, 0, 0.875, 0)
		Frame_2.Size = UDim2.new(0.137999997, 0, 0, 4)

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = Frame_2

		TextButton.Parent = Frame
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1
		TextButton.Position = UDim2.new(0.0960000008, 0, 0, 0)
		TextButton.Size = UDim2.new(0.903999984, 0, 1, 0)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = Name
		TextButton.TextColor3 = Color3.fromRGB(150, 150, 150)
		TextButton.TextSize = 14.000
		TextButton.TextXAlignment = Enum.TextXAlignment.Left

		Container.Parent = sections
		Container.Active = true
		Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Container.BackgroundTransparency = 1.000
		Container.BorderColor3 = Color3.fromRGB(20, 20, 20)
		Container.BorderSizePixel = 0
		Container.Position = UDim2.new(0, 7, 0, 3)
		Container.Size = UDim2.new(0, 333, 0, 237)
		Container.ZIndex = 1
		Container.ScrollBarThickness = 0

		UIListLayout.Parent = Container
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 8)


		tabsTable[Name] = {
			_index = Frame,
			container = Container,
		}

		TextButton.Activated:Connect(function()
			for i,v in pairs(tabsTable) do
				if v.container ~= Container then
					v.container:TweenPosition(UDim2.new(0, 7, 0, 400),'InOut','Linear',.25)
					tween(v._index.Frame,{Transparency = 1},.10)
					tween(v._index.TextButton,{TextColor3 = Color3.fromRGB(150, 150, 150)},.10)
				end
			end
			Container:TweenPosition(UDim2.new(0, 7,0, 3),'InOut','Linear',.25)
			tween(Frame_2,{Transparency = 0},.10)
			tween(TextButton,{TextColor3 = Color3.fromRGB(255, 255, 255)},.10)
		end)

		local features = {}

		function features:Resize()
			Container.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+4)
		end

		function features:Show(Name)
			for i,v in pairs(tabsTable) do
				if i ~= Name then
					v.container:TweenPosition(UDim2.new(0, 7, 0, 400),'InOut','Linear',.25)
					tween(v._index.Frame,{Transparency = 1},.10)
					tween(v._index.TextButton,{TextColor3 = Color3.fromRGB(150, 150, 150)},.10)
				elseif i == Name then
					v.container:TweenPosition(UDim2.new(0, 7,0, 3),'InOut','Linear',.25)
					tween(v._index.Frame,{Transparency = 0},.10)
					tween(v._index.TextButton,{TextColor3 = Color3.fromRGB(255, 255, 255)},.10)
				end
			end
		end

		function features:Button(Text, Callback)
			local Callback = Callback or function() end
			local Button = Instance.new("Frame")
			local Drop_Shadow = Instance.new("ImageLabel")
			local TextButton = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")

			Button.Name = Text
			Button.Parent = Container
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(1, 0, 0, 32)

			Drop_Shadow.Name = "Drop_Shadow"
			Drop_Shadow.Parent = Button
			Drop_Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Drop_Shadow.BackgroundTransparency = 1.000
			Drop_Shadow.Position = UDim2.new(-0.0390390381, 0, -0.388851166, 0)
			Drop_Shadow.Size = UDim2.new(0, 359, 0, 57)
			Drop_Shadow.Image = "rbxassetid://1113384364"
			Drop_Shadow.ScaleType = Enum.ScaleType.Slice
			Drop_Shadow.SliceCenter = Rect.new(50, 50, 50, 50)
			Drop_Shadow.ZIndex = 2
			Drop_Shadow.Visible = false

			TextButton.Parent = Button
			TextButton.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
			TextButton.BorderSizePixel = 0
			TextButton.Size = UDim2.new(1, 0, 1, 0)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 14.000
			TextButton.Text = Text
			TextButton.Activated:Connect(function()
				pcall(Callback)
			end)
			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = TextButton
			features:Resize()

			return Button
		end

		function features:Textbox(Text, PlaceHolder, Callback)
			local Callback = Callback or function() end
			local Textbox = Instance.new("Frame")
			local Drop_Shadow_2 = Instance.new("ImageLabel")
			local TextLabel = Instance.new("TextLabel")
			local UICorner_2 = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_3 = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = Container
			Textbox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Textbox.BorderSizePixel = 0
			Textbox.Size = UDim2.new(1, 0, 0, 32)

			Drop_Shadow_2.Name = "Drop_Shadow"
			Drop_Shadow_2.Parent = Textbox
			Drop_Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Drop_Shadow_2.BackgroundTransparency = 1.000
			Drop_Shadow_2.Position = UDim2.new(-0.0390390381, 0, -0.388851166, 0)
			Drop_Shadow_2.Size = UDim2.new(0, 359, 0, 57)
			Drop_Shadow_2.Image = "rbxassetid://1113384364"
			Drop_Shadow_2.ScaleType = Enum.ScaleType.Slice
			Drop_Shadow_2.SliceCenter = Rect.new(50, 50, 50, 50)
			Drop_Shadow_2.Visible = false
			Drop_Shadow_2.ZIndex = 2

			TextLabel.Parent = Textbox
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0270270277, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.972972989, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = Textbox

			TextBox.Parent = Textbox
			TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextBox.ClipsDescendants = true
			TextBox.Position = UDim2.new(0, 218,0, 3)
			TextBox.Size = UDim2.new(0, 109, 0, 25)
			TextBox.Font = Enum.Font.SourceSans
			TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
			TextBox.PlaceholderText = "Placeholder"
			TextBox.Text = ""
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 14.000
			TextBox.PlaceholderText = PlaceHolder

			UICorner_3.CornerRadius = UDim.new(0, 4)
			UICorner_3.Parent = TextBox
			TextBox.FocusLost:Connect(function(ep)
				--	if ep then
					if #TextBox.Text > 0 then
						pcall(Callback,  TextBox.Text)
						--	TextBox.Text = ""
					end
				--	end
			end)
			features:Resize()
			return TextBox
		end

		function features:Label(Text)
			local Label = Instance.new("Frame")
			local TextLabel_2 = Instance.new("TextLabel")
			local UICorner_4 = Instance.new("UICorner")

			Label.Name = "Label"
			Label.Parent = Container
			Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			Label.BackgroundTransparency = 1.000
			Label.BorderSizePixel = 0
			Label.Size = UDim2.new(1, 0, 0, 32)

			TextLabel_2.Parent = Label
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderSizePixel = 0
			TextLabel_2.Position = UDim2.new(0.0270270277, 0, 0, 0)
			TextLabel_2.Size = UDim2.new(0.972972989, 0, 1, 0)
			TextLabel_2.Font = Enum.Font.SourceSans
			TextLabel_2.TextColor3 = Color3.fromRGB(150, 150, 150)
			TextLabel_2.TextSize = 14.000
			TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel_2.Text = Text

			UICorner_4.CornerRadius = UDim.new(0, 4)
			UICorner_4.Parent = Label
			features:Resize()

			return Label
		end

		function features:Toggle(Text, Callback)
			local actions = {}
			local enabled = false
			local Callback = Callback or function() end
			local ToggleOff = Instance.new("Frame")
			local Drop_Shadow = Instance.new("ImageLabel")
			local TextLabel = Instance.new("TextLabel")
			local UICorner = Instance.new("UICorner")
			local Frame = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local TextButton = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")

			ToggleOff.Name = 'Toggle'
			ToggleOff.Parent = Container
			ToggleOff.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			ToggleOff.BorderSizePixel = 0
			ToggleOff.Size = UDim2.new(1, 0, 0, 32)

			Drop_Shadow.Name = "Drop_Shadow"
			Drop_Shadow.Parent = ToggleOff
			Drop_Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Drop_Shadow.BackgroundTransparency = 1.000
			Drop_Shadow.Position = UDim2.new(-0.0390390381, 0, -0.388851166, 0)
			Drop_Shadow.Size = UDim2.new(0, 359, 0, 57)
			Drop_Shadow.Image = "rbxassetid://1113384364"
			Drop_Shadow.ScaleType = Enum.ScaleType.Slice
			Drop_Shadow.SliceCenter = Rect.new(50, 50, 50, 50)
			Drop_Shadow.Visible = false
			Drop_Shadow.ZIndex = 2

			TextLabel.Parent = ToggleOff
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.0270270277, 0, 0, 0)
			TextLabel.Size = UDim2.new(0.972972989, 0, 1, 0)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = ToggleOff

			Frame.Parent = ToggleOff
			Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Frame.Position = UDim2.new(0.86500001, 0, 0.173999995, 0)
			Frame.Size = UDim2.new(0, 38, 0, 20)

			UICorner_2.CornerRadius = UDim.new(0, 4)
			UICorner_2.Parent = Frame

			TextButton.Parent = Frame
			TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			TextButton.Position = UDim2.new(0, 4, 0, 3)
			TextButton.Size = UDim2.new(0, 15, 0, 14)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Text = ""
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextSize = 14.000

			UICorner_3.CornerRadius = UDim.new(0, 4)
			UICorner_3.Parent = TextButton

			function fire()
				enabled = not enabled
				tween(Frame,{BackgroundColor3 = enabled and Color3.fromRGB(85, 85, 255) or Color3.fromRGB(25, 25, 25)},.10)
				tween(TextButton,{BackgroundColor3 = enabled and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(30, 30, 30)},.10)
				if enabled then
					TextButton:TweenPosition(UDim2.new(0, 19,0, 3),'InOut','Linear',.10)
				else
					TextButton:TweenPosition(UDim2.new(0, 4, 0, 3),'InOut','Linear',.10)
				end
				pcall(Callback, enabled)
			end

			TextButton.Activated:Connect(fire)

			function actions:Set(arg)
				tween(Frame,{BackgroundColor3 = arg and Color3.fromRGB(85, 85, 255) or Color3.fromRGB(25, 25, 25)},.10)
				tween(TextButton,{BackgroundColor3 = arg and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(30, 30, 30)},.10)
				if arg then
					TextButton:TweenPosition(UDim2.new(0, 19,0, 3),'InOut','Linear',.10)
				else
					TextButton:TweenPosition(UDim2.new(0, 4, 0, 3),'InOut','Linear',.10)
				end
				enabled = arg
				pcall(Callback, arg)
			end
			features:Resize()
			return actions
		end

		function features:Dropdown(Text, Section, List, Callback)
			local env = {}
			local toggle = false
			local Callback = Callback or function() end
			local DropdownClose = Instance.new("Frame")
			local Drop_Shadow = Instance.new("ImageLabel")
			local UICorner = Instance.new("UICorner")
			local UICorner_3 = Instance.new("UICorner")
			local TextLabel = Instance.new("TextLabel")
			local Dropdown = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local TextButton_4 = Instance.new("TextButton")
			local UICorner_6 = Instance.new("UICorner")

			DropdownClose.Name = "Dropdown Close"
			DropdownClose.Parent = Container
			DropdownClose.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			DropdownClose.BorderSizePixel = 0
			DropdownClose.Size = UDim2.new(1, 0, 0, 32)
			DropdownClose.ClipsDescendants = true

			Drop_Shadow.Name = "Drop_Shadow"
			Drop_Shadow.Parent = DropdownClose
			Drop_Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Drop_Shadow.BackgroundTransparency = 1.000
			Drop_Shadow.Position = UDim2.new(-0.0390000008, 0, -0.388999999, 0)
			Drop_Shadow.Size = UDim2.new(0, 359, 0, 57)
			Drop_Shadow.Image = "rbxassetid://1113384364"
			Drop_Shadow.ScaleType = Enum.ScaleType.Slice
			Drop_Shadow.SliceCenter = Rect.new(50, 50, 50, 50)
			Drop_Shadow.Visible = false
			Drop_Shadow.ZIndex = 2

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = DropdownClose

			TextLabel.Parent = DropdownClose
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0, 9, 0, 0)
			TextLabel.Size = UDim2.new(0, 324, 0, 32)
			TextLabel.Font = Enum.Font.SourceSans
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = DropdownClose
			Dropdown.Active = true
			Dropdown.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Dropdown.BorderColor3 = Color3.fromRGB(20, 20, 20)
			Dropdown.Position = UDim2.new(0, 5, 0, 33)
			Dropdown.Size = UDim2.new(0, 321, 0, 96)
			Dropdown.ScrollBarThickness = 0
			Dropdown.ClipsDescendants = true
			--	Dropdown.Visible = false

			UICorner_3.CornerRadius = UDim.new(0, 4)
			UICorner_3.Parent = Dropdown

			UIListLayout.Parent = Dropdown
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			TextButton_4.Parent = DropdownClose
			TextButton_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextButton_4.Position = UDim2.new(0, 218, 0, 4)
			TextButton_4.Size = UDim2.new(0, 109, 0, 25)
			TextButton_4.Font = Enum.Font.SourceSans
			TextButton_4.Text = Section
			TextButton_4.TextColor3 = Color3.fromRGB(150, 150, 150)
			TextButton_4.TextSize = 14.000

			UICorner_6.CornerRadius = UDim.new(0, 4)
			UICorner_6.Parent = TextButton_4

			for i,v in pairs(List) do
				local Frame = Instance.new("Frame")
				local TextButton = Instance.new("TextButton")
				local UICorner_2 = Instance.new("UICorner")

				Frame.Parent = Dropdown
				Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Frame.BackgroundTransparency = 1.000
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0.0124610588, 0, 0, 0)
				Frame.Size = UDim2.new(1, 0, 0, 32)

				TextButton.Parent = Frame
				TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
				TextButton.Position = UDim2.new(0, 3, 0, 3)
				TextButton.Size = UDim2.new(0, 315, 0, 26)
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = v or i 
				TextButton.TextColor3 = Color3.fromRGB(150, 150, 150)
				TextButton.TextSize = 14.000

				UICorner_2.CornerRadius = UDim.new(0, 4)
				UICorner_2.Parent = TextButton

				TextButton.MouseEnter:Connect(function()
					tween(TextButton,{BackgroundColor3 = Color3.fromRGB(85, 85, 255)},.10)
					tween(TextButton,{TextColor3 = Color3.fromRGB(255, 255, 255)},.10)
				end)
				TextButton.MouseLeave:Connect(function()
					tween(TextButton,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)},.10)
					tween(TextButton,{TextColor3 = Color3.fromRGB(150, 150, 150)},.10)
				end)
				TextButton.Activated:Connect(function()
					TextButton_4.Text = TextButton.Text
					Callback(TextButton.Text)
				end)
				Dropdown.CanvasSize = UDim2.new(0, 0,0, UIListLayout.AbsoluteContentSize.Y+4)
			end

			TextButton_4.Activated:Connect(function()
				local ySize = ( (133>((#Dropdown:GetChildren()-1)*32)) and (#Dropdown:GetChildren()-1)*32 ) or 133
				print(ySize)
				if toggle then
					toggle = false
					--	Dropdown.Visible = false
					DropdownClose:TweenSize(UDim2.new(1, 0, 0, 32),'InOut','Linear',.25)
					Dropdown:TweenSize(UDim2.new(0, 321, 0, 32),'InOut','Linear',.25)
					task.wait(.25)
					features:Resize()
					--	DropdownClose:TweenSize(UDim2.new(0, 336,0, 32),'InOut','Linear',config['Dropdown Drop Tween Time'])
				else
					toggle = true
					--	Dropdown.Visible = true
					DropdownClose:TweenSize(UDim2.new(1, 0, 0, ySize),'InOut','Linear',.25)
					Dropdown:TweenSize(UDim2.new(0, 321, 0, ySize-38),'InOut','Linear',.25)
					task.wait(.25)
					features:Resize()
					--	DropdownClose:TweenSize(UDim2.new(0, 336,0, 113),'InOut','Linear',config['Dropdown Drop Tween Time'])
				end
			end)

			function env:Set(list)
				for i,v in pairs(Dropdown:GetChildren()) do
					if v:IsA('Frame') then
						v:Destroy()
					end
				end
				for i,v in pairs(list) do
					local Frame = Instance.new("Frame")
					local TextButton = Instance.new("TextButton")
					local UICorner_2 = Instance.new("UICorner")

					Frame.Parent = Dropdown
					Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Frame.BackgroundTransparency = 1.000
					Frame.BorderSizePixel = 0
					Frame.Position = UDim2.new(0.0124610588, 0, 0, 0)
					Frame.Size = UDim2.new(1, 0, 0, 32)

					TextButton.Parent = Frame
					TextButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					TextButton.Position = UDim2.new(0, 3, 0, 3)
					TextButton.Size = UDim2.new(0, 315, 0, 26)
					TextButton.AutoButtonColor = false
					TextButton.Font = Enum.Font.SourceSans
					TextButton.Text = v or i 
					TextButton.TextColor3 = Color3.fromRGB(150, 150, 150)
					TextButton.TextSize = 14.000

					UICorner_2.CornerRadius = UDim.new(0, 4)
					UICorner_2.Parent = TextButton

					TextButton.MouseEnter:Connect(function()
						tween(TextButton,{BackgroundColor3 = Color3.fromRGB(85, 85, 255)},.10)
						tween(TextButton,{TextColor3 = Color3.fromRGB(255, 255, 255)},.10)
					end)
					TextButton.MouseLeave:Connect(function()
						tween(TextButton,{BackgroundColor3 = Color3.fromRGB(25, 25, 25)},.10)
						tween(TextButton,{TextColor3 = Color3.fromRGB(150, 150, 150)},.10)
					end)
					TextButton.Activated:Connect(function()
						TextButton_4.Text = TextButton.Text
						Callback(TextButton.Text)
					end)
					Dropdown.CanvasSize = UDim2.new(0, 0,0, UIListLayout.AbsoluteContentSize.Y+4)
				end
			end

			--	function env:Add() end

			--	function env:Remove() end

			features:Resize()

			return env

		end

		function features:Paragraph(Header,Description) 
			local env = {}
			local Paragraph = Instance.new("Frame")
			local Head = Instance.new("TextLabel")
			local Desc = Instance.new("TextLabel")
		
			Paragraph.Name = "Paragraph"
			Paragraph.Parent = Container
			Paragraph.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Paragraph.BackgroundTransparency = 1.000
			Paragraph.BorderSizePixel = 0
			Paragraph.Size = UDim2.new(0, 333, 0, 69)

			Head.Name = "Head"
			Head.Parent = Paragraph
			Head.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Head.BackgroundTransparency = 1.000
			Head.BorderSizePixel = 0
			Head.Position = UDim2.new(0, 9, 0, 0)
			Head.Size = UDim2.new(0, 324, 0, 32)
			Head.Font = Enum.Font.SourceSans
			Head.Text = ""
			Head.TextColor3 = Color3.fromRGB(255, 255, 255)
			Head.TextSize = 14.000
			Head.TextXAlignment = Enum.TextXAlignment.Left

			Desc.Name = "Desc"
			Desc.Parent = Paragraph
			Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Desc.BackgroundTransparency = 1.000
			Desc.BorderSizePixel = 0
			Desc.Position = UDim2.new(0, 9, 0, 31)
			Desc.Size = UDim2.new(0, 324, 0, 38)
			Desc.Font = Enum.Font.SourceSans
			Desc.Text = ""
			Desc.TextColor3 = Color3.fromRGB(150, 150, 150)
			Desc.TextSize = 14.000
			Desc.TextWrapped = true
			Desc.TextXAlignment = Enum.TextXAlignment.Left
			Desc.TextYAlignment = Enum.TextYAlignment.Top

			Paragraph.Head.Text = Header
			Paragraph.Desc.Text = Description
			Paragraph.Size = UDim2.new( 1, 0, 0, Desc.TextBounds.Y + Head.Size.Y.Offset )

			function env:Update(Header,Description) 
				Paragraph.Head.Text = Header
				Paragraph.Desc.Text = Description
				Paragraph.Size = UDim2.new( 1, 0, 0, Desc.TextBounds.Y + Head.Size.Y.Offset )
			end

			return env

		end

		return features

	end

	function tabersTables:Notify(Message,Color)
		local Frame = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Frame_2 = Instance.new("Frame")
		local Desciption = Instance.new("TextLabel")

		Frame.Parent = NotificationsHolder
		Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Frame.BorderSizePixel = 0
		Frame.ClipsDescendants = true
		Frame.Position = UDim2.new(0, 0, 0.924170613, 0)
		Frame.Size = UDim2.new(0, 417, 0, 32)

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = Frame

		Frame_2.Parent = Frame
		Frame_2.BackgroundColor3 = Color or Color3.fromRGB(85, 85, 255)
		Frame_2.BackgroundTransparency = 0.500
		Frame_2.BorderSizePixel = 0
		Frame_2.Position = UDim2.new(0, -18, 0, -4)
		Frame_2.Size = UDim2.new(0, 25, 0, 38)

		Desciption.Name = "Desciption"
		Desciption.Parent = Frame
		Desciption.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Desciption.BackgroundTransparency = 1.000
		Desciption.BorderSizePixel = 0
		Desciption.Position = UDim2.new(0, 21, 0, 8)
		Desciption.Size = UDim2.new(0, 396, 0, 18)
		Desciption.Font = Enum.Font.SourceSans
		Desciption.Text = Message
		Desciption.TextColor3 = Color3.fromRGB(86, 86, 86)
		Desciption.TextSize = 14.000
		Desciption.TextWrapped = true
		Desciption.TextXAlignment = Enum.TextXAlignment.Left
		Desciption.TextYAlignment = Enum.TextYAlignment.Top
		
		Desciption.Size = UDim2.new(0,(Desciption.TextBounds.X + 25),0,32)
		Frame.Size = UDim2.new(0,(Desciption.TextBounds.X + 25)+10,0,32)

		spawn(function()
			task.wait(3)
			tween(Frame,{BackgroundTransparency = 1},.25)
			tween(Frame_2,{BackgroundTransparency = 1},.25)
			tween(Desciption,{BackgroundTransparency = 1},.25)
			tween(Desciption,{TextTransparency = 1},.25)
			task.wait(.25)
			Frame:Destroy()
		end)

	end

    return tabersTables
    
end

return library
