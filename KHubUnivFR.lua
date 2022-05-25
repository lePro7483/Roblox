-- Made by StarLagging, also named lePro7483 before banned for scamming :D
-- I use Orion lib by shlex, you can find it here : https://github.com/shlexware/Orion/blob/main/Documentation.md
local ver = 0.2
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
OrionLib:MakeNotification({Name = "KHub Univ Lancé", Content = "Si Probs : DeadInside#5302", Image = "rbxassetid://0", Time = 7})
local Window = OrionLib:MakeWindow({Name = "KHub Gui Universel v"..ver.." *Test*", HidePremium = true, SaveConfig = false, ConfigFolder = "N/A"})
local LPTab = Window:MakeTab({Name = "LocalPlayer", Icon = "rbxassetid://9657052086", PremiumOnly = false})
LPTab:AddLabel("*BETA* Des assets peuvent changer : DeadInside#5302")

LPTab:AddSlider({
	Name = "Vitesse",
	Min = 1,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(200,200,200),
	Increment = 1,
	ValueName = "Vitesse",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
LPTab:AddSlider({
	Name = "Saut",
	Min = 25,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(200,200,200),
	Increment = 1,
	ValueName = "Saut",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
LPTab:AddButton({
	Name = "Saut Infini (Sauter)",
	Callback = function()
		game:GetService("UserInputService").JumpRequest:connect(function()
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end)
	end
})
LPTab:AddButton({
	Name = "CFly + Noclip (E pour Activer/Desactiver)",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/LegitH3x0R/Roblox-Scripts/main/AEBypassing/CFrameFly.lua"))()
  	end    
})
LPTab:AddButton({
	Name = "GodMod Casser (E pour Activer/Desactiver)",
	Callback = function()
      	loadstring(game:HttpGet("https://www.pastebin.com/raw/sUCpkFhG", true))()
  	end    
})
LPTab:AddButton({
	Name = "ESP *WIP* (Utilisant Sirius ESP Lib)",
	Callback = function()
      	OrionLib:MakeNotification({Name = "MAIS POURQUOI?", Content = "JE VIENS DE DIRE C WIP", Image = "rbxassetid://0", Time = 7})
  	end    
})

local SCTab = Window:MakeTab({Name = "Scripts Utiles", Icon = "rbxassetid://0", PremiumOnly = false})
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
	Name = "Espion MP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/SpyMP.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Display Espion MP",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/DisplaySpyMP.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Fling Ultime",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/UltimateFling.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Modificateur de Vehicule Universel",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/UniversalCarModif.lua"))()
  	end
})
SCTab:AddButton({
	Name = "Des Infos",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/SomeInfo.lua"))()
  	end
})

local WSCTab = Window:MakeTab({Name = "Scripts chelous", Icon = "rbxassetid://0", PremiumOnly = false})
WSCTab:AddButton({
	Name = "Dire tout les noms",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/SayAllNames.lua"))()
  	end
})
WSCTab:AddButton({
	Name = "Livre? *Open* / *Close*",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/BookUniversal.lua"))()
  	end
})

OrionLib:Init()
