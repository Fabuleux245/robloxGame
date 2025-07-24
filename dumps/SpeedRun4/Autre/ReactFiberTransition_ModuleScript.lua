-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:15
-- Luau version 6, Types version 3
-- Time taken: 0.000460 seconds

local module = {
	NoTransition = 0;
}
local ReactCurrentBatchConfig_upvr = require(script.Parent.Parent.Shared).ReactSharedInternals.ReactCurrentBatchConfig
function module.requestCurrentTransition() -- Line 20
	--[[ Upvalues[1]:
		[1]: ReactCurrentBatchConfig_upvr (readonly)
	]]
	return ReactCurrentBatchConfig_upvr.transition
end
return module