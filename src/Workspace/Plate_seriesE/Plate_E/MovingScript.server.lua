local SPEED = -5
local backward = true

local start = script.Parent:FindFirstChild("Start")
local finish = script.Parent:FindFirstChild("Finish")
local con_Pris = script.Parent:FindFirstChild("PrismaticConstraint")

con_Pris.Velocity = SPEED

start.Touched:Connect(function(hit)
	if (hit == script.Parent and not backward) then
		backward = true
		con_Pris.Velocity = SPEED
	end
end)

finish.Touched:Connect(function(hit)
	if (hit == script.Parent and backward) then
		backward = false
		con_Pris.Velocity = -SPEED
	end
end)