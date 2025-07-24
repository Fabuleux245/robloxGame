-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:44
-- Luau version 6, Types version 3
-- Time taken: 0.000838 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local getDeepValue_upvr = require(FriendsLanding.dependencies).SocialLibraries.Dictionary.getDeepValue
local RODUX_KEY_upvr = require(FriendsLanding.AddFriends.Redux.RODUX_KEY)
return function(arg1, arg2, ...) -- Line 10
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: RODUX_KEY_upvr (readonly)
	]]
	local module = {}
	local var6 = ...
	module[1] = var6
	if arg2 then
		var6 = "%s."..arg2
	else
		var6 = "%s"
	end
	return getDeepValue_upvr(arg1, string.format(var6, RODUX_KEY_upvr, unpack(module)))
end