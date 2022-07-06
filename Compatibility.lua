if not isfile("StarLaggingFiles") then
	makefolder("StarLaggingFiles")
end
_G.Compatible = isfile("coconut.jpg")
if _G.Compatible then
	print("Exploit is compatible")
else
	while true do end
  game.Players.LocalPlayer:Kick("Your exploit doesn't have required files, error1 (DM DeadInside#5302 for INFO)")
end
