print("This game is protected by JUK's vaccine")
print("Learn to protect your game by joining: https://discord.gg/4jFcGAaq2T")


-- First a simple quick scan

for i,v in pairs(workspace:GetChildren()) do
	if v:FindFirstChild("Lag-Players") then
		v:FindFirstChild("Lag-Players"):Remove()
	end
end

-- Then a complete one

function iterate_in(object)
	for i,v in pairs(object:GetChildren()) do
		if v.Name == "Infected" and v:IsA("Script") then
			v.Disabled = true
		end
		
		if v.Name == "Infected" and v:IsA("Script") == false then
			v.Name = tostring(v.ClassName)
		end
		
		if v.Name == "Lag-Players" then
			v:Remove()
		end

		if v.Name == "Spread" or v.Name == "ProperGr�mmerNeededInPhilosiphalLocations;insertNoobHere" then
			v.Disabled = true
		end
		
		if v:IsA("Model") or v:IsA("Folder") or v:IsA("Fire") or v:IsA("Part") then
			wait(0)
			iterate_in(v)
		end
	end
end

print("Starting scanner")
wait(5)
iterate_in(workspace)

-- Then you gotta actually get rid of the spreads, The above thing just disables them
function get_rid_of_spreads(object)
	for i,v in pairs(object:GetChildren()) do
		if v:IsA("Fire") and v:FindFirstChild("Spread") ~= nil then
			v:Remove()
		end
		
		if v.Name == "Spread" or v.Name == "ProperGr�mmerNeededInPhilosiphalLocations;insertNoobHere" then
			v:Remove()
		end
		
		if v:IsA("Model") or v:IsA("Folder") or v:IsA("Fire") or v:IsA("Part") then
			wait(0)
			get_rid_of_spreads(v)
		end
	end
end

get_rid_of_spreads(workspace)

for i,v in pairs(workspace:GetChildren()) do
	if v.Name == "Infected" then
		v.Name = tostring(v.ClassName)
	end
	
	for j,w in pairs(v:GetChildren()) do
		if w.Name == "Infected" then
			w.Name = tostring(v.ClassName)
		end
	end
end

print("SCAN IS COMPLETE")
