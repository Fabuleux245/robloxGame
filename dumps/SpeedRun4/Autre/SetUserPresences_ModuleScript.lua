-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:45
-- Luau version 6, Types version 3
-- Time taken: 0.000337 seconds

local receiveUsersPresence_upvr = require(script:FindFirstAncestor("UserLib").Utils.receiveUsersPresence)
return function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: receiveUsersPresence_upvr (readonly)
	]]
	return function(arg1_2) -- Line 5
		--[[ Upvalues[2]:
			[1]: receiveUsersPresence_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		receiveUsersPresence_upvr(arg1, arg1_2)
	end
end