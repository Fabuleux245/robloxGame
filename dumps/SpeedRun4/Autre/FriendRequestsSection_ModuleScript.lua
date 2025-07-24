-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:24
-- Luau version 6, Types version 3
-- Time taken: 0.002857 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local Responsive_upvr = require(Parent.Responsive)
local RoactUtils = require(Parent.RoactUtils)
local CollectionViews = require(Parent.CollectionViews)
local UIBlox = require(Parent.UIBlox)
local Parent_2 = script.Parent.Parent
local Analytics = require(FriendsLanding.AddFriends.Analytics)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local AddFriendsSelector_upvr = require(FriendsLanding.AddFriends.Redux.AddFriendsSelector)
local useUserTileCollectionGridItemMetricsProps_upvr = require(script.Parent.useUserTileCollectionGridItemMetricsProps)
local useShowMore_upvr = require(script.Parent.useShowMore)
local React_upvr = require(Parent.React)
local FFlagAddFriendsPageUserTileImpressions_upvr = require(Parent.SharedFlags).FFlagAddFriendsPageUserTileImpressions
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local AppCommonLib_upvr = require(Parent.AppCommonLib)
local useCollectionImpressionsSignal_upvr = CollectionViews.useCollectionImpressionsSignal
local useFireUserTileImpressionEvent_upvr = Analytics.useFireUserTileImpressionEvent
local Namespaces_upvr = Analytics.Namespaces
local AddFriendsSectionHeaderFrame_upvr = require(Parent_2.AddFriendsSectionHeaderFrame)
local Images_upvr = UIBlox.App.ImageSet.Images
local IgnoreAllFriendsRequestsMenu_upvr = require(Parent_2.IgnoreAllFriendsRequestsMenu)
local FFlagAddFriendsOSAEducationSubtitle_upvr = require(Parent.SharedFlags).FFlagAddFriendsOSAEducationSubtitle
local FriendingOSAEducationSubtitle_upvr = require(Parent_2.FriendingOSAEducationSubtitle)
local CollectionGrid_upvr = CollectionViews.CollectionGrid
local Cryo_upvr = require(Parent.Cryo)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local ScreenSizeImpressionsTracker_upvr = require(Parent.Impressions).ScreenSizeImpressionsTracker
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function(arg1) -- Line 72, Named "FriendRequestsSection"
	--[[ Upvalues[31]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useSelectionCursor_upvr (readonly)
		[3]: CursorKind_upvr (readonly)
		[4]: usePreferredInput_upvr (readonly)
		[5]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[6]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[7]: useAppPolicy_upvr (readonly)
		[8]: useLocalization_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: AddFriendsSelector_upvr (readonly)
		[11]: useUserTileCollectionGridItemMetricsProps_upvr (readonly)
		[12]: useShowMore_upvr (readonly)
		[13]: React_upvr (readonly)
		[14]: FFlagAddFriendsPageUserTileImpressions_upvr (readonly)
		[15]: dependencyArray_upvr (readonly)
		[16]: Responsive_upvr (readonly)
		[17]: AppCommonLib_upvr (readonly)
		[18]: useCollectionImpressionsSignal_upvr (readonly)
		[19]: useFireUserTileImpressionEvent_upvr (readonly)
		[20]: Namespaces_upvr (readonly)
		[21]: AddFriendsSectionHeaderFrame_upvr (readonly)
		[22]: Images_upvr (readonly)
		[23]: IgnoreAllFriendsRequestsMenu_upvr (readonly)
		[24]: FFlagAddFriendsOSAEducationSubtitle_upvr (readonly)
		[25]: FriendingOSAEducationSubtitle_upvr (readonly)
		[26]: CollectionGrid_upvr (readonly)
		[27]: Cryo_upvr (readonly)
		[28]: Button_upvr (readonly)
		[29]: ButtonType_upvr (readonly)
		[30]: ScreenSizeImpressionsTracker_upvr (readonly)
		[31]: AppPage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 122 start (CF ANALYSIS FAILED)
	local var39
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var39 = useAppPolicy_upvr
		var39 = var39(function(arg1_2) -- Line 85
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var39 = nil
	end
	local tbl = {}
	if FFlagFriendsRenameSocgraph_upvr and var39 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [40] #34
	end
	-- KONSTANTERROR: [0] 1. Error Block 122 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 33. Error Block 138 start (CF ANALYSIS FAILED)
	tbl.friendRequestsText = "Feature.AddFriends.Label.FriendRequests"
	tbl.showMoreButtonText = "Feature.Avatar.Action.ShowMore"
	local var19_result1_upvr, var19_result2_upvr = useUserTileCollectionGridItemMetricsProps_upvr()
	local _, useShowMore_upvr_result2, var20_result3_upvr = useShowMore_upvr(arg1.initialRequestsRows, arg1.requestsPageSize, var19_result1_upvr.numColumns, arg1.handleLoadMoreRequests)
	local renderAddFriendsTile_upvr = arg1.renderAddFriendsTile
	local function _(arg1_4, arg2) -- Line 108
		--[[ Upvalues[5]:
			[1]: renderAddFriendsTile_upvr (readonly)
			[2]: var19_result2_upvr (readonly)
			[3]: var19_result1_upvr (readonly)
			[4]: var20_result3_upvr (readonly)
			[5]: FFlagAddFriendsPageUserTileImpressions_upvr (copied, readonly)
		]]
		local var50
		if FFlagAddFriendsPageUserTileImpressions_upvr then
			var50 = "ADDFRIENDSPAGE_REQUESTS_TILE_IMPRESSIONS"
		else
			var50 = nil
		end
		return renderAddFriendsTile_upvr(arg1_4, var19_result2_upvr.itemWidth, var19_result1_upvr.getItemHeight(var19_result2_upvr.itemWidth), arg2, var20_result3_upvr, var50), tostring(arg2)..' '
	end
	if 0 >= useSelector_upvr(function(arg1_3) -- Line 98
		--[[ Upvalues[1]:
			[1]: AddFriendsSelector_upvr (copied, readonly)
		]]
		return AddFriendsSelector_upvr(arg1_3, "Friends.requests.receivedCount")
	end) then
		-- KONSTANTWARNING: GOTO [80] #69
	end
	-- KONSTANTERROR: [39] 33. Error Block 138 end (CF ANALYSIS FAILED)
end