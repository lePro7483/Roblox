-- Universal OpenSource Book script
-- by lePro7483's Lazyness
-- /e *Open* to open Book and /e *Close* to close Book (isn't case sensitive)
-- Should work with mostly all executors
-- Using Gui to Lua Version: 3.2

-- Source Code : 

-- Instances: 

local Pad = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AddSize = Instance.new("TextButton")
local RemoveSize = Instance.new("TextButton")
local Page1 = Instance.new("TextBox")
local SizeText = Instance.new("TextLabel")
local Derriere = Instance.new("ImageLabel")
local Derriere_2 = Instance.new("ImageLabel")
local Separateur = Instance.new("Frame")
local Page2 = Instance.new("TextBox")
local Page3 = Instance.new("TextBox")
local Page4 = Instance.new("TextBox")
local NextPage = Instance.new("TextButton")
local PreviousPage = Instance.new("TextButton")
local Page6 = Instance.new("TextBox")
local Page5 = Instance.new("TextBox")

--Properties:

Pad.Name = "Pad"
Pad.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Pad.Enabled = false

Frame.Parent = Pad
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.287564784, 0, 0.321637422, 0)
Frame.Size = UDim2.new(0, 30, 0, 30)

AddSize.Name = "AddSize"
AddSize.Parent = Frame
AddSize.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
AddSize.Position = UDim2.new(13.9904156, 0, 0.0245613754, 0)
AddSize.Size = UDim2.new(0, 40, 0, 40)
AddSize.Font = Enum.Font.SourceSans
AddSize.Text = "AddSize"
AddSize.TextColor3 = Color3.fromRGB(0, 0, 0)
AddSize.TextSize = 14.000

RemoveSize.Name = "RemoveSize"
RemoveSize.Parent = Frame
RemoveSize.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
RemoveSize.Position = UDim2.new(13.9904156, 0, 2.69181275, 0)
RemoveSize.Size = UDim2.new(0, 40, 0, 40)
RemoveSize.Font = Enum.Font.SourceSans
RemoveSize.Text = "Minus Size"
RemoveSize.TextColor3 = Color3.fromRGB(0, 0, 0)
RemoveSize.TextSize = 14.000
RemoveSize.TextWrapped = true

Page1.Name = "Page1"
Page1.Parent = Frame
Page1.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
Page1.BorderSizePixel = 0
Page1.Position = UDim2.new(-2.1517272, 0, -0.984795153, 0)
Page1.Size = UDim2.new(0, 231, 0, 200)
Page1.ZIndex = 2
Page1.ClearTextOnFocus = false
Page1.Font = Enum.Font.Cartoon
Page1.MultiLine = true
Page1.PlaceholderColor3 = Color3.fromRGB(104, 104, 104)
Page1.Text = ""
Page1.TextColor3 = Color3.fromRGB(0, 0, 0)
Page1.TextSize = 20.000
Page1.TextWrapped = true
Page1.TextXAlignment = Enum.TextXAlignment.Left
Page1.TextYAlignment = Enum.TextYAlignment.Top

SizeText.Name = "SizeText"
SizeText.Parent = Frame
SizeText.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
SizeText.Position = UDim2.new(13.9904156, 0, 1.37485373, 0)
SizeText.Size = UDim2.new(0, 40, 0, 40)
SizeText.Font = Enum.Font.SourceSans
SizeText.Text = "20"
SizeText.TextColor3 = Color3.fromRGB(0, 0, 0)
SizeText.TextScaled = true
SizeText.TextSize = 14.000
SizeText.TextWrapped = true

Derriere.Name = "Derriere"
Derriere.Parent = Frame
Derriere.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Derriere.BackgroundTransparency = 1.000
Derriere.Position = UDim2.new(5.66666746, 0, -1.48479509, 0)
Derriere.Size = UDim2.new(0, 250, 0, 230)
Derriere.Image = "rbxassetid://3570695787"
Derriere.ImageColor3 = Color3.fromRGB(127, 46, 15)
Derriere.ScaleType = Enum.ScaleType.Slice
Derriere.SliceCenter = Rect.new(100, 100, 100, 100)
Derriere.SliceScale = 0.120

