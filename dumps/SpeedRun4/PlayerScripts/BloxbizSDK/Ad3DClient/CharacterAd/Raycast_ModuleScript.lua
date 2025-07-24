-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:44
-- Luau version 6, Types version 3
-- Time taken: 0.001037 seconds

local module = {}
local Workspace_upvr = game:GetService("Workspace")
function module.raycastPositionToPart(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[1]:
		[1]: Workspace_upvr (readonly)
	]]
	local var3
	if not Workspace_upvr.CurrentCamera then
		return nil
	end
	var3 = arg2.Position - arg1
	local RaycastParams_new_result1 = RaycastParams.new()
	var3 = arg3
	if not var3 then
		var3 = {}
	end
	RaycastParams_new_result1.FilterDescendantsInstances = var3
	var3 = Enum.RaycastFilterType.Blacklist
	RaycastParams_new_result1.FilterType = var3
	var3 = false
	RaycastParams_new_result1.IgnoreWater = var3
	var3 = workspace:Raycast(arg1, var3.unit * 50, RaycastParams_new_result1)
	if var3 and var3.Instance then
		return var3.Instance
	end
	return false
end
return module