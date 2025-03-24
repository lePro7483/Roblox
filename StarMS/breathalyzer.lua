local parttarget = _G.StarMSmodel
warn("Beginning extraction\n")
print(parttarget:GetFullName())
parttarget.BreathalyzerUI.Parent = game:GetService("StarterGui")
parttarget.StarAlSystem.Parent = game:GetService("ServerScriptService")
parttarget.Bottle.Parent = game:GetService("StarterPack")
parttarget.Breathalyzer.Parent = game:GetService("StarterPack")
parttarget.CameraEffect.Parent = game:GetService("StarterPlayer").StarterPlayerScripts
for i,v in pairs(parttarget.TempFold:GetChildren()) do
  v.Parent = game:GetService("Lighting")
end
parttarget:Destroy()
_G.StarMSmodel = nil

print()
warn("------------------------------")
print(" ")
print()
warn("Finished extraction of BreathlyzerSystem.rbxm")
print(" ")
print()
warn("------------------------------")
