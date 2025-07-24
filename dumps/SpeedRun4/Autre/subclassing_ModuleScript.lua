-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:21
-- Luau version 6, Types version 3
-- Time taken: 0.000606 seconds

local module = {}
local Observable_upvr = require(script.Parent.Observable).Observable
function module.fixObservableSubclass(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: Observable_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 32, Named "set"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Observable_upvr (copied, readonly)
		]]
		arg1[arg1_2] = Observable_upvr
	end
	arg1["@@species"] = Observable_upvr
	return arg1
end
return module