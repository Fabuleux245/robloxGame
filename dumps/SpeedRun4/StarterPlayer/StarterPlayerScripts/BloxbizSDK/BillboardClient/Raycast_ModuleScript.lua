-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:58
-- Luau version 6, Types version 3
-- Time taken: 0.001339 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 6
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	local var3 = arg1
	if not var3 then
		var3 = RaycastParams.new()
	end
	module.Parameters = var3
	module.Penetration = arg2 or 0
	module.AllowCanCollideFalse = arg3 or false
	module.InvisiblePartsBlockRaycast = arg4 or false
	module.MaxPenetrations = arg5 or 1
	module.MinTransparencyToBeInvisible = arg6 or 1
	return setmetatable(module, module_2_upvr)
end
function module_2_upvr.Raycast(arg1, arg2, arg3) -- Line 27
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 5. Error Block 2 end (CF ANALYSIS FAILED)
end
return module_2_upvr