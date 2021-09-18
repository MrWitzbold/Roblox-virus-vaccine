-- First a simple quick scan

for i,v in pairs(workspace:GetChildren()) do
	if v:FindFirstChild("Lag-Players") then
		print("Removing lag script...")
		v:FindFirstChild("Lag-Players"):Remove()
	end
end

-- Then a complete one

function iterate_in(object)
	for i,v in pairs(object:GetChildren()) do
		if v.Name == "Lag-Players" then
			print("Found a lag script")
			v:Remove()
		end

		if v.Name == "Spread" or v.Name == "ProperGr�mmerNeededInPhilosiphalLocations;insertNoobHere" then
			print("Found a spread script")
			v.Disabled = true
		end
		
		if v:IsA("Model") or v:IsA("Folder") or v:IsA("Fire") or v:IsA("Part") then
			wait(0)
			iterate_in(v)
			print("Going deeper...")
		end
		
		if v.Name == "Hedge" then
			print("In hedge")
		end
	end
end

print("Starting scanner")
wait(5)
iterate_in(workspace)

-- Then you gotta actually get rid of the spreads, The above thing just disables them
print("NOW DELETING THE SPREADS")
function get_rid_of_spreads(object)
	for i,v in pairs(object:GetChildren()) do
		if v.Name == "Spread" or v.Name == "ProperGr�mmerNeededInPhilosiphalLocations;insertNoobHere" then
			print("Found a spread script (deleting it)")
			v:Remove()
		end
		
		if v:IsA("Model") or v:IsA("Folder") or v:IsA("Fire") or v:IsA("Part") then
			wait(0)
			print("Going deeper...")
			get_rid_of_spreads(v)
		end
	end
end

get_rid_of_spreads(workspace)

print("SCAN IS COMPLETE")
