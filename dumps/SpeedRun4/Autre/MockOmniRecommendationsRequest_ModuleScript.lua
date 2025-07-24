-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:02
-- Luau version 6, Types version 3
-- Time taken: 0.000754 seconds

local module_2 = {}
local Promise_upvr = require(script:FindFirstAncestor("GraphQlShared").Parent.Promise)
function module_2.SuccessfulRequest(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3, arg4, arg5) -- Line 6
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Promise_upvr (copied, readonly)
		]]
		local module = {
			responseCode = 200;
			responseTimeMs = 480;
			isJSONValid = true;
		}
		module[1] = arg1
		module.responseBody = arg1
		return Promise_upvr.resolve(module)
	end
end
return module_2