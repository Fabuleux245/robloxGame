-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:24
-- Luau version 6, Types version 3
-- Time taken: 0.000433 seconds

local filterStates_upvr = require(script:FindFirstAncestor("FriendsLanding").Friends.filterStates)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: filterStates_upvr (readonly)
	]]
	return {{
		text = arg1.all;
		id = filterStates_upvr.All;
	}, {
		text = arg1.online;
		id = filterStates_upvr.Online;
	}, {
		text = arg1.inExperience;
		id = filterStates_upvr.InExperience;
	}}
end