local tab = game.ReplicatedStorage:GetChildren()
local blacklist = {"TempThemes","DefaultChatSystemChatEvents","PlayersStartup","SingleVehicles","MotelRegions","UiClone","ClonedTools","BannedLots","AvatarEditorScipts"}
function FindFolder()
	for i,v in pairs(tab) do
		if not table.find(blacklist,v.Name) then
			if v.ClassName == "Folder" then
				local rf = v
				return rf
			end
		end
	end
end
function FindMain()
	local fold = FindFolder()
	if fold:FindFirstChildOfClass("Folder") then
		fold = fold:FindFirstChildOfClass("Folder")
		if fold:FindFirstChildOfClass("Folder") then
			fold = fold:FindFirstChildOfClass("Folder")
			if fold:FindFirstChildOfClass("Folder") then
				fold = fold:FindFirstChildOfClass("Folder")
			else
				_G.BRem = fold
				print(_G.BRem:GetFullName())
			end
		else
			_G.BRem = fold
			print(_G.BRem:GetFullName())
		end
	else
	_G.BRem = fold
	print(_G.BRem:GetFullName())
	end
end
FindMain()
