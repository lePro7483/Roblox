print("By https://v3rmillion.net/member.php?action=profile&uid=806967 \nAnd other ppl (imagine exploiting in Arceus X lmao)")
local uis = game:GetService("UserInputService")
local function isArceus()
    local mobileDevice
    local noConcatOperators
   
    local kbe = uis.KeyboardEnabled
    local te = uis.TouchEnabled
    if kbe == false and te == false then
        mobileDevice = true
    end
    local succ,err = pcall(function()
        loadstring("local x = '';x ..= 'a'")()
    end)
    if not succ then
        noConcatOperators = true
    end
    if mobileDevice and noConcatOperators then
        return true
    else
        return false
    end
end

if isArceus() then
    game:Shutdown()
end
