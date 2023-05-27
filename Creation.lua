_G.Main = {}

function _G.Main:New(Title,gamename)

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextLabel = Instance.new("TextLabel")
	local Uicroner = Instance.new("UICorner",Frame)
	local UI2 = Instance.new("UICorner",Frame_2)
	local Border1_2 = Instance.new("Frame")
	local Border1 = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local TextLabel2 = Instance.new("TextLabel")
	
	TextLabel2.Parent = Border1
	TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel2.BackgroundTransparency = 1.000
	TextLabel2.Position = UDim2.new(0.302013427, 0, 4.33333349, 0)
	TextLabel2.Size = UDim2.new(0, 200, 0, 50)
	TextLabel2.Font = Enum.Font.SourceSans
	TextLabel2.Text = Title
	TextLabel2.TextColor3 = Color3.fromRGB(255, 166, 170)
	TextLabel2.TextScaled = true
	TextLabel2.TextSize = 14.000
	TextLabel2.TextWrapped = true
	
	ImageLabel.Parent = Border1
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0, 0, 1, 0)
	ImageLabel.Size = UDim2.new(0, 100, 0, 71)
	ImageLabel.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
	
	Border1.Name = "Border 1"
	Border1.Parent = Frame
	Border1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	Border1.Position = UDim2.new(0, 0, 0.776435077, 0)
	Border1.Size = UDim2.new(0, 596, 0, 3)
	

	Border1_2.Name = "Border 1"
	Border1_2.Parent = Frame
	Border1_2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
	Border1_2.Position = UDim2.new(0.00166944903, 0, 0.0906344876, 0)
	Border1_2.Size = UDim2.new(0, 596, 0, 3)

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ResetOnSpawn = false

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Frame.Position = UDim2.new(0.05382213, 0, 0.274487466, 0)
	Frame.Size = UDim2.new(0, 599, 0, 331)

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.00166944903, 0, 0.0996978879, 0)
	Frame_2.Size = UDim2.new(0, 174, 0, 224)

	UIListLayout.Parent = Frame_2
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)
	
	TextLabel.Parent = Border1_2
	TextLabel.BackgroundColor3 = Color3.fromRGB(0, 255, 115)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0503355972, 0, -10.333333, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 34)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(11, 88, 100)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	

	local function MVMBOL_fake_script()
		local script = Instance.new('LocalScript', Frame)

		script.Parent.Active = true
		script.Parent.Draggable = true
	end
	coroutine.wrap(MVMBOL_fake_script)()

	_G.Frame = {}

	function _G.Frame:Button(Name,Call)

		local TextButton = Instance.new("TextButton")

		TextButton.Parent = Frame_2
		TextButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 131, 0, 50)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = Name
		TextButton.TextColor3 = Color3.fromRGB(235, 235, 235)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true

		TextButton.MouseButton1Click:Connect(function()

			pcall(Call)

		end)

	end

	return _G.Frame

end
