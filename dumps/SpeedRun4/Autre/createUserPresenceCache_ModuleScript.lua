-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:25
-- Luau version 6, Types version 3
-- Time taken: 0.000815 seconds

local ApolloPresence = script:FindFirstAncestor("ApolloPresence")
local Parent = ApolloPresence.Parent
local Cryo_upvr = require(Parent.Cryo)
local Formatters_upvr = require(ApolloPresence.Formatters)
local fragments_upvr = require(Parent.ApolloLocalState).fragments
return function(arg1, arg2) -- Line 11, Named "createUserPresenceCache"
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: Formatters_upvr (readonly)
		[3]: fragments_upvr (readonly)
	]]
	return arg1.cache:writeFragment({
		data = Cryo_upvr.Dictionary.join({
			__typename = "UserPresence";
		}, Formatters_upvr.formatUserPresence(arg2));
		fragment = fragments_upvr.userPresenceAllFields;
	})
end