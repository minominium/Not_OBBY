for _, v1 in pairs(game.Workspace:GetChildren()) do
	if string.find(v1.Name, "Plate") ~= nil then
		for _, v2 in pairs(v1:GetChildren()) do
			if string.find(v2.Name, "Plate") ~= nil then
				v2.Material = Enum.Material.Neon
			end
		end
	end
end

for _, v1 in pairs(game.Workspace.UFO_Signs:GetChildren()) do
	if string.find(v1.Name, "UFO_Sign") ~= nil then
		local number_UFO = string.sub(v1.Name, 10, 11)
		v1.Sign.SurfaceGui.TextLabel.Text = "CheckPoint "..number_UFO
	end
end