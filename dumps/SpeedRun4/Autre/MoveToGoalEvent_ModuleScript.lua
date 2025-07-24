-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:27
-- Luau version 6, Types version 3
-- Time taken: 0.001528 seconds

local module = {
	Name = "MoveToGoalEvent";
}
local var2_upvw
local function spawnGoalArea_upvr(arg1, arg2) -- Line 11, Named "spawnGoalArea"
	local Part = Instance.new("Part")
	Part.Anchored = true
	Part.CanCollide = false
	Part.Transparency = 1
	Part.Size = Vector3.new(math.abs(arg2.X - arg1.X), 1, math.abs(arg2.Z - arg1.Z))
	Part.Position = Vector3.new((arg2.X + arg1.X) / 2, 6.3, (arg2.Z + arg1.Z) / 2)
	Part.Parent = workspace
	return Part
end
function module.StartEvent(arg1) -- Line 24
	--[[ Upvalues[2]:
		[1]: spawnGoalArea_upvr (readonly)
		[2]: var2_upvw (read and write)
	]]
	local spawnGoalArea_result1_upvr = spawnGoalArea_upvr(Vector3.new(-8, 6.30000, -31), Vector3.new(9, 6.30000, -49))
	task.wait(1)
	var2_upvw = spawnGoalArea_result1_upvr.Touched:Connect(function(arg1_2) -- Line 32
		--[[ Upvalues[3]:
			[1]: spawnGoalArea_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: var2_upvw (copied, read and write)
		]]
		if game.Players:GetPlayerFromCharacter(arg1_2.Parent) then
			spawnGoalArea_result1_upvr:Destroy()
			task.wait(0.2)
			arg1()
			if var2_upvw then
				var2_upvw:Disconnect()
				var2_upvw = nil
			end
		end
	end)
end
function module.StopEvent() -- Line 51
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	if var2_upvw then
		var2_upvw:Disconnect()
		var2_upvw = nil
	end
end
return module