local Plrs = game.Players:GetChildren()
local DisplayNames = false

for i,guy in pairs(Plrs) do
    if DisplayNames == false then
        print(guy.Name)
        local args = {
           [1] = guy.Name,
           [2] = "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    else
        print(guy.Character.Humanoid.DisplayName)
        local args = {
           [1] = guy.Character.Humanoid.DisplayName,
           [2] = "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    end
end