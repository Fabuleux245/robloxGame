-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:14
-- Luau version 6, Types version 3
-- Time taken: 0.000780 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getSessionIdByKey_upvr = require(FriendsLanding.AddFriends.Redux.RoduxAnalytics).Selectors.getSessionIdByKey
local RECOMMENDATION_SESSION_ID_KEY_upvr = require(FriendsLanding.Common.Constants).RECOMMENDATION_SESSION_ID_KEY
local React_upvr = require(Parent.React)
local AnalyticsSetup_upvr = require(script.Parent.AnalyticsSetup)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function() -- Line 13
	--[[ Upvalues[6]:
		[1]: useSelector_upvr (readonly)
		[2]: getSessionIdByKey_upvr (readonly)
		[3]: RECOMMENDATION_SESSION_ID_KEY_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: AnalyticsSetup_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
	]]
	local var4_result1_upvr = useSelector_upvr(function(arg1) -- Line 14
		--[[ Upvalues[2]:
			[1]: getSessionIdByKey_upvr (copied, readonly)
			[2]: RECOMMENDATION_SESSION_ID_KEY_upvr (copied, readonly)
		]]
		return getSessionIdByKey_upvr(arg1)(RECOMMENDATION_SESSION_ID_KEY_upvr)
	end)
	return React_upvr.useMemo(function() -- Line 18
		--[[ Upvalues[2]:
			[1]: AnalyticsSetup_upvr (copied, readonly)
			[2]: var4_result1_upvr (readonly)
		]]
		return AnalyticsSetup_upvr({
			infoForAllEvents = {
				recommendationSessionId = var4_result1_upvr;
			};
		}).fireAnalyticsEvent
	end, dependencyArray_upvr(var4_result1_upvr))
end