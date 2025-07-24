-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:30
-- Luau version 6, Types version 3
-- Time taken: 0.002515 seconds

local ViewportQueryOptions_upvr = require(script:FindFirstAncestor("SceneUnderstanding").options.ViewportQueryOptions)
return function(arg1, arg2, arg3) -- Line 8, Named "queryViewport"
	--[[ Upvalues[1]:
		[1]: ViewportQueryOptions_upvr (readonly)
	]]
	local any_new_result1 = ViewportQueryOptions_upvr.new(arg3)
	local _ = 0
	local maxScreenDivisions = any_new_result1.maxScreenDivisions
	local var23 = math.ceil(maxScreenDivisions / 2) - 1
	local module_2 = {}
	for _ = 1, maxScreenDivisions * maxScreenDivisions do
		local vector2 = Vector2.new((0 + 0.5 + var23) * (arg1.ViewportSize.X / maxScreenDivisions), (0 + 0.5 + var23) * (arg1.ViewportSize.Y / maxScreenDivisions))
		local any_ScreenPointToRay_result1 = arg1:ScreenPointToRay(vector2.X, vector2.Y)
		local workspace_Raycast_result1 = workspace:Raycast(any_ScreenPointToRay_result1.Origin, any_ScreenPointToRay_result1.Direction * any_new_result1.maxDistance, any_new_result1.raycastParams)
		if workspace_Raycast_result1 and workspace_Raycast_result1.Instance and not table.find(module_2, workspace_Raycast_result1.Instance) and arg2(workspace_Raycast_result1.Instance) then
			table.insert(module_2, workspace_Raycast_result1.Instance)
			if any_new_result1.limit <= #module_2 then
				return module_2
			end
		end
		if 0 + 1 == 1 and 1 == 0 then
		end
	end
	return module_2
end