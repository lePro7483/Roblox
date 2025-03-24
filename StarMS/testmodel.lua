local parttarget = _G.StarMSModel
for i,v in pairs(parttarget:GetChildren()) do
  for ib,vb in pairs(v:GetChildren()) do
	  vb.Parent = game:GetService(v.Name)
  end
end
parttarget:Destroy()
_G.StarMSModel = nil
