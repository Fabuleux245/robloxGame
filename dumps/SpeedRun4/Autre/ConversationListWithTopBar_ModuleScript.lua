-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:42
-- Luau version 6, Types version 3
-- Time taken: 0.004807 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local Roact_upvr = require(Parent.Roact)
local FFlagAppIaScrollAway_upvr = require(Parent.SharedFlags).FFlagAppIaScrollAway
local any_extend_result1 = Roact_upvr.PureComponent:extend("ConversationListWithTopBar")
local tbl_5 = {
	filterText = nil;
	isDebugEnabled = false;
	itemList = {};
	navigateToSquadLobby = function() -- Line 29, Named "navigateToSquadLobby"
	end;
	topBarHeight = 0;
}
local var8 = 64
tbl_5.entryHeight = var8
if FFlagAppIaScrollAway_upvr then
	var8 = 0
else
	var8 = nil
end
tbl_5.canvasTopPadding = var8
any_extend_result1.defaultProps = tbl_5
local searchFilterPredicate_upvr = require(AppChat.SocialLibraries).Utils.searchFilterPredicate
function any_extend_result1.getDerivedStateFromProps(arg1) -- Line 35
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: searchFilterPredicate_upvr (readonly)
	]]
	local module = {}
	local filterText_2_upvr = arg1.filterText
	module.filteredItemList = Cryo_upvr.List.filterMap(arg1.itemList, function(arg1_2) -- Line 40
		--[[ Upvalues[2]:
			[1]: searchFilterPredicate_upvr (copied, readonly)
			[2]: filterText_2_upvr (readonly)
		]]
		if searchFilterPredicate_upvr(filterText_2_upvr, arg1_2.title) then
			return arg1_2
		end
		return nil
	end)
	return module
end
local memoize_upvr = require(Parent.AppCommonLib).memoize
local RoactPaginator_upvr = require(AppChat.SocialLibraries).RoactPaginator
local ChatLandingTelemetryEvents_upvr = require(script:FindFirstAncestor("ChatLanding").ChatLandingTelemetryEvents)
function any_extend_result1.init(arg1) -- Line 52
	--[[ Upvalues[4]:
		[1]: memoize_upvr (readonly)
		[2]: RoactPaginator_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: ChatLandingTelemetryEvents_upvr (readonly)
	]]
	function arg1.showErrorToast(arg1_3) -- Line 53
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		local tbl_2 = {}
		local tbl_6 = {}
		tbl_6.toastTitle = arg1_3
		tbl_2.toastContent = tbl_6
		tbl_3.toastProps = tbl_2
		arg1.props.navigateToToast(tbl_3)
	end
	function arg1.reportAnalytics(arg1_4) -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.props.conversationsIsFetching and not arg1.props.oldestConversationIsFetched then
			arg1_4:userFetchedOlderConversations(arg1.props.localUserId)
		end
	end
	arg1.loadNext = memoize_upvr(function(arg1_5) -- Line 69
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: RoactPaginator_upvr (copied, readonly)
		]]
		return function(arg1_6) -- Line 70
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: RoactPaginator_upvr (copied, readonly)
				[3]: arg1_5 (readonly)
			]]
			if arg1.props[RoactPaginator_upvr.loadNext] then
				arg1.reportAnalytics(arg1_5)
				arg1.props[RoactPaginator_upvr.loadNext](arg1_6)
			end
		end
	end)
	local filterText_3 = arg1.props.filterText
	if filterText_3 then
		filterText_3 = arg1.props.filterText:match("%S")
	end
	arg1.isFiltered = filterText_3
	arg1.indexOfList = memoize_upvr(function(arg1_7, arg2) -- Line 81
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (copied, readonly)
		]]
		local table_find_result1 = table.find(Cryo_upvr.List.map(arg1_7, function(arg1_8) -- Line 83
			return arg1_8.id
		end), arg2)
		if table_find_result1 then
			return table_find_result1
		end
		return 0
	end)
	function arg1.fireClickEvent(arg1_9, arg2) -- Line 94
		--[[ Upvalues[2]:
			[1]: ChatLandingTelemetryEvents_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local id = arg1_9.id
		local tbl = {}
		local var30
		if arg1.isFiltered == nil then
			var30 = false
		else
			var30 = true
		end
		tbl.isFiltered = var30
		var30 = #arg1.state.filteredItemList
		tbl.conversationListCount = var30
		tbl.selectedConversationId = id
		var30 = arg1.indexOfList(arg1.state.filteredItemList, id)
		tbl.selectedIndex = var30
		var30 = arg1_9.hasUnreadMessages
		tbl.hasUnreadMessages = var30
		if arg1_9 then
			var30 = arg1_9.moderationType
			-- KONSTANTWARNING: GOTO [48] #32
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [47] 31. Error Block 22 start (CF ANALYSIS FAILED)
		var30 = nil
		tbl.selectedConversationModerationType = var30
		if arg1_9 then
			var30 = arg1_9.userPendingStatus
		else
			var30 = nil
		end
		tbl.selectedConversationUserPendingStatus = var30
		arg2.emit(ChatLandingTelemetryEvents_upvr.ConversationClicked, tbl)
		-- KONSTANTERROR: [47] 31. Error Block 22 end (CF ANALYSIS FAILED)
	end
	arg1.onActivated = memoize_upvr(function(arg1_10, arg2) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function(arg1_11) -- Line 108
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (readonly)
			]]
			arg1.props.navigateToConversation(arg1_11.id)
			arg1.fireClickEvent(arg1_11, arg2)
		end
	end)
