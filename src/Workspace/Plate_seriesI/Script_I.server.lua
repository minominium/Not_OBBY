HSV_H = 0
HSV_S = 80

HSV_SCALER_H = 360
HSV_SCALER_S = 100

local folder_PlateI = game.Workspace:FindFirstChild("Plate_seriesI")

while true do
	for i = 20, 0, -1 do
		for _, v in pairs(folder_PlateI:GetChildren()) do
			if v.Name == "Plate_I" then
				v.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, i / 20)
			end
		end
		wait(0.05)
	end
	wait(1)
	for i = 0, 20 do
		for _, v in pairs(folder_PlateI:GetChildren()) do
			if v.Name == "Plate_I" then
				v.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, i / 20)
			end
		end
		wait(0.05)
	end
	
end