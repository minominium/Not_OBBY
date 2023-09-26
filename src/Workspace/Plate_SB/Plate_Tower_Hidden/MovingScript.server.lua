HSV_H = 60
HSV_S = 80

HSV_SCALER_H = 360
HSV_SCALER_S = 100

local moving = script.Parent

local function MovingUp(distance, timer)
	for i = 0, (distance * 5) do
		moving.Position += Vector3.new(0, -0.2, 0)
		wait(timer)
	end
	moving.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, 1)
	wait(1)
	moving.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, 0)
end

local function MovingDown(distance, timer)
	for i = 0, (distance * 5) do
		moving.Position += Vector3.new(0, 0.2, 0)
		wait(timer)
	end
	moving.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, 1)
	wait(1)
	moving.Color = Color3.fromHSV(HSV_H / HSV_SCALER_H, HSV_S / HSV_SCALER_S, 0)
end

while true do
	MovingUp(41, 0.02)
	MovingDown(41, 0.02)
end