Derriere_2.Name = "Derriere"
Derriere_2.Parent = Frame
Derriere_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Derriere_2.BackgroundTransparency = 1.000
Derriere_2.Position = UDim2.new(-2.66666555, 0, -1.48479509, 0)
Derriere_2.Size = UDim2.new(0, 250, 0, 230)
Derriere_2.Image = "rbxassetid://3570695787"
Derriere_2.ImageColor3 = Color3.fromRGB(127, 46, 15)
Derriere_2.ScaleType = Enum.ScaleType.Slice
Derriere_2.SliceCenter = Rect.new(100, 100, 100, 100)
Derriere_2.SliceScale = 0.120

Separateur.Name = "Separateur"
Separateur.Parent = Frame
Separateur.BackgroundColor3 = Color3.fromRGB(255, 173, 78)
Separateur.BorderSizePixel = 0
Separateur.Position = UDim2.new(5.56666756, 0, -0.984795153, 0)
Separateur.Size = UDim2.new(0, 6, 0, 200)
Separateur.ZIndex = 3

Page2.Name = "Page2"
Page2.Parent = Frame
Page2.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
Page2.BorderSizePixel = 0
Page2.Position = UDim2.new(5.7482729, 0, -0.984795153, 0)
Page2.Size = UDim2.new(0, 231, 0, 200)
Page2.ZIndex = 2
Page2.ClearTextOnFocus = false
Page2.Font = Enum.Font.Cartoon
Page2.MultiLine = true
Page2.PlaceholderColor3 = Color3.fromRGB(104, 104, 104)
Page2.Text = ""
Page2.TextColor3 = Color3.fromRGB(0, 0, 0)
Page2.TextSize = 20.000
Page2.TextWrapped = true
Page2.TextXAlignment = Enum.TextXAlignment.Left
Page2.TextYAlignment = Enum.TextYAlignment.Top

Page3.Name = "Page3"
Page3.Parent = Frame
Page3.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
Page3.BorderSizePixel = 0
Page3.Position = UDim2.new(-2.1517272, 0, -0.984795153, 0)
Page3.Size = UDim2.new(0, 231, 0, 200)
Page3.Visible = false
Page3.ZIndex = 2
Page3.ClearTextOnFocus = false
Page3.Font = Enum.Font.Cartoon
Page3.MultiLine = true
Page3.PlaceholderColor3 = Color3.fromRGB(104, 104, 104)
Page3.Text = ""
Page3.TextColor3 = Color3.fromRGB(0, 0, 0)
Page3.TextSize = 20.000
Page3.TextWrapped = true
Page3.TextXAlignment = Enum.TextXAlignment.Left
Page3.TextYAlignment = Enum.TextYAlignment.Top

Page4.Name = "Page4"
Page4.Parent = Frame
Page4.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
Page4.BorderSizePixel = 0
Page4.Position = UDim2.new(5.7482729, 0, -0.984795153, 0)
Page4.Size = UDim2.new(0, 231, 0, 200)
Page4.Visible = false
Page4.ZIndex = 2
Page4.ClearTextOnFocus = false
Page4.Font = Enum.Font.Cartoon
Page4.MultiLine = true
Page4.PlaceholderColor3 = Color3.fromRGB(104, 104, 104)
Page4.Text = ""
Page4.TextColor3 = Color3.fromRGB(0, 0, 0)
Page4.TextSize = 20.000
Page4.TextWrapped = true
Page4.TextXAlignment = Enum.TextXAlignment.Left
Page4.TextYAlignment = Enum.TextYAlignment.Top

NextPage.Name = "NextPage"
NextPage.Parent = Frame
NextPage.BackgroundColor3 = Color3.fromRGB(186, 65, 21)
NextPage.Position = UDim2.new(13.423749, 0, 4.82514668, 0)
NextPage.Size = UDim2.new(0, 45, 0, 40)
NextPage.Font = Enum.Font.SourceSans
NextPage.Text = "Next Page"
NextPage.TextColor3 = Color3.fromRGB(0, 0, 0)
NextPage.TextSize = 14.000
NextPage.TextWrapped = true

