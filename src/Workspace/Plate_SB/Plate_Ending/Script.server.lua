local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")

local checkpoint = script.Parent
local currentTime = 0;
local finishedTime = 0;

local function formatTime()
	local hours = math.floor(finishedTime / 3600)
	local minutes = math.floor((finishedTime - (hours * 3600)) / 60)
	local seconds = (finishedTime - (hours * 3600) - (minutes * 60))
	local format = "%02d : %02d : %02d"
	return format:format(hours, minutes, seconds)
end

function onTouched(hit)
	if hit and hit.Parent and hit.Parent:FindFirstChildOfClass("Humanoid") then
		local player = Players:GetPlayerFromCharacter(hit.Parent)
		local checkpointData = ServerStorage:FindFirstChild("CheckpointData")
		if not checkpointData then
			checkpointData = Instance.new("Folder")
			checkpointData.Name = "CheckpointData"
			checkpointData.Parent = ServerStorage
		end

		local userIdString = tostring(player.UserId)
		local checkpointValue = checkpointData:FindFirstChild(userIdString)
		if not checkpointValue then
			checkpointValue = Instance.new("ObjectValue")
			checkpointValue.Name = userIdString
			checkpointValue.Parent = checkpointData

			player.CharacterAdded:connect(function(character)
				wait()
				local storedCheckpoint = ServerStorage.CheckpointData[userIdString].Value
				character:MoveTo(storedCheckpoint.Position + Vector3.new(math.random(-4, 4), 4, math.random(-4, 4)))
			end)
		end

		checkpointValue.Value = checkpoint
	end
	
	checkpoint.EndingSign.SurfaceGui.TextLabel1.Visible = true
	checkpoint.EndingSign.SurfaceGui.TextLabel2.Visible = true
	checkpoint.EndingSign.SurfaceGui.TextLabel3.Text = formatTime()
	checkpoint.EndingSign.SurfaceGui.TextLabel3.Visible = true
end

while true do
	if checkpoint.Touched:Connect(onTouched) then
		finishedTime = currentTime
	end
	currentTime += 1
	task.wait(1)
end