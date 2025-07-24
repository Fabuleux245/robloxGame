-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:35
-- Luau version 6, Types version 3
-- Time taken: 0.000396 seconds

local module = {}
local Observable_upvr = require(script.Parent.Parent.Parent.utilities).Observable
function module.fromError(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: Observable_upvr (readonly)
	]]
	return Observable_upvr.new(function(arg1_2) -- Line 18
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1_2:error(arg1)
	end)
end
return module