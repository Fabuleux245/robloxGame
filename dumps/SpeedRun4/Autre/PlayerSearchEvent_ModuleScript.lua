-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:32
-- Luau version 6, Types version 3
-- Time taken: 0.002840 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
if require(FriendsLanding.Parent.SharedFlags).FFlagUserSearchScreenBarAnalytics then
	return nil
end
local EnumScreens_upvr = require(FriendsLanding.EnumScreens)
local Contexts_upvr = require(FriendsLanding.dependencies).SocialLuaAnalytics.Analytics.Enums.Contexts
return function(arg1, arg2, arg3) -- Line 16
	--[[ Upvalues[2]:
		[1]: EnumScreens_upvr (readonly)
		[2]: Contexts_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7 = arg3
	if var7 then
		var7 = arg3.currentRoute
	end
	if arg3 then
		if arg3.source then
			-- KONSTANTWARNING: GOTO [40] #29
		end
	end
	if var7 == EnumScreens_upvr.AddFriends then
	elseif var7 == EnumScreens_upvr.FriendsLanding then
	elseif var7 == EnumScreens_upvr.SearchFriends then
	else
	end
	if not arg3 or not arg3.kwd then
	end
	arg1:playerSearch(arg2, nil, "Unknown", var7)
end