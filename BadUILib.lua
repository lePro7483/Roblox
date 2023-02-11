local GUI = {}

local Main,ColorMain

function GUI.Main(NameOfGui,MainTextVal,MainDescVal,ColorGui)
	ColorMain = ColorGui
	Main = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ListLayout = Instance.new("UIListLayout")
	local MainText = Instance.new("TextLabel")
	local MainDesc = Instance.new("TextLabel")
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Main.Name = NameOfGui
	Frame.Parent = Main
	Frame.BackgroundColor3 = Color3.fromRGB(116, 116, 116)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.098867923, 0, 0.143607691, 0)
	Frame.Size = UDim2.new(0, 260, 0, 290)
	ListLayout.Name = "ListLayout"
	ListLayout.Parent = Frame
	ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	MainText.Name = "MainText"
	MainText.Parent = Frame
	MainText.BackgroundColor3 = Color3.fromRGB(255, 28, 28)
	MainText.BorderSizePixel = 0
	MainText.Size = UDim2.new(0, 260, 0, 45)
	MainText.Font = Enum.Font.SourceSansBold
	MainText.Text = "Test"
	MainText.TextColor3 = Color3.fromRGB(255, 255, 255)
	MainText.TextSize = 24.000
	MainDesc.Name = "MainDesc"
	MainDesc.Parent = Frame
	MainDesc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainDesc.BorderSizePixel = 0
	MainDesc.Position = UDim2.new(0, 0, 0.155172408, 0)
	MainDesc.Size = UDim2.new(0, 260, 0, 30)
	MainDesc.Font = Enum.Font.SourceSans
	MainDesc.Text = "   Test"
	MainDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
	MainDesc.TextSize = 14.000
	MainDesc.TextXAlignment = Enum.TextXAlignment.Left
	MainText.BackgroundColor3 = ColorGui
	MainText.Text = MainTextVal
	MainDesc.Text = "   "..string.upper(MainDescVal)
	return Main
end

function GUI.Button(TextOfButton,NameOfButton)
	local Button = Instance.new("TextButton")
	Button.AnchorPoint = Vector2.new(0.5, 0.5)
	Button.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	Button.BackgroundTransparency = 0.400
	Button.BorderColor3 = Color3.fromRGB(48, 48, 48)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0.5, 0, 0.318965524, 0)
	Button.Size = UDim2.new(0, 260, 0, 35)
	Button.Selected = true
	Button.Font = Enum.Font.SourceSansBold
	Button.Text = "   Button"
	Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Button.TextSize = 16.000
	Button.TextXAlignment = Enum.TextXAlignment.Left
	Button.Name = NameOfButton
	Button.Text = "   "..TextOfButton
	Button.Parent = Main.Frame
	return Button
end

function GUI.ToggleChoice(TextOfButton,NameOfButton,Default)
	local ToggleButton = Instance.new("TextButton")
	local Frame_2 = Instance.new("Frame")
	local Toggle = Instance.new("TextLabel")
	ToggleButton.AnchorPoint = Vector2.new(0.5, 0.5)
	ToggleButton.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	ToggleButton.BackgroundTransparency = 0.400
	ToggleButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
	ToggleButton.BorderSizePixel = 0
	ToggleButton.Position = UDim2.new(0.5, 0, 0.318965524, 0)
	ToggleButton.Size = UDim2.new(0, 260, 0, 35)
	ToggleButton.Selected = true
	ToggleButton.Font = Enum.Font.SourceSansBold
	ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ToggleButton.TextSize = 16.000
	ToggleButton.TextXAlignment = Enum.TextXAlignment.Left
	Frame_2.Parent = ToggleButton
	Frame_2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Frame_2.BackgroundTransparency = 0.200
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0.865384579, 0, 0.142857149, 0)
	Frame_2.Size = UDim2.new(0, 25, 0, 25)
	Toggle.Name = "Toggle"
	Toggle.Parent = Frame_2
	Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.BackgroundTransparency = 1.000
	Toggle.Size = UDim2.new(0, 25, 0, 25)
	Toggle.Font = Enum.Font.SourceSansBold
	Toggle.Text = "X"
	Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.TextSize = 32.000
	ToggleButton.Name = NameOfButton
	ToggleButton.Text = "   "..TextOfButton
	if Default == true then
		Toggle.TextTransparency = 0
	else
		Toggle.TextTransparency = 1
	end
	local Val = Instance.new("BoolValue")
	Val.Name = "Choice"
	Val.Value = Default
	Val.Parent = ToggleButton
	ToggleButton.MouseButton1Click:Connect(function()
		Val.Value = not Val.Value
		if Val.Value == true then
			-- On
			ToggleButton.Frame.Toggle.TextTransparency = 0
		else
			-- Off
			ToggleButton.Frame.Toggle.TextTransparency = 1
		end
	end)
	ToggleButton.Parent = Main.Frame
	return ToggleButton
