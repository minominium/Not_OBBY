HSV_H = 180
HSV_S = 80

HSV_SCALER_H = 360
HSV_SCALER_S = 100

local folder_PlateA = game.Workspace:FindFirstChild("Plate_seriesA")

while true do
	for i = 0, 20 do
		for _, v in pairs(folder_PlateA:GetChildren()) do
			if v.Name == "Plate_A" then
				v.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, i / 20)
			end
		end
		wait(0.05)
	end
	for i = 20, 0, -1 do
		for _, v in pairs(folder_PlateA:GetChildren()) do
			if v.Name == "Plate_A" then
				v.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, i / 20)
			end
		end
		wait(0.05)
	end
	wait(1)
end