end
local withAnalytics_upvr = require(AppChat.LegacyAnalytics.withAnalytics)
local withTelemetry_upvr = require(AppChat.Telemetry.withTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local withLocalization_upvr = require(Parent.Localization).withLocalization
local ConversationList_upvr = require(script.Parent.ConversationList)
function any_extend_result1.render(arg1) -- Line 116
	--[[ Upvalues[7]:
		[1]: withAnalytics_upvr (readonly)
		[2]: withTelemetry_upvr (readonly)
		[3]: ChatLandingTelemetryLayer_upvr (readonly)
		[4]: withLocalization_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ConversationList_upvr (readonly)
		[7]: FFlagAppIaScrollAway_upvr (readonly)
	]]
	return withAnalytics_upvr(function(arg1_12) -- Line 117
		--[[ Upvalues[7]:
			[1]: withTelemetry_upvr (copied, readonly)
			[2]: ChatLandingTelemetryLayer_upvr (copied, readonly)
			[3]: withLocalization_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: ConversationList_upvr (copied, readonly)
			[7]: FFlagAppIaScrollAway_upvr (copied, readonly)
		]]
		return withTelemetry_upvr(ChatLandingTelemetryLayer_upvr.Context)(function(arg1_13) -- Line 118
			--[[ Upvalues[6]:
				[1]: withLocalization_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: ConversationList_upvr (copied, readonly)
				[5]: arg1_12 (readonly)
				[6]: FFlagAppIaScrollAway_upvr (copied, readonly)
			]]
			return withLocalization_upvr({
				somethingWrongText = "Feature.Toast.NetworkingError.SomethingIsWrong";
			})(function(arg1_14) -- Line 121
				--[[ Upvalues[6]:
					[1]: arg1 (copied, readonly)
					[2]: Roact_upvr (copied, readonly)
					[3]: ConversationList_upvr (copied, readonly)
					[4]: arg1_12 (copied, readonly)
					[5]: arg1_13 (readonly)
					[6]: FFlagAppIaScrollAway_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local filterText = arg1.props.filterText
				if filterText then
					filterText = arg1.props.filterText:match("%S")
				end
				local tbl_4 = {
					Size = UDim2.fromScale(1, 1);
				}
				if not filterText or not arg1.state.filteredItemList then
				end
				tbl_4.itemList = arg1.props.itemList
				tbl_4.loadNext = arg1.loadNext(arg1_12)
				tbl_4.isDebugEnabled = arg1.props.isDebugEnabled
				tbl_4.filterText = arg1.props.filterText
				tbl_4.onActivated = arg1.onActivated(arg1_14, arg1_13)
				tbl_4.entryHeight = arg1.props.entryHeight
				tbl_4.navigateToSquadLobby = arg1.props.navigateToSquadLobby
				tbl_4.isInExperience = arg1.props.isInExperience
				tbl_4.shouldShowPhoneVerificationUpsell = arg1.props.shouldShowPhoneVerificationUpsell
				tbl_4.shouldShowUnfilteredAccessFtux = arg1.props.shouldShowUnfilteredAccessFtux
				tbl_4.shouldShowPartyUpsellFtux = arg1.props.shouldShowPartyUpsellFtux
				tbl_4.dismissUnfilteredThreadsFtux = arg1.props.dismissUnfilteredThreadsFtux
				tbl_4.showGroupsLink = arg1.props.showGroupsLink
				if FFlagAppIaScrollAway_upvr then
				else
				end
				tbl_4.canvasTopPadding = nil
				return Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
				}, {
					conversationList = Roact_upvr.createElement(ConversationList_upvr, tbl_4);
				})
			end)
		end)
	end)
end
function any_extend_result1.didMount(arg1) -- Line 153
	arg1.isMounted = true
end
function any_extend_result1.willUnmount(arg1) -- Line 157
	arg1.isMounted = false
end
return any_extend_result1