local parttarget = instancemodel
print(instancemodel)
for i,v in pairs(parttarget:GetChildren()) do
  for ib,vb in pairs(v:GetChildren()) do
	  vb.Parent = game:GetService(v.Name)
  end
end
