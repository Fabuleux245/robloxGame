-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:18
-- Luau version 6, Types version 3
-- Time taken: 0.000392 seconds

local Parent = script:FindFirstAncestor("UserProfiles").Parent
local useUserProfilesFetch_upvr = require(script.Parent.Hooks).useUserProfilesFetch
return function(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: useUserProfilesFetch_upvr (readonly)
	]]
	return arg1.renderComponent(useUserProfilesFetch_upvr({
		userIds = arg1.userIds;
		query = arg1.query;
	}))
end