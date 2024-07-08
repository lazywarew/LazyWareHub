local plrservicets = game:GetService("Players")
local me = plrservicets.LocalPlayer

if game.PlaceId == 11729688377  then
importmodulets("/main/boogabooga/boogamain.lua")
elseif game.PlaceId == 11879754496 then 
importmodulets("/main/boogabooga/boogavoid.lua")
else
me:Kick("invalid game")
end
