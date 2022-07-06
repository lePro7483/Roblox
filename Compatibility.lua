if not isfile("StarLaggingFiles") then
	makefolder("StarLaggingFiles")
end
_G.Compatible = isfile("StarLaggingFiles/coconut.jpg")
local IE = identifyexecutor or identify_executor
if _G.Compatible then
	print("Exploit is compatible")
else
	while true do end
	game.Players.LocalPlayer:Kick("Exploit not supported, DM DeadInside#5302 for Support")
end