end

function GUI.ArrowChoice(TextOfButton,NameOfButton,TableChoice,IntDefault)
	local ArrowChoice = Instance.new("TextLabel")
	local Right = Instance.new("TextButton")
	local Left = Instance.new("TextButton")
	local TextLabel_2 = Instance.new("TextLabel")
	ArrowChoice.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	ArrowChoice.BackgroundTransparency = 0.400
	ArrowChoice.BorderColor3 = Color3.fromRGB(48, 48, 48)
	ArrowChoice.BorderSizePixel = 0
	ArrowChoice.Position = UDim2.new(0, 0, 0.258620679, 0)
	ArrowChoice.Size = UDim2.new(0, 260, 0, 35)
	ArrowChoice.Font = Enum.Font.SourceSansBold
	ArrowChoice.TextColor3 = Color3.fromRGB(255, 255, 255)
	ArrowChoice.TextSize = 16.000
	ArrowChoice.TextXAlignment = Enum.TextXAlignment.Left
	Right.Name = "Right"
	Right.Parent = ArrowChoice
	Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Right.BackgroundTransparency = 1.000
	Right.BorderSizePixel = 0
	Right.Position = UDim2.new(0.923076928, 0, 0.199999988, 0)
	Right.Size = UDim2.new(0, 20, 0, 20)
	Right.Font = Enum.Font.SourceSansBold
	Right.Text = ">"
	Right.TextColor3 = Color3.fromRGB(255, 255, 255)
	Right.TextSize = 26.000
	Left.Name = "Left"
	Left.Parent = ArrowChoice
	Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Left.BackgroundTransparency = 1.000
	Left.BorderSizePixel = 0
	Left.Position = UDim2.new(0.384615391, 0, 0.199999988, 0)
	Left.Size = UDim2.new(0, 20, 0, 20)
	Left.Font = Enum.Font.SourceSansBold
	Left.Text = "<"
	Left.TextColor3 = Color3.fromRGB(255, 255, 255)
	Left.TextSize = 26.000
	TextLabel_2.Parent = ArrowChoice
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Position = UDim2.new(0.46467638, 0, 0.200000003, 0)
	TextLabel_2.Size = UDim2.new(0, 119, 0, 20)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 16.000
	ArrowChoice.Name = NameOfButton
	ArrowChoice.Text = "   "..TextOfButton
	ArrowChoice.TextLabel.Text = TableChoice[IntDefault]
	local Val = Instance.new("NumberValue")
	Val.Name = "Choice"
	Val.Value = IntDefault
	Val.Parent = ArrowChoice
	ArrowChoice.Left.MouseButton1Click:Connect(function()
		if IntDefault ~= 1 then
			IntDefault -= 1
			ArrowChoice.TextLabel.Text = TableChoice[IntDefault]
			Val.Value = IntDefault
		else
			IntDefault = #TableChoice
			ArrowChoice.TextLabel.Text = TableChoice[IntDefault]
			Val.Value = IntDefault
		end
	end)
	ArrowChoice.Right.MouseButton1Click:Connect(function()
		if IntDefault ~= #TableChoice then
			IntDefault += 1
			ArrowChoice.TextLabel.Text = TableChoice[IntDefault]
			Val.Value = IntDefault
		else
			IntDefault = 1
			ArrowChoice.TextLabel.Text = TableChoice[IntDefault]
			Val.Value = IntDefault
		end
	end)
	ArrowChoice.Parent = Main.Frame
	return ArrowChoice
end

