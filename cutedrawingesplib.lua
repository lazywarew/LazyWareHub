-- cute esp framework that was made by my cute boyfwend !!

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")
local LineColor = Color3.fromRGB(255, 182, 193)
local Enabled = true
local Lines = {}
local Camera = workspace.CurrentCamera
getgenv().cuteesplibraryowo = {}

cuteesplibraryowo.Get2DPosition = function(PartPosition) 
	local Vector, Visible = Camera:WorldToViewportPoint(PartPosition)
	local ViewportPoint = Vector2.new(Vector.X, Vector.Y)
	return ViewportPoint, Visible
end


 cuteesplibraryowo.DrawLine = function(Part, Color) -- do when player joins
	local IsPlayer = false
	if game.Players:GetPlayerFromCharacter(Part.Parent) then IsPlayer = true end
	local Line = Drawing.new("Line")
	Line.Visible = true
	Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1)

	local To, Visible = Get2DPosition(Part.Position)
	Line.To = To
	Line.Color = Color
	Line.Thickness = 2
	Line.Transparency = 1
	Line.ZIndex = 1

	if IsPlayer == true then
		local Player = Players:GetPlayerFromCharacter(Part.Parent)
		table.insert(Lines, {Player.Name, Line})
	else
		table.insert(Lines, {Part.Name, Line})
	end

end

cuteesplibraryowo.RemoveLine = function(Part) -- do when player leaves / not found -- PLAYER SUPPORT ONLY NOW

	for Index, Line in pairs(Lines) do
		if Line[1] == Part.Name then
			Line[2].Visible = false
			table.remove(Lines, Index)

		end
	end

end

cuteesplibraryowo.UpdateLine = function(Line, Color) -- possibly reduces lag as we are not deleting

	for _, Player in pairs(Players:GetPlayers()) do
		if Player.Name == Line[1] then
			if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
				local Line = Line[2]
				Line.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1)	
				local To, Visible = Get2DPosition(Player.Character:FindFirstChild("HumanoidRootPart").Position)
				if Visible == true then
					Line.To = To
					Line.Visible = true
				else
					Line.Visible = false
				end
				
			end
		end
	end

end

RunService.RenderStepped:Connect(function() -- update existing lines
	for _, Line in pairs(Lines) do
		cuteesplibraryowo.UpdateLine(Line)
	end
end)
