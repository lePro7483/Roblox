-- loadstring(game:HttpGet("https://raw.githubusercontent.com/lePro7483/Roblox/main/FunnyStuff/Tests.lua"))()
local isWorking = false
local UsingBeta = false

repeat task.wait(.06) until game:IsLoaded()

if isWorking then
	if not UsingBeta then
		while true do end
	else
		while true do
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				v:Destroy()
			end
		end
	end
end
