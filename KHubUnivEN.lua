-- Made by StarLagging, also named lePro7483 before banned for scamming :D
-- I use Orion lib by shlex, you can find it here : https://github.com/shlexware/Orion/blob/main/Documentation.md

loadstring(game:HttpGet('https://raw.githubusercontent.com/lePro7483/Roblox/main/AntiArceus.lua'))()

local ver = 0.2
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({Name = "Loaded KHub Univ", Content = "If probs : DeadInside#5302", Image = "rbxassetid://0", Time = 7})
local Window = OrionLib:MakeWindow({Name = "KHub Univ Gui v"..ver.." *Test*", HidePremium = true, SaveConfig = false, ConfigFolder = "N/A"})
local LPTab = Window:MakeTab({Name = "LocalPlayer", Icon = "rbxassetid://9657052086", PremiumOnly = false})
LPTab:AddLabel("*BETA* Some assets may change : DeadInside#5302")

LPTab:AddSlider({
	Name = "WalkSpeed",
	Min = 1,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(200,200,200),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
LPTab:AddSlider({
	Name = "JumpPower",
	Min = 25,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(200,200,200),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
LPTab:AddButton({
	Name = "Inf Jump (Jump bruv)",
	Callback = function()
		game:GetService("UserInputService").JumpRequest:connect(function()
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end)
	end
})
LPTab:AddButton({
	Name = "CFly + Noclip (E to toggle, bypasses most AC)",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/LegitH3x0R/Roblox-Scripts/main/AEBypassing/CFrameFly.lua"))()
  	end    
})
LPTab:AddButton({
	Name = "Broken GodMod (Toggle with E)",
	Callback = function()
      	loadstring(game:HttpGet("https://www.pastebin.com/raw/sUCpkFhG", true))()
  	end    
})
LPTab:AddButton({
	Name = "ESP (Using Sirius ESP Lib)",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/lePro7483/Roblox/main/KHUBESP.lua'),true))()
  	end    
})

local SCTab = Window:MakeTab({Name = "Useful Scripts", Icon = "rbxassetid://0", PremiumOnly = false})
SCTab:AddButton({
	Name = "Brookhaven",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/Brook.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Islands",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/Islands.lua"))()
  	end
})
SCTab:AddButton({
	Name = "SpyMP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/SpyMP.lua"))()
  	end
})
SCTab:AddButton({
	Name = "DisplaySpyMP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/DisplaySpyMP.lua"))()
  	end
})
SCTab:AddButton({
	Name = "UltimateFling",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/UltimateFling.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Universal Car Modifier",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/UniversalCarModif.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Some Info",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/SomeInfo.lua"))()
  	end
})

local WSCTab = Window:MakeTab({Name = "Weird Scripts", Icon = "rbxassetid://0", PremiumOnly = false})
WSCTab:AddButton({
	Name = "Say All Names",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/SayAllNames.lua"))()
  	end
})
WSCTab:AddButton({
	Name = "Book? *Open* / *Close*",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/BookUniversal.lua"))()
  	end
})

OrionLib:Init()
