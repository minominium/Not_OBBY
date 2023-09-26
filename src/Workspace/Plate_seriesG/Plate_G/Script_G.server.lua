HSV_H = 30
HSV_S = 80

HSV_SCALER_H = 360
HSV_SCALER_S = 100

isTouched = false;

local platform = script.Parent

local function disappear(otherPart)
	local partparent = otherPart.Parent
	local humanoid = partparent:FindFirstChild("Humanoid")
	if humanoid then
		isTouched = true
		for i = 20, 0, -1 do
			platform.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, i / 20)
			wait(0.025)
		end
		platform.CanCollide = false
		platform.Transparency = 1
	end
	
	wait(0.5)
	platform.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, 1)
	platform.CanCollide = true
	platform.Transparency = 0
	isTouched = false
end

platform.Touched:Connect(disappear)
