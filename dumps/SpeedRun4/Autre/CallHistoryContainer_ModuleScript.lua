-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:07
-- Luau version 6, Types version 3
-- Time taken: 0.014992 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local LocalPlayer = game:GetService("Players").LocalPlayer
local var6_upvr
local function INLINED() -- Internal function, doesn't exist in bytecode
	var6_upvr = LocalPlayer.UserId
	return var6_upvr
end
if not LocalPlayer or not INLINED() then
	var6_upvr = 0
end
local useApolloClient_upvr = require(CorePackages.Packages.ApolloClient).useApolloClient
local useAnalytics_upvr = require(ContactList.Analytics.useAnalytics)
local useDispatch_upvr = dependencies.Hooks.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = dependencies.Hooks.useLocalization
local React_upvr = require(CorePackages.Packages.React)
local RetrievalStatus_upvr = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local useSelector_upvr = dependencies.Hooks.useSelector
local NetworkingCall_upvr = dependencies.NetworkingCall
local UserProfiles_upvr = require(CorePackages.Workspace.Packages.UserProfiles)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local EventNamesEnum_upvr = require(ContactList.Analytics.EventNamesEnum)
local Pages_upvr = require(ContactList.Enums.Pages)
local SetCurrentPage_upvr = require(ContactList.Actions.SetCurrentPage)
local NoItemView_upvr = require(ContactList.Components.ContactListCommon.NoItemView)
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local Constants_upvr = require(ContactList.Components.ContactListCommon.Constants)
local BlockingUtility_upvr = require(CorePackages.Workspace.Packages.BlockingUtility)
local CallHistoryItem_upvr = require(ContactList.Components.CallHistory.CallHistoryItem)
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
local Roact_upvr = require(CorePackages.Packages.Roact)
local ExternalEventConnection_upvr = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local UserInputService_upvr = game:GetService("UserInputService")
return function(arg1) -- Line 51, Named "CallHistoryContainer"
	--[[ Upvalues[24]:
		[1]: useApolloClient_upvr (readonly)
		[2]: useAnalytics_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: RetrievalStatus_upvr (readonly)
		[8]: useSelector_upvr (readonly)
		[9]: NetworkingCall_upvr (readonly)
		[10]: UserProfiles_upvr (readonly)
		[11]: Cryo_upvr (readonly)
		[12]: EventNamesEnum_upvr (readonly)
		[13]: Pages_upvr (readonly)
		[14]: SetCurrentPage_upvr (readonly)
		[15]: NoItemView_upvr (readonly)
		[16]: dependencyArray_upvr (readonly)
		[17]: Constants_upvr (readonly)
		[18]: var6_upvr (readonly)
		[19]: BlockingUtility_upvr (readonly)
		[20]: CallHistoryItem_upvr (readonly)
		[21]: LoadingSpinner_upvr (readonly)
		[22]: Roact_upvr (readonly)
		[23]: ExternalEventConnection_upvr (readonly)
		[24]: UserInputService_upvr (readonly)
	]]
	local var9_result1_upvr = useDispatch_upvr()
	local Theme_2 = useStyle_upvr().Theme
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		genericErrorLabel = "Feature.Call.Error.Description.Generic";
		noCallsLabel = "Feature.Call.Prompt.FirstCall";
	})
	local any_useRef_result1_upvr_6 = React_upvr.useRef(true)
	local any_useRef_result1_upvr_5 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(0)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_2 = React_upvr.useState(RetrievalStatus_upvr.Fetching)
	local any_useState_result1, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_7 = React_upvr.useState({})
	local any_useState_result1_2_upvr, any_useState_result2_upvr = React_upvr.useState("")
	local useSelector_upvr_result1_upvr = useSelector_upvr(React_upvr.useCallback(function(arg1_10) -- Line 77
		return arg1_10.Navigation.currentPage
	end, {}))
	local useApolloClient_upvr_result1_upvr = useApolloClient_upvr()
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function(arg1_11, arg2) -- Line 82
		--[[ Upvalues[10]:
			[1]: any_useRef_result1_upvr_6 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: RetrievalStatus_upvr (copied, readonly)
			[4]: var9_result1_upvr (readonly)
			[5]: NetworkingCall_upvr (copied, readonly)
			[6]: useApolloClient_upvr_result1_upvr (readonly)
			[7]: UserProfiles_upvr (copied, readonly)
			[8]: Cryo_upvr (copied, readonly)
			[9]: any_useState_result2_upvr_7 (readonly)
			[10]: any_useState_result2_upvr (readonly)
		]]
		any_useRef_result1_upvr_6.current = true
		local var162 = any_useState_result2_upvr_2
		var162(RetrievalStatus_upvr.Fetching)
		if arg2 == "" then
			var162 = 16
		else
			var162 = 8
		end
		local tbl_21 = {}
		tbl_21.cursor = arg2
		tbl_21.limit = var162
		tbl_21.universeId = game.GameId
		var9_result1_upvr(NetworkingCall_upvr.GetCallHistory.API(tbl_21)):andThen(function(arg1_12) -- Line 87
			--[[ Upvalues[8]:
				[1]: arg1_11 (readonly)
				[2]: useApolloClient_upvr_result1_upvr (copied, readonly)
				[3]: UserProfiles_upvr (copied, readonly)
				[4]: Cryo_upvr (copied, readonly)
				[5]: any_useState_result2_upvr_7 (copied, readonly)
				[6]: any_useState_result2_upvr (copied, readonly)
				[7]: any_useState_result2_upvr_2 (copied, readonly)
				[8]: RetrievalStatus_upvr (copied, readonly)
			]]
			local tbl_15_upvr = {}
			for _, v in ipairs(arg1_11) do
				table.insert(tbl_15_upvr, v)
			end
			for _, v_2 in ipairs(arg1_12.responseBody.callRecords) do
				table.insert(tbl_15_upvr, v_2)
			end
			for _, v_3 in ipairs(tbl_15_upvr) do
				for _, v_4 in ipairs(v_3.participants) do
					({})[tostring(v_4.userId)] = true
					local var194
				end
			end
			useApolloClient_upvr_result1_upvr:query({
				query = UserProfiles_upvr.Queries.userProfilesCombinedNameAndUsernameByUserIds;
				variables = {
					userIds = Cryo_upvr.Dictionary.keys(var194);
				};
			}):andThen(function() -- Line 108
				--[[ Upvalues[6]:
					[1]: any_useState_result2_upvr_7 (copied, readonly)
					[2]: tbl_15_upvr (readonly)
					[3]: any_useState_result2_upvr (copied, readonly)
					[4]: arg1_12 (readonly)
					[5]: any_useState_result2_upvr_2 (copied, readonly)
					[6]: RetrievalStatus_upvr (copied, readonly)
				]]
				any_useState_result2_upvr_7(tbl_15_upvr)
				any_useState_result2_upvr(arg1_12.responseBody.nextPageCursor)
				any_useState_result2_upvr_2(RetrievalStatus_upvr.Done)
			end):catch(function() -- Line 114
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
					[2]: RetrievalStatus_upvr (copied, readonly)
				]]
				any_useState_result2_upvr_2(RetrievalStatus_upvr.Failed)
			end)
		end, function() -- Line 118
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
				[2]: RetrievalStatus_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_2(RetrievalStatus_upvr.Failed)
		end)
	end, {useSelector_upvr(function(arg1_9) -- Line 73
		return arg1_9.LastRemovedFriend.lastRemovedFriendId
	end)})
	React_upvr.useEffect(function() -- Line 124
		--[[ Upvalues[3]:
			[1]: any_useCallback_result1_upvr_4 (readonly)
			[2]: any_useState_result2_upvr_7 (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		any_useCallback_result1_upvr_4({}, "")
		return function() -- Line 127
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_7 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_7({})
			any_useState_result2_upvr("")
		end
	end, {any_useCallback_result1_upvr_4})
	local useAnalytics_upvr_result1_upvr_2 = useAnalytics_upvr()
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function() -- Line 133
		--[[ Upvalues[6]:
			[1]: useAnalytics_upvr_result1_upvr_2 (readonly)
			[2]: EventNamesEnum_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: Pages_upvr (copied, readonly)
			[5]: var9_result1_upvr (readonly)
			[6]: SetCurrentPage_upvr (copied, readonly)
		]]
		useAnalytics_upvr_result1_upvr_2.fireEvent(EventNamesEnum_upvr.PhoneBookNavigate, {
			eventTimestampMs = os.time() * 1000;
			startingPage = useSelector_upvr_result1_upvr;
			destinationPage = Pages_upvr.FriendList;
		})
		var9_result1_upvr(SetCurrentPage_upvr(Pages_upvr.FriendList))
	end, {useSelector_upvr_result1_upvr})
	React_upvr.useEffect(function() -- Line 142
		--[[ Upvalues[3]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: RetrievalStatus_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_6 (readonly)
		]]
		if any_useState_result1_4_upvr ~= RetrievalStatus_upvr.Fetching then
			any_useRef_result1_upvr_6.current = false
		end
	end, {any_useState_result1_4_upvr})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 149
		--[[ Upvalues[9]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: RetrievalStatus_upvr (copied, readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: NoItemView_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr_4 (readonly)
			[7]: any_useState_result1_3_upvr (readonly)
			[8]: any_useState_result1_2_upvr (readonly)
			[9]: any_useCallback_result1_upvr_2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local var213
		local onFailedButtonActivated
		if any_useState_result1_4_upvr == RetrievalStatus_upvr.Failed then
			var213 = useLocalization_upvr_result1_upvr.genericErrorLabel
		else
			var213 = useLocalization_upvr_result1_upvr.noCallsLabel
		end
		local module_5 = {}
		if any_useState_result1_4_upvr == RetrievalStatus_upvr.Failed then
			onFailedButtonActivated = false
		else
			onFailedButtonActivated = true
		end
		module_5.isImageEnabled = onFailedButtonActivated
		onFailedButtonActivated = "icons/graphic/findfriends_xlarge"
		module_5.imageName = onFailedButtonActivated
		if any_useState_result1_4_upvr ~= RetrievalStatus_upvr.Failed then
			onFailedButtonActivated = false
			-- KONSTANTWARNING: GOTO [40] #30
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [39] 29. Error Block 28 start (CF ANALYSIS FAILED)
		onFailedButtonActivated = true
		module_5.isFailedButtonEnabled = onFailedButtonActivated
		function onFailedButtonActivated() -- Line 161
			--[[ Upvalues[3]:
				[1]: any_useCallback_result1_upvr_4 (copied, readonly)
				[2]: any_useState_result1_3_upvr (copied, readonly)
				[3]: any_useState_result1_2_upvr (copied, readonly)
			]]
			any_useCallback_result1_upvr_4(any_useState_result1_3_upvr, any_useState_result1_2_upvr)
		end
		module_5.onFailedButtonActivated = onFailedButtonActivated
		if any_useState_result1_4_upvr ~= RetrievalStatus_upvr.Done then
			onFailedButtonActivated = false
		else
			onFailedButtonActivated = true
		end
		module_5.isCallButtonEnabled = onFailedButtonActivated
		onFailedButtonActivated = any_useCallback_result1_upvr_2
		module_5.onCallButtonActivated = onFailedButtonActivated
		module_5.messageText = var213
		do
			return React_upvr.createElement(NoItemView_upvr, module_5)
		end
		-- KONSTANTERROR: [39] 29. Error Block 28 end (CF ANALYSIS FAILED)
	end, dependencyArray_upvr(any_useState_result1_3_upvr, any_useCallback_result1_upvr_4, useLocalization_upvr_result1_upvr.genericErrorLabel, useLocalization_upvr_result1_upvr.noCallsLabel, any_useCallback_result1_upvr_2, any_useState_result1_2_upvr, any_useState_result1_4_upvr))
	local any_useMemo_result1_upvr_3 = React_upvr.useMemo(function() -- Line 203
		--[[ Upvalues[12]:
			[1]: React_upvr (copied, readonly)
			[2]: any_useState_result1_3_upvr (readonly)
			[3]: var6_upvr (copied, readonly)
			[4]: BlockingUtility_upvr (copied, readonly)
			[5]: CallHistoryItem_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: any_useState_result1_2_upvr (readonly)
			[8]: any_useState_result1_4_upvr (readonly)
			[9]: RetrievalStatus_upvr (copied, readonly)
			[10]: any_useMemo_result1_upvr (readonly)
			[11]: Constants_upvr (copied, readonly)
			[12]: LoadingSpinner_upvr (copied, readonly)
		]]
		local module_8 = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		local tbl_9 = {}
		for _, v_5 in ipairs(any_useState_result1_3_upvr) do
			local userId = v_5.participants[1].userId
			if userId == var6_upvr then
				userId = v_5.participants[2].userId
			end
			if not BlockingUtility_upvr:IsPlayerBlockedByUserId(userId) then
				table.insert(tbl_9, v_5)
			end
		end
		for i_6, v_6 in ipairs(tbl_9) do
			local tbl_13 = {
				callRecord = v_6;
			}
			local var240 = var6_upvr
			tbl_13.localUserId = var240
			if i_6 == #tbl_9 then
				var240 = false
			else
				var240 = true
			end
			tbl_13.showDivider = var240
			tbl_13.dismissCallback = arg1.dismissCallback
			tbl_13.layoutOrder = i_6
			module_8[i_6] = React_upvr.createElement(CallHistoryItem_upvr, tbl_13)
		end
		if any_useState_result1_2_upvr ~= "" then
			local var241 = #module_8 + 1
			i_6 = RetrievalStatus_upvr
			if any_useState_result1_4_upvr == i_6.Failed then
				module_8[var241] = any_useMemo_result1_upvr
				return module_8
			end
			i_6 = {}
			v_6 = UDim2.new(1, 0, 0, Constants_upvr.ITEM_HEIGHT)
			i_6.Size = v_6
			v_6 = 1
			i_6.BackgroundTransparency = v_6
			i_6.LayoutOrder = var241
			v_6 = {}
			v_6.LoadingSpinner = React_upvr.createElement(LoadingSpinner_upvr, {
				size = UDim2.fromOffset(48, 48);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			})
			module_8[var241] = React_upvr.createElement("Frame", i_6, v_6)
		end
		return module_8
	end, dependencyArray_upvr(any_useState_result1_3_upvr, any_useState_result1_2_upvr, any_useMemo_result1_upvr, any_useState_result1_4_upvr))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_15) -- Line 256
		--[[ Upvalues[6]:
			[1]: any_useRef_result1_upvr_6 (readonly)
			[2]: any_useState_result1_4_upvr (readonly)
			[3]: RetrievalStatus_upvr (copied, readonly)
			[4]: any_useState_result1_2_upvr (readonly)
			[5]: any_useCallback_result1_upvr_4 (readonly)
			[6]: any_useState_result1_3_upvr (readonly)
		]]
		if not any_useRef_result1_upvr_6.current and any_useState_result1_4_upvr ~= RetrievalStatus_upvr.Failed and any_useState_result1_2_upvr ~= "" and arg1_15.AbsoluteCanvasSize.Y - arg1_15.AbsoluteSize.Y - 50 <= arg1_15.CanvasPosition.Y then
			any_useCallback_result1_upvr_4(any_useState_result1_3_upvr, any_useState_result1_2_upvr)
		end
	end, dependencyArray_upvr(any_useState_result1_3_upvr, any_useCallback_result1_upvr_4, any_useState_result1_2_upvr, any_useState_result1_4_upvr))
	React_upvr.useEffect(function() -- Line 267
		--[[ Upvalues[4]:
			[1]: any_useMemo_result1_upvr_3 (readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_5 (readonly)
			[4]: any_useCallback_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr_5.current and (#any_useMemo_result1_upvr_3 - 1) * Constants_upvr.ITEM_HEIGHT <= any_useRef_result1_upvr_5.current.AbsoluteSize.Y then
			any_useCallback_result1_upvr(any_useRef_result1_upvr_5.current)
		end
	end, dependencyArray_upvr(any_useMemo_result1_upvr_3, any_useCallback_result1_upvr))
	if #any_useState_result1_3_upvr == 0 and any_useState_result1_4_upvr == RetrievalStatus_upvr.Fetching then
		return React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants_upvr.ITEM_HEIGHT);
			BackgroundTransparency = 1;
		}, {
			LoadingSpinner = React_upvr.createElement(LoadingSpinner_upvr, {
				size = UDim2.fromOffset(48, 48);
				position = UDim2.fromScale(0.5, 0.5);
				anchorPoint = Vector2.new(0.5, 0.5);
			});
		})
	end
	if #any_useState_result1_3_upvr == 0 then
		return any_useMemo_result1_upvr
	end
	local module = {}
	local tbl_10 = {
		Size = UDim2.fromScale(1, 1);
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = Theme_2.BackgroundDefault.Color;
		BackgroundTransparency = Theme_2.BackgroundDefault.Transparency;
		BorderSizePixel = 0;
		CanvasSize = UDim2.new();
		ElasticBehavior = Enum.ElasticBehavior.Never;
		ScrollingDirection = Enum.ScrollingDirection.Y;
	}
	local var252 = not any_useState_result1
	if var252 then
		var252 = arg1.scrollingEnabled
	end
	tbl_10.ScrollingEnabled = var252
	tbl_10.ScrollBarImageColor3 = Theme_2.UIEmphasis.Color
	tbl_10.ScrollBarImageTransparency = Theme_2.UIEmphasis.Transparency
	tbl_10.ScrollBarThickness = 4
	tbl_10.ref = any_useRef_result1_upvr_5
	tbl_10[React_upvr.Change.CanvasPosition] = any_useCallback_result1_upvr
	module[1] = React_upvr.createElement("ScrollingFrame", tbl_10, any_useMemo_result1_upvr_3)
	local isSmallScreen = arg1.isSmallScreen
	if isSmallScreen then
		isSmallScreen = arg1.scrollingEnabled
		if isSmallScreen then
			isSmallScreen = React_upvr.createElement
			isSmallScreen = isSmallScreen(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.TouchStarted;
				callback = React_upvr.useCallback(function(arg1_13) -- Line 180
					--[[ Upvalues[1]:
						[1]: any_useRef_result1_upvr_4 (readonly)
					]]
					any_useRef_result1_upvr_4.current = arg1_13.Position.Y
				end, {});
			})
		end
	end
	module.TouchStartedUserInputConnection = isSmallScreen
	isSmallScreen = arg1.isSmallScreen
	local var255 = isSmallScreen
	if var255 then
		var255 = arg1.scrollingEnabled
		if var255 then
			var255 = React_upvr.createElement
			var255 = var255(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.TouchMoved;
				callback = React_upvr.useCallback(function(arg1_14) -- Line 184
					--[[ Upvalues[4]:
						[1]: any_useRef_result1_upvr_4 (readonly)
						[2]: Constants_upvr (copied, readonly)
						[3]: any_useRef_result1_upvr_5 (readonly)
						[4]: any_useState_result2_upvr_3 (readonly)
					]]
					if Constants_upvr.TOUCH_SLOP < arg1_14.Position.Y - any_useRef_result1_upvr_4.current and any_useRef_result1_upvr_5.current and any_useRef_result1_upvr_5.current.CanvasPosition.Y == 0 then
						any_useState_result2_upvr_3(true)
					end
				end, {});
			})
		end
	end
	module.TouchMovedUserInputConnection = var255
	var255 = arg1.isSmallScreen
	local var257 = var255
	if var257 then
		var257 = arg1.scrollingEnabled
		if var257 then
			var257 = React_upvr.createElement
			var257 = var257(ExternalEventConnection_upvr, {
				event = UserInputService_upvr.TouchEnded;
				callback = React_upvr.useCallback(function() -- Line 199
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr_3 (readonly)
					]]
					any_useState_result2_upvr_3(false)
				end, {});
			})
		end
	end
	module.TouchEndedUserInputConnection = var257
	return Roact_upvr.createFragment(module)
end