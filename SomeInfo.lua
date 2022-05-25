-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local DisplayNameText = Instance.new("TextLabel")
local UserIdText = Instance.new("TextLabel")
local UsernameTet = Instance.new("TextLabel")
local AccAge = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(97, 97, 97)
Frame.BackgroundTransparency = 0.300
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.436028659, 0, 0.41401273, 0)
Frame.Size = UDim2.new(0, 300, 0, 75)

DisplayNameText.Name = "DisplayNameText"
DisplayNameText.Parent = Frame
DisplayNameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DisplayNameText.BackgroundTransparency = 1.000
DisplayNameText.BorderSizePixel = 0
DisplayNameText.Size = UDim2.new(0, 200, 0, 20)
DisplayNameText.Font = Enum.Font.Cartoon
DisplayNameText.Text = "DisplayName"
DisplayNameText.TextColor3 = Color3.fromRGB(0, 0, 0)
DisplayNameText.TextSize = 20.000
DisplayNameText.TextWrapped = true
DisplayNameText.TextXAlignment = Enum.TextXAlignment.Left

UserIdText.Name = "UserIdText"
UserIdText.Parent = Frame
UserIdText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserIdText.BackgroundTransparency = 1.000
UserIdText.BorderSizePixel = 0
UserIdText.Position = UDim2.new(0.666666687, 0, 0, 0)
UserIdText.Size = UDim2.new(0, 100, 0, 20)
UserIdText.Font = Enum.Font.Cartoon
UserIdText.Text = "UserID"
UserIdText.TextColor3 = Color3.fromRGB(0, 0, 0)
UserIdText.TextSize = 20.000
UserIdText.TextWrapped = true
UserIdText.TextXAlignment = Enum.TextXAlignment.Right

UsernameTet.Name = "UsernameText"
UsernameTet.Parent = Frame
UsernameTet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UsernameTet.BackgroundTransparency = 1.000
UsernameTet.BorderSizePixel = 0
UsernameTet.Position = UDim2.new(0, 0, 0.466666639, 0)
UsernameTet.Size = UDim2.new(0, 125, 0, 15)
UsernameTet.Font = Enum.Font.Cartoon
UsernameTet.Text = "@Username"
UsernameTet.TextColor3 = Color3.fromRGB(0, 0, 0)
UsernameTet.TextSize = 20.000
UsernameTet.TextWrapped = true
UsernameTet.TextXAlignment = Enum.TextXAlignment.Left

AccAge.Name = "AccAge"
AccAge.Parent = Frame
AccAge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AccAge.BackgroundTransparency = 1.000
AccAge.BorderSizePixel = 0
AccAge.Position = UDim2.new(0.583333313, 0, 0.399999976, 0)
AccAge.Size = UDim2.new(0, 125, 0, 15)
AccAge.Font = Enum.Font.Cartoon
AccAge.Text = "Age (Days)"
AccAge.TextColor3 = Color3.fromRGB(0, 0, 0)
AccAge.TextSize = 20.000
AccAge.TextWrapped = true
AccAge.TextXAlignment = Enum.TextXAlignment.Right

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, -0.599999964, 0)
Credits.Size = UDim2.new(0, 300, 0, 45)
Credits.Font = Enum.Font.Cartoon
Credits.Text = "Made by lePro7483 | Press N on a Player NOT ACCESSORY"
Credits.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits.TextScaled = true
Credits.TextSize = 20.000
Credits.TextWrapped = true

-- Scripts:

local function WXHTDOC_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local plre = game.Players.LocalPlayer
	local UIS = game:GetService("UserInputService")
	local plrs = game:GetService("Players")
	local WB = script.Parent.Frame
	local LS = game:GetService("LocalizationService")
	
	UIS.InputBegan:Connect(function(key)
		if key.KeyCode == Enum.KeyCode.N then
			local mouse = plre:GetMouse()
			local mhit = mouse.Target.Parent
			print(mhit)
			local Plrslist = game.Players:GetPlayers()
			for i, plrnew in pairs(Plrslist) do
				if plrnew.Name == mhit.Name then
					WB.UsernameText.Text = "@"..plrnew.Name
					WB.DisplayNameText.Text = plrnew.DisplayName
					WB.UserIdText.Text = plrnew.UserId
					WB.AccAge.Text = plrnew.AccountAge.." Days Old"
				end
			end
		end
	end)
end
coroutine.wrap(WXHTDOC_fake_script)()
local function YDEJ_fake_script() -- ScreenGui.Draggable (Read) 
	local script = Instance.new('LocalScript', ScreenGui)

	Frame.Draggable = true
	Frame.Active = true
	Frame.Selectable = true
	--PS : I know that Draggable got removed but this script somehow works :D
end
coroutine.wrap(YDEJ_fake_script)()
