-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:45:41
-- Luau version 6, Types version 3
-- Time taken: 0.000521 seconds

local tbl_upvr = {
	isBlockedByMe = {};
}
local isBlockedByMe_upvr = require(script:FindFirstAncestor("UserBlockingRodux").Reducers.UserBlocking.isBlockedByMe)
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: isBlockedByMe_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local isBlockedByMe_upvr_result1_upvr = isBlockedByMe_upvr(arg1)
	return function(arg1_2, arg2) -- Line 12
		--[[ Upvalues[2]:
			[1]: tbl_upvr (copied, readonly)
			[2]: isBlockedByMe_upvr_result1_upvr (readonly)
		]]
		local var6 = arg1_2
		if not var6 then
			var6 = tbl_upvr
		end
		return {
			isBlockedByMe = isBlockedByMe_upvr_result1_upvr(var6.isBlockedByMe, arg2);
		}
	end
end