-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:52
-- Luau version 6, Types version 3
-- Time taken: 0.000512 seconds

local tbl_upvr = {}
local byUserId_upvr = require(script.Parent.Parent.Reducers.Aliases.byUserId)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: byUserId_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 11
		--[[ Upvalues[3]:
			[1]: tbl_upvr (copied, readonly)
			[2]: byUserId_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local var6 = arg1_2
		if not var6 then
			var6 = tbl_upvr
		end
		return {
			byUserId = byUserId_upvr(arg1)(var6.byUserId, arg2);
		}
	end
end