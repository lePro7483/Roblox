local module = {}
local mouse = nil
_G.StarTrgBot = false

function module.Init()
    while task.wait() do
        if _G.StarTrgBot == true then
            mouse = game:GetService("Players").LocalPlayer:GetMouse()
            hit = mouse.Target
            if hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid") then
                local hum = hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
                if hum.Parent.Name ~= game:GetService("Players").LocalPlayer.Name then
                    vim:SendMouseButtonEvent(mouse.X,mouse.Y,0,true,game,0)
                    task.wait()
                    vim:SendMouseButtonEvent(mouse.X,mouse.Y,0,false,game,0)
                end
            end
        end
    end
end

return module
