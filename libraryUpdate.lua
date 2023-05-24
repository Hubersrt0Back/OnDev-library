
local library = {}

function library:CreateMain()
	local DevNoLibrary = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local label = Instance.new("TextLabel")
	local Buton = Instance.new("TextButton")
	
	DevNoLibrary.Parent = game.StarterGui
	DevNoLibrary.Name = "DevNo Library"
	DevNoLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	DevNoLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = DevNoLibrary
	Main.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
	Main.Position = UDim2.new(0.0597779676, 0, 0.191115707, 0)
	Main.Size = UDim2.new(0, 540, 0, 320)
	Main.Draggable = true
	Main.Active = true

	UICorner.Parent = Main

	label.Name = "label"
	label.Parent = Main
	label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	label.BackgroundTransparency = 1.000
	label.Position = UDim2.new(-0.000702165067, 0, -0.00263428688, 0)
	label.Size = UDim2.new(0, 221, 0, 50)
	label.Font = Enum.Font.SourceSans
	label.Text = "DevNo Library"
	label.TextColor3 = Color3.fromRGB(0, 0, 0)
	label.TextScaled = true
	label.TextSize = 14.000
	label.TextWrapped = true
	while true do
		label.TextColor3 = Color3.fromRGB(255, 0, 4)
		wait(.1)
		label.TextColor3 = Color3.fromRGB(234, 2, 255)
		wait(.1)
		label.TextColor3 = Color3.fromRGB(27, 6, 255)
		wait(.1)
		label.TextColor3 = Color3.fromRGB(2, 255, 255)
		wait(.1)
		label.TextColor3 = Color3.fromRGB(72, 255, 6)
		wait(.1)
		label.TextColor3 = Color3.fromRGB(255, 234, 1)
		wait(.1)
		label.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
	local DevNoLibrary = {}
	
	function DevNoLibrary:Button(name, callback)
		Buton.Name = name
		Buton.Parent = Main
		Buton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Buton.Position = UDim2.new(-0.00185185671, 0, 0.209374994, 0)
		Buton.Size = UDim2.new(0, 131, 0, 50)
		Buton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
		Buton.Font = Enum.Font.SourceSans
		Buton.Text = name
		Buton.TextColor3 = Color3.fromRGB(0, 0, 0)
		Buton.TextScaled = true
		Buton.TextSize = 14.000
		Buton.TextWrapped = true
		Main:FindFirstChild(name).MouseButton1Click:Connect(callback)
	end
	return DevNoLibrary
end
return library
