-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:24
-- Luau version 6, Types version 3
-- Time taken: 0.001980 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local CollectionViews = require(Parent.CollectionViews)
local Analytics = require(FriendsLanding.AddFriends.Analytics)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useUserTileCollectionGridItemMetricsProps_upvr = require(script.Parent.useUserTileCollectionGridItemMetricsProps)
local React_upvr = require(Parent.React)
local FFlagAddFriendsPageUserTileImpressions_upvr = require(Parent.SharedFlags).FFlagAddFriendsPageUserTileImpressions
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local AddFriendsSectionHeaderFrame_upvr = require(script.Parent.Parent.AddFriendsSectionHeaderFrame)
local AppCommonLib_upvr = require(Parent.AppCommonLib)
local useCollectionImpressionsSignal_upvr = CollectionViews.useCollectionImpressionsSignal
local useFireUserTileImpressionEvent_upvr = Analytics.useFireUserTileImpressionEvent
local Namespaces_upvr = Analytics.Namespaces
local CollectionGrid_upvr = CollectionViews.CollectionGrid
local Cryo_upvr = require(Parent.Cryo)
local ScreenSizeImpressionsTracker_upvr = require(Parent.Impressions).ScreenSizeImpressionsTracker
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function(arg1) -- Line 46, Named "FriendRecommendationsSection"
	--[[ Upvalues[14]:
		[1]: useLocalization_upvr (readonly)
		[2]: useUserTileCollectionGridItemMetricsProps_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: FFlagAddFriendsPageUserTileImpressions_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: AddFriendsSectionHeaderFrame_upvr (readonly)
		[7]: AppCommonLib_upvr (readonly)
		[8]: useCollectionImpressionsSignal_upvr (readonly)
		[9]: useFireUserTileImpressionEvent_upvr (readonly)
		[10]: Namespaces_upvr (readonly)
		[11]: CollectionGrid_upvr (readonly)
		[12]: Cryo_upvr (readonly)
		[13]: ScreenSizeImpressionsTracker_upvr (readonly)
		[14]: AppPage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	local renderAddFriendsTile_upvr = arg1.renderAddFriendsTile
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		peopleYouMayKnow = "Feature.Friends.Label.PYMK";
	})
	local var6_result1_upvr, var6_result2_upvr = useUserTileCollectionGridItemMetricsProps_upvr()
	local function _(arg1_2, arg2) -- Line 56
		--[[ Upvalues[4]:
			[1]: renderAddFriendsTile_upvr (readonly)
			[2]: var6_result2_upvr (readonly)
			[3]: var6_result1_upvr (readonly)
			[4]: FFlagAddFriendsPageUserTileImpressions_upvr (copied, readonly)
		]]
		local var25
		if FFlagAddFriendsPageUserTileImpressions_upvr then
			var25 = "ADDFRIENDSPAGE_RECOMMENDATIONS_TILE_IMPRESSIONS"
		else
			var25 = nil
		end
		return renderAddFriendsTile_upvr(arg1_2, var6_result2_upvr.itemWidth, var6_result1_upvr.getItemHeight(var6_result2_upvr.itemWidth), arg2, nil, var25), tostring(arg2)..' '
	end
	local function _() -- Line 69
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: AddFriendsSectionHeaderFrame_upvr (copied, readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
		]]
		return React_upvr.createElement(AddFriendsSectionHeaderFrame_upvr, {
			layoutOrder = 1;
			title = useLocalization_upvr_result1_upvr.peopleYouMayKnow;
			iconVisible = false;
		})
	end
	if FFlagAddFriendsPageUserTileImpressions_upvr then
	else
	end
	if FFlagAddFriendsPageUserTileImpressions_upvr then
		-- KONSTANTWARNING: GOTO [63] #52
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 51. Error Block 40 start (CF ANALYSIS FAILED)
	if FFlagAddFriendsPageUserTileImpressions_upvr then
		-- KONSTANTWARNING: GOTO [72] #60
	end
	-- KONSTANTERROR: [62] 51. Error Block 40 end (CF ANALYSIS FAILED)
end