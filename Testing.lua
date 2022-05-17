local TableAndChair = {"AGuy","Bites the dust"}
for i,v in pairs(TableAndChair) do
 if v == game.Players.LocalPlayer.Name then
  print(v.." is Premium")
 end
end
