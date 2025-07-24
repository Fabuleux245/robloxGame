-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:27
-- Luau version 6, Types version 3
-- Time taken: 0.000423 seconds

local fragments_upvr = require(script:FindFirstAncestor("ApolloPresence").Parent.ApolloLocalState).fragments
return function(arg1, arg2) -- Line 11, Named "getUserPresenceByUserId"
	--[[ Upvalues[1]:
		[1]: fragments_upvr (readonly)
	]]
	return arg1.cache:readFragment({
		id = arg1.cache:identify({
			__typename = "UserPresence";
			id = arg2.userId;
		});
		fragment = fragments_upvr.userPresenceAllFields;
	})
end