local key = Enum.KeyCode.P
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(key,gpe)
    if gpe then return end
    if key.KeyCode == key then
        _G.StarTrgBot = not _G.StarTrgBot
    end
end)
