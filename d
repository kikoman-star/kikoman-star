-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local DarkSploit = Instance.new("TextLabel")
local WalkSpeed = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local FullBright = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = coregui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(1.49011612e-08, 0, 1.49011612e-08, 0)
main.Size = UDim2.new(0, 383, 0, 351)
main.Active = true
main.Draggable = true

DarkSploit.Name = "DarkSploit"
DarkSploit.Parent = main
DarkSploit.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DarkSploit.BackgroundTransparency = 1.000
DarkSploit.Position = UDim2.new(-0.211488247, 0, -0.0170940179, 0)
DarkSploit.Size = UDim2.new(0, 544, 0, 124)
DarkSploit.Font = Enum.Font.SourceSansBold
DarkSploit.Text = "DarkSploit"
DarkSploit.TextColor3 = Color3.fromRGB(255, 255, 255)
DarkSploit.TextSize = 40.000

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = main
WalkSpeed.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
WalkSpeed.Position = UDim2.new(0.237597913, 0, 0.336182326, 0)
WalkSpeed.Size = UDim2.new(0, 200, 0, 43)
WalkSpeed.Font = Enum.Font.GothamBold
WalkSpeed.Text = "WalkSpeed"
WalkSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed.TextSize = 14.000
WalkSpeed.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
end)

NoClip.Name = "NoClip"
NoClip.Parent = main
NoClip.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
NoClip.Position = UDim2.new(0.237597913, 0, 0.487179458, 0)
NoClip.Size = UDim2.new(0, 200, 0, 43)
NoClip.Font = Enum.Font.GothamBold
NoClip.Text = "NoClip"
NoClip.TextColor3 = Color3.fromRGB(0, 0, 0)
NoClip.TextSize = 14.000
NoClip.MouseButton1Down:connect(function()
	local h,char,play
	play = game.Players.LocalPlayer
	local uis = game:getService("UserInputService")
	game:getService("RunService"):BindToRenderStep("",0,function()
		char = play.Character
		if char then h = char:findFirstChildOfClass("Humanoid") end
		if not h then return end
		if uis:IsKeyDown(Enum.KeyCode.V) then
			h:ChangeState(11)
		end
	end
end)

FullBright.Name = "FullBright"
FullBright.Parent = main
FullBright.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
FullBright.Position = UDim2.new(0.237597913, 0, 0.643874586, 0)
FullBright.Size = UDim2.new(0, 200, 0, 43)
FullBright.Font = Enum.Font.GothamBold
FullBright.Text = "FullBright"
FullBright.TextColor3 = Color3.fromRGB(0, 0, 0)
FullBright.TextSize = 14.000
FullBright.MouseButton1Down:connect(function()
	local Light = game:GetService("Lighting")

	function dofullbright()
		Light.Ambient = Color3.new(1, 1, 1)
		Light.ColorShift_Bottom = Color3.new(1, 1, 1)
		Light.ColorShift_Top = Color3.new(1, 1, 1)
	end

	dofullbright()

	Light.LightingChanged:Connect(dofullbright)
end)
