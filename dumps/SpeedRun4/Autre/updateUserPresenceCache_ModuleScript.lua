-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:26
-- Luau version 6, Types version 3
-- Time taken: 0.000531 seconds

local ApolloPresence = script:FindFirstAncestor("ApolloPresence")
local fragments_upvr = require(ApolloPresence.Parent.ApolloLocalState).fragments
local Formatters_upvr = require(ApolloPresence.Formatters)
return function(arg1, arg2) -- Line 9, Named "updateUserPresenceCache"
	--[[ Upvalues[2]:
		[1]: fragments_upvr (readonly)
		[2]: Formatters_upvr (readonly)
	]]
	return arg1.cache:writeFragment({
		id = arg1.cache:identify({
			__typename = "UserPresence";
			id = arg2.id;
		});
		fragment = fragments_upvr.userPresenceAllFields;
		data = Formatters_upvr.formatUserPresence(arg2);
	})
end