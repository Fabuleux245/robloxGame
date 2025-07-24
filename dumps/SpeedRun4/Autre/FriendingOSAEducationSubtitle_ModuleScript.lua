-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:34
-- Luau version 6, Types version 3
-- Time taken: 0.003220 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local AddFriends = FriendsLanding.AddFriends
local FriendingOSAEducationImpressionCache_upvr = require(script.Parent.FriendingOSAEducationImpressionCache)
local function isHiddenOnInit_upvr() -- Line 24, Named "isHiddenOnInit"
	--[[ Upvalues[1]:
		[1]: FriendingOSAEducationImpressionCache_upvr (readonly)
	]]
	local var5 = FriendingOSAEducationImpressionCache_upvr
	if var5.getValue() == 0 then
		var5 = false
	else
		var5 = true
	end
	return var5
end
local React_upvr = require(Parent.React)
local useFireAnalyticsEvent_upvr = require(AddFriends.Analytics.useFireAnalyticsEvent)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local EventNames_upvr = require(AddFriends.Analytics.EventNames)
local Text_upvr = require(Parent.Foundation).Text
return function(arg1) -- Line 29, Named "FriendingOSAEducationSubtitle"
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: isHiddenOnInit_upvr (readonly)
		[3]: useFireAnalyticsEvent_upvr (readonly)
		[4]: useAppPolicy_upvr (readonly)
		[5]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[6]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: FriendingOSAEducationImpressionCache_upvr (readonly)
		[10]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useFireAnalyticsEvent_upvr_result1_upvr = useFireAnalyticsEvent_upvr()
	local var16
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var16 = useAppPolicy_upvr
		var16 = var16(function(arg1_3) -- Line 41
			return arg1_3.getRenameFriendsToConnections()
		end)
	else
		var16 = nil
	end
	local tbl = {}
	if var16 and FFlagFriendsRenameSocgraph_upvr or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
	else
	end
	tbl.educationText = "Feature.Friends.Subtitle.FriendsEducation"
	tbl = useAppPolicy_upvr(function(arg1_2) -- Line 36
		return arg1_2.getRequiresOSAFriendingEducation()
	end)
	local var19_upvr = tbl
	if var19_upvr then
		var19_upvr = not React_upvr.useState(isHiddenOnInit_upvr)
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 55
		--[[ Upvalues[3]:
			[1]: useFireAnalyticsEvent_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: FriendingOSAEducationImpressionCache_upvr (copied, readonly)
		]]
		useFireAnalyticsEvent_upvr_result1_upvr(EventNames_upvr.FriendingOSAEducationSubtitleImpression)
		FriendingOSAEducationImpressionCache_upvr.incrementValue()
	end, {useFireAnalyticsEvent_upvr_result1_upvr})
	React_upvr.useEffect(function() -- Line 61
		--[[ Upvalues[2]:
			[1]: var19_upvr (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		if var19_upvr then
			any_useCallback_result1_upvr()
		end
	end, {var19_upvr})
	if var19_upvr then
		return React_upvr.createElement(Text_upvr, {
			tag = "auto-y grow size-full-0 text-align-x-left text-wrap";
			Text = useLocalization_upvr(tbl).educationText;
			LayoutOrder = arg1.layoutOrder;
		})
	end
	return nil
end