function GUI.NumberSlide(TextOfButton,NameOfButton,Min,Max,Incr,Default)
	local NumberSlide = Instance.new("TextLabel")
	local Right_2 = Instance.new("TextButton")
	local Left_2 = Instance.new("TextButton")
	local TextLabel_3 = Instance.new("TextLabel")
	NumberSlide.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	NumberSlide.BackgroundTransparency = 0.400
	NumberSlide.BorderColor3 = Color3.fromRGB(48, 48, 48)
	NumberSlide.BorderSizePixel = 0
	NumberSlide.Position = UDim2.new(0, 0, 0.258620679, 0)
	NumberSlide.Size = UDim2.new(0, 260, 0, 35)
	NumberSlide.Font = Enum.Font.SourceSansBold
	NumberSlide.TextColor3 = Color3.fromRGB(255, 255, 255)
	NumberSlide.TextSize = 16.000
	NumberSlide.TextXAlignment = Enum.TextXAlignment.Left
	Right_2.Name = "Right"
	Right_2.Parent = NumberSlide
	Right_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Right_2.BackgroundTransparency = 1.000
	Right_2.BorderSizePixel = 0
	Right_2.Position = UDim2.new(0.923076928, 0, 0.199999988, 0)
	Right_2.Size = UDim2.new(0, 20, 0, 20)
	Right_2.Font = Enum.Font.SourceSansBold
	Right_2.Text = ">"
	Right_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Right_2.TextSize = 26.000
	Left_2.Name = "Left"
	Left_2.Parent = NumberSlide
	Left_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Left_2.BackgroundTransparency = 1.000
	Left_2.BorderSizePixel = 0
	Left_2.Position = UDim2.new(0.384615391, 0, 0.199999988, 0)
	Left_2.Size = UDim2.new(0, 20, 0, 20)
	Left_2.Font = Enum.Font.SourceSansBold
	Left_2.Text = "<"
	Left_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Left_2.TextSize = 26.000
	TextLabel_3.Parent = NumberSlide
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Position = UDim2.new(0.46467638, 0, 0.200000003, 0)
	TextLabel_3.Size = UDim2.new(0, 119, 0, 20)
	TextLabel_3.Font = Enum.Font.SourceSans
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextSize = 16.000
	NumberSlide.Name = NameOfButton
	NumberSlide.Text = "   "..TextOfButton
	NumberSlide.TextLabel.Text = tostring(Default)
	local Val = Instance.new("NumberValue")
	Val.Name = "Choice"
	Val.Value = Default
	Val.Parent = NumberSlide
	NumberSlide.Left.MouseButton1Click:Connect(function()
		if Val.Value - Incr >= Min then
			Val.Value = Val.Value - Incr
			NumberSlide.TextLabel.Text = tostring(Val.Value)
		end
	end)
	NumberSlide.Right.MouseButton1Click:Connect(function()
		if Val.Value + Incr <= Max then
			Val.Value = Val.Value + Incr
			NumberSlide.TextLabel.Text = tostring(Val.Value)
		end
	end)
	NumberSlide.Parent = Main.Frame
	return NumberSlide
end

function GUI.Tip(TextOfTip,NameOfTip,Plr)
	local Tip = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")
	Tip.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	TextLabel.Parent = Tip
	TextLabel.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	TextLabel.BackgroundTransparency = 0.350
	TextLabel.Position = UDim2.new(0.00999999885, 0, 0.00999999885, 0)
	TextLabel.Size = UDim2.new(0, 350, 0, 30)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "   Label"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 20.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	Tip.Name = NameOfTip
	Tip.TextLabel.Text = "   "..TextOfTip
	Tip.Parent = Plr.PlayerGui
	return Tip
end

function GUI.Init(Plr,ScreenGui,TextOfButton)
	local FinishButton = Instance.new("TextButton")
	FinishButton.Name = "FinishButton"
	FinishButton.AnchorPoint = Vector2.new(0.5, 0.5)
	FinishButton.BackgroundColor3 = Color3.fromRGB(255, 28, 28)
	FinishButton.BorderColor3 = Color3.fromRGB(48, 48, 48)
	FinishButton.BorderSizePixel = 0
	FinishButton.Position = UDim2.new(0.5, 0, 0.318965524, 0)
	FinishButton.Size = UDim2.new(0, 260, 0, 35)
	FinishButton.Selected = true
	FinishButton.Font = Enum.Font.SourceSansBold
	FinishButton.Text = "Test"
	FinishButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	FinishButton.TextSize = 24.000
	FinishButton.BackgroundColor3 = ColorMain
	FinishButton.Text = TextOfButton
	local Val = Instance.new("BoolValue")
	Val.Name = "FinishVal"
	Val.Value = false
	Val.Parent = FinishButton
	FinishButton.MouseButton1Click:Connect(function()
		Val.Value = true
	end)
	FinishButton.Parent = Main.Frame
	ScreenGui.Parent = Plr.PlayerGui
end

return GUI
