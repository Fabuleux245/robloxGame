-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:02
-- Luau version 6, Types version 3
-- Time taken: 0.001510 seconds

local Parent = script.Parent.Parent
local Remotes = Parent:WaitForChild("Remotes")
local Spawn_upvr = Remotes.Spawn
local Despawn_upvr = Remotes.Despawn
local Pickup_upvr = Remotes.Pickup
local var6_upvw
local function _() -- Line 18, Named "tryPickup"
	--[[ Upvalues[2]:
		[1]: var6_upvw (read and write)
		[2]: Pickup_upvr (readonly)
	]]
	if not var6_upvw then
	else
		local _, _ = Pickup_upvr:InvokeServer()
	end
end
local var9_upvw = false
local module_upvr = require(Parent:WaitForChild("Shared"):WaitForChild("Characters"))
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function onEggTouched_upvr(arg1) -- Line 26, Named "onEggTouched"
	--[[ Upvalues[5]:
		[1]: var9_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: var6_upvw (read and write)
		[5]: Pickup_upvr (readonly)
	]]
	if var9_upvw then
	else
		local any_getCharacterModel_result1 = module_upvr.getCharacterModel(LocalPlayer_upvr)
		if not any_getCharacterModel_result1 then return end
		if arg1:IsDescendantOf(any_getCharacterModel_result1) then
			var9_upvw = true
			if not var6_upvw then
			else
				local _, _ = Pickup_upvr:InvokeServer()
			end
			task.delay(0.5, function() -- Line 41
				--[[ Upvalues[1]:
					[1]: var9_upvw (copied, read and write)
				]]
				var9_upvw = false
			end)
		end
	end
end
local Models_upvr = Parent:WaitForChild("Models")
local Workspace_upvr = game:GetService("Workspace")
local function onSpawnEvent_upvr(arg1, arg2) -- Line 47, Named "onSpawnEvent"
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: Models_upvr (readonly)
		[3]: Workspace_upvr (readonly)
		[4]: onEggTouched_upvr (readonly)
	]]
	if var6_upvw then
		var6_upvw:Destroy()
	end
	local SOME = Models_upvr:FindFirstChild(arg1)
	local var19 = SOME
	if var19 then
		var19 = SOME:IsA("MeshPart")
	end
	assert(var19, `No meshpart: {arg1}`)
	local clone = SOME:Clone()
	clone:PivotTo(CFrame.new(arg2))
	clone.Parent = Workspace_upvr
	var6_upvw = clone
	clone.Touched:Connect(onEggTouched_upvr)
end
local function onDespawnEvent_upvr() -- Line 64, Named "onDespawnEvent"
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	if var6_upvw then
		var6_upvw:Destroy()
		var6_upvw = nil
	end
end
local function _() -- Line 71, Named "initialize"
	--[[ Upvalues[4]:
		[1]: Spawn_upvr (readonly)
		[2]: onSpawnEvent_upvr (readonly)
		[3]: Despawn_upvr (readonly)
		[4]: onDespawnEvent_upvr (readonly)
	]]
	Spawn_upvr.OnClientEvent:Connect(onSpawnEvent_upvr)
	Despawn_upvr.OnClientEvent:Connect(onDespawnEvent_upvr)
end
Spawn_upvr.OnClientEvent:Connect(onSpawnEvent_upvr)
Despawn_upvr.OnClientEvent:Connect(onDespawnEvent_upvr)