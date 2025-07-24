-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:03
-- Luau version 6, Types version 3
-- Time taken: 0.000469 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2, arg3, arg4) -- Line 4
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module.IsEnabled = arg1
	module.EnableVoice = arg2
	module.GetPropertyChangedSignal = arg3
	module.GetClientFeaturesAsync = arg4
	return setmetatable(module, module_2_upvr)
end
return module_2_upvr