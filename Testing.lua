local TableAndChair = {"StarLagging","AGuy"}
print("Ran CODE")

for i,v in pairs(TableAndChair) do
 if v == game.Players.LocalPlayer.Name then
  print(v.." is Premium")
  game.Players.LocalPlayer.Character.EASportsLoveMe.Value = true
 end
end
