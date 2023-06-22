local key = Enum.KeyCode.P
local UIS = game:GetService("UserInputService")
local module = loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/AimTrainModule.lua"))()
module.Init()
UIS.InputBegan:Connect(function(key,gpe)
    if gpe then return end
    if key.KeyCode == key then
        _G.StarTrgBot = not _G.StarTrgBot
    end
end)
