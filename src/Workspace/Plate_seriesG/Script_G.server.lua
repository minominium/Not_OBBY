HSV_H = 30
HSV_S = 80

HSV_SCALER_H = 360
HSV_SCALER_S = 100

local folder_PlateG = game.Workspace:FindFirstChild("Plate_seriesG")

for _, v in pairs(folder_PlateG:GetChildren()) do
	if v.Name == "Plate_G" then
		v.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, 1)
	end
end