PreviousPage.Name = "PreviousPage"
PreviousPage.Parent = Frame
PreviousPage.BackgroundColor3 = Color3.fromRGB(186, 65, 21)
PreviousPage.Position = UDim2.new(-3.67625022, 0, 4.82514668, 0)
PreviousPage.Size = UDim2.new(0, 45, 0, 40)
PreviousPage.Font = Enum.Font.SourceSans
PreviousPage.Text = "Previous Page"
PreviousPage.TextColor3 = Color3.fromRGB(0, 0, 0)
PreviousPage.TextSize = 14.000
PreviousPage.TextWrapped = true

Page6.Name = "Page6"
Page6.Parent = Frame
Page6.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
Page6.BorderSizePixel = 0
Page6.Position = UDim2.new(5.7482729, 0, -0.984795153, 0)
Page6.Size = UDim2.new(0, 231, 0, 200)
Page6.Visible = false
Page6.ZIndex = 2
Page6.ClearTextOnFocus = false
Page6.Font = Enum.Font.Cartoon
Page6.MultiLine = true
Page6.PlaceholderColor3 = Color3.fromRGB(104, 104, 104)
Page6.Text = ""
Page6.TextColor3 = Color3.fromRGB(0, 0, 0)
Page6.TextSize = 20.000
Page6.TextWrapped = true
Page6.TextXAlignment = Enum.TextXAlignment.Left
Page6.TextYAlignment = Enum.TextYAlignment.Top

Page5.Name = "Page5"
Page5.Parent = Frame
Page5.BackgroundColor3 = Color3.fromRGB(255, 238, 170)
Page5.BorderSizePixel = 0
Page5.Position = UDim2.new(-2.1517272, 0, -0.984795153, 0)
Page5.Size = UDim2.new(0, 231, 0, 200)
Page5.Visible = false
Page5.ZIndex = 2
Page5.ClearTextOnFocus = false
Page5.Font = Enum.Font.Cartoon
Page5.MultiLine = true
Page5.PlaceholderColor3 = Color3.fromRGB(104, 104, 104)
Page5.Text = ""
Page5.TextColor3 = Color3.fromRGB(0, 0, 0)
Page5.TextSize = 20.000
Page5.TextWrapped = true
Page5.TextXAlignment = Enum.TextXAlignment.Left
Page5.TextYAlignment = Enum.TextYAlignment.Top

-- Scripts:

local function VLAII_fake_script() -- AddSize.LocalScript 
	local script = Instance.new('LocalScript', AddSize)

	local Box = script.Parent.Parent.Page1
	local Box2 = script.Parent.Parent.Page2
	local Box3 = script.Parent.Parent.Page3
	local Box4 = script.Parent.Parent.Page4
	local Box5 = script.Parent.Parent.Page5
	local Box6 = script.Parent.Parent.Page6
	
	local SizeIs = script.Parent.Parent.SizeText
	
	script.Parent.MouseButton1Up:Connect(function()
		Box.TextSize = Box.TextSize + 1
		Box2.TextSize = Box.TextSize
		Box3.TextSize = Box.TextSize
		Box4.TextSize = Box.TextSize
		Box5.TextSize = Box.TextSize
		Box6.TextSize = Box.TextSize
		local Nombre = Box.TextSize
		SizeIs.Text = Nombre
	end)
end
coroutine.wrap(VLAII_fake_script)()
local function XONDD_fake_script() -- RemoveSize.LocalScript 
	local script = Instance.new('LocalScript', RemoveSize)

	local Box = script.Parent.Parent.Page1
	local Box2 = script.Parent.Parent.Page2
	local Box3 = script.Parent.Parent.Page3
	local Box4 = script.Parent.Parent.Page4
	local Box5 = script.Parent.Parent.Page5
	local Box6 = script.Parent.Parent.Page6
	local SizeIs = script.Parent.Parent.SizeText
	
	script.Parent.MouseButton1Up:Connect(function()
		Box.TextSize = Box.TextSize - 1
		Box2.TextSize = Box.TextSize
		Box3.TextSize = Box.TextSize
		Box4.TextSize = Box.TextSize
		Box5.TextSize = Box.TextSize
		Box6.TextSize = Box.TextSize
		local Nombre = Box.TextSize
		SizeIs.Text = Nombre
	end)
end
coroutine.wrap(XONDD_fake_script)()
local function WOBTHMR_fake_script() -- Frame.OpenPad 
	local script = Instance.new('LocalScript', Frame)

	game:WaitForChild("Players")
	
	local Boi = game.Players.LocalPlayer
	local NotAPad = script.Parent.Parent
	
	Boi.Chatted:Connect(function(said)
		local treatedtext = said:lower()
		if treatedtext == "/e *open*" then
			NotAPad.Enabled = true
			print("Livre Ouvert")
		end
	end)
end
coroutine.wrap(WOBTHMR_fake_script)()
local function QBBK_fake_script() -- Frame.ClosePad 
	local script = Instance.new('LocalScript', Frame)

	game:WaitForChild("Players")
	
	local Boi = game.Players.LocalPlayer
	local NotAPad = script.Parent.Parent
	
	Boi.Chatted:Connect(function(said)
		local treatedtext = said:lower()
		if treatedtext == "/e *close*" then
			NotAPad.Enabled = false
			print("Livre Fermé")
		end
	end)
end
coroutine.wrap(QBBK_fake_script)()
local function XNDJL_fake_script() -- Frame.PagesChanger 
	local script = Instance.new('LocalScript', Frame)
	
	-- Important Locals
	local NButton = script.Parent.NextPage
	local PButton = script.Parent.PreviousPage
	local Counter = 1
	
	-- Pages
	local Page1 = script.Parent.Page1
	local Page2 = script.Parent.Page2
	local Page3 = script.Parent.Page3
	local Page4 = script.Parent.Page4
	local Page5 = script.Parent.Page5
	local Page6 = script.Parent.Page6
	
	-- Next
	NButton.MouseButton1Up:Connect(function()
		if Counter == 1 then
			print("Starting OldPages")
			Counter = 2
			Page1.TextEditable = false
			Page1.Visible = false
			Page2.TextEditable = false
			Page2.Visible = false
			print("Removed OldPages")
			Page3.TextEditable = true
			Page3.Visible = true
			Page4.TextEditable = true
			Page4.Visible = true
		end
	end)
	
	NButton.MouseButton1Up:Connect(function()
		if Counter == 2 then
			wait(.1)
			print("Starting OldPages")
			Counter = 3
			Page3.TextEditable = false
			Page3.Visible = false
			Page4.TextEditable = false
			Page4.Visible = false
			print("Removed OldPages")
			Page5.TextEditable = true
			Page5.Visible = true
			Page6.TextEditable = true
			Page6.Visible = true
		end
	end)
	
	
	
	-- Previous
	PButton.MouseButton1Up:Connect(function()
		if Counter == 2 then
			print("Starting OldPages")
			Counter = 1
			Page3.TextEditable = false
			Page3.Visible = false
			Page4.TextEditable = false
			Page4.Visible = false
			print("Removed OldPages")
			Page1.TextEditable = true
			Page1.Visible = true
			Page2.TextEditable = true
			Page2.Visible = true
		end
	end)
	
	PButton.MouseButton1Up:Connect(function()
		if Counter == 3 then
			wait(.1)
			print("Starting OldPages")
			Counter = 2
			Page5.TextEditable = false
			Page5.Visible = false
			Page6.TextEditable = false
			Page6.Visible = false
			print("Removed OldPages")
			Page3.TextEditable = true
			Page3.Visible = true
			Page4.TextEditable = true
			Page4.Visible = true
		end
	end)
end
coroutine.wrap(XNDJL_fake_script)()