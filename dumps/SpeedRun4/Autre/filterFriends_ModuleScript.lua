-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:21
-- Luau version 6, Types version 3
-- Time taken: 0.001299 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local t_upvr = dependencies.t
local llama_upvr = dependencies.llama
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local filterToPresence_upvr = require(FriendsLanding.Friends.filterToPresence)
local getCorrectUserPresence_upvr = require(FriendsLanding.Friends.getCorrectUserPresence)
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[6]:
		[1]: t_upvr (readonly)
		[2]: llama_upvr (readonly)
		[3]: filterStates_upvr (readonly)
		[4]: filterToPresence_upvr (readonly)
		[5]: getCorrectUserPresence_upvr (readonly)
		[6]: PresenceType_upvr (readonly)
	]]
	assert(t_upvr.table(arg1), "friends should be a table")
	assert(t_upvr.string(arg2), "filter should be a string")
	return llama_upvr.List.filter(arg1, function(arg1_2) -- Line 14
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: filterStates_upvr (copied, readonly)
			[3]: filterToPresence_upvr (copied, readonly)
			[4]: getCorrectUserPresence_upvr (copied, readonly)
			[5]: PresenceType_upvr (copied, readonly)
			[6]: llama_upvr (copied, readonly)
		]]
		if arg2 == filterStates_upvr.Inactive then
			return arg1_2.isInactiveFriend
		end
		local getCorrectUserPresence_upvr_result1 = getCorrectUserPresence_upvr(arg1_2)
		if not getCorrectUserPresence_upvr_result1 then
			getCorrectUserPresence_upvr_result1 = PresenceType_upvr.Offline
		end
		return llama_upvr.List.includes(filterToPresence_upvr(arg2), getCorrectUserPresence_upvr_result1)
	end)
end