-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:38
-- Luau version 6, Types version 3
-- Time taken: 0.012097 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = require(AppChat.EnumScreens)
local ArgCheck_upvr = require(Parent.ArgCheck)
local Roact_upvr = require(Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local Squads = require(Parent.Squads)
local FFlagPartialModalConversationFix_upvr = require(AppChat.Flags.FFlagPartialModalConversationFix)
local FFlagEnableCreatePartyInChatMoreMenu_upvr = require(AppChat.Flags.FFlagEnableCreatePartyInChatMoreMenu)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatConversationScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local withChatPlacementContext_upvr = require(AppChat.Contexts.ChatPlacementContext).withChatPlacementContext
local SquadComponentAccessWrapper_upvr = Squads.SquadComponentAccessWrapper
local SquadJoinButton_upvr = Squads.SquadJoinButton
local SquadButtonSourceEnum_upvr = Squads.Enums.SquadButtonSourceEnum
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
function any_extend_result1.navigationOptions(arg1) -- Line 34
	--[[ Upvalues[8]:
		[1]: SquadExperimentation_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: withChatPlacementContext_upvr (readonly)
		[5]: SquadComponentAccessWrapper_upvr (readonly)
		[6]: SquadJoinButton_upvr (readonly)
		[7]: SquadButtonSourceEnum_upvr (readonly)
		[8]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local navigation_upvr_2 = arg1.navigation
	local var20
	if navigation_upvr_2.getScreenProps("wideMode", false) then
		var20 = 12
		local _ = navigation_upvr_2.getScreenProps("appChatInnerPadding", var20)
	else
		var20 = 12
	end
	var20 = SquadExperimentation_upvr.getSquadEntrypointsEnabled()
	if var20 then
		var20 = navigation_upvr_2.getParam("conversationId", nil)
		local var22_upvw = var20
		if var22_upvw then
			var22_upvw = tostring(var22_upvw)
		else
			var22_upvw = nil
		end
		local function renderRight_upvr() -- Line 45
			--[[ Upvalues[3]:
				[1]: navigation_upvr_2 (readonly)
				[2]: EnumScreens_upvr (copied, readonly)
				[3]: var22_upvw (read and write)
			]]
			navigation_upvr_2.navigate(EnumScreens_upvr.SquadLobby, {
				conversationId = var22_upvw;
			})
		end
		if var22_upvw then
		end
	end
	local module = {}
	function renderRight_upvr() -- Line 82, Named "renderRight"
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: any_createElement_result1_upvw (read and write)
		]]
		return Roact_upvr.createFragment({
			groupUp = any_createElement_result1_upvw;
		})
	end
	local any_createElement_result1_upvw = Roact_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
		});
		GroupUpButton = withChatPlacementContext_upvr(function(arg1_2) -- Line 59
			--[[ Upvalues[6]:
				[1]: Roact_upvr (copied, readonly)
				[2]: SquadComponentAccessWrapper_upvr (copied, readonly)
				[3]: var22_upvw (read and write)
				[4]: SquadJoinButton_upvr (copied, readonly)
				[5]: renderRight_upvr (readonly)
				[6]: SquadButtonSourceEnum_upvr (copied, readonly)
			]]
			return Roact_upvr.createElement(SquadComponentAccessWrapper_upvr, {
				parentChannelId = var22_upvw;
			}, Roact_upvr.createElement(SquadJoinButton_upvr, {
				conversationId = var22_upvw;
				isFullWidth = false;
				isInCard = false;
				layoutOrder = 0;
				onActivated = renderRight_upvr;
				shouldAnimate = true;
				squadButtonSource = SquadButtonSourceEnum_upvr.ChatConversationScreen;
				squadLocation = arg1_2.chatPlacement;
			}))
		end);
	})
	local var32 = renderRight_upvr
	module.renderRight = var32
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		var32 = navigation_upvr_2.getScreenProps("appChatOuterPadding", var20)
	else
		var32 = nil
	end
	module.leftPaddingOverride = var32
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
	else
	end
	module.rightPaddingOverride = nil
	return module
end
local FFlagAppChatEnableTC_upvr = require(Parent.SharedFlags).FFlagAppChatEnableTC
local FFlagAppChatFixFriendConversationNavigation_upvr = require(AppChat.Flags.FFlagAppChatFixFriendConversationNavigation)
local Cryo_upvr = require(Parent.Cryo)
local readingMessagesIsEnabled_upvr = require(script.Parent.Utils.readingMessagesIsEnabled)
function any_extend_result1.init(arg1) -- Line 94
	--[[ Upvalues[10]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagAppChatEnableTC_upvr (readonly)
		[3]: Logger_upvr (readonly)
		[4]: FFlagAppChatFixFriendConversationNavigation_upvr (readonly)
		[5]: EnumScreens_upvr (readonly)
		[6]: FFlagPartialModalConversationFix_upvr (readonly)
		[7]: ArgCheck_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: FFlagEnableCreatePartyInChatMoreMenu_upvr (readonly)
		[10]: readingMessagesIsEnabled_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.toastProps = nil
	arg1.inputBoxRef = Roact_upvr.createRef()
	local navigation_upvr = arg1.props.navigation
	local var40_upvr
	if var40_upvr then
		var40_upvr = navigation_upvr.getParam("conversationId", nil)
	end
	if FFlagAppChatEnableTC_upvr then
		function arg1.navigateToConversationOverlay() -- Line 102
			--[[ Upvalues[7]:
				[1]: Logger_upvr (copied, readonly)
				[2]: var40_upvr (readonly)
				[3]: FFlagAppChatFixFriendConversationNavigation_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: navigation_upvr (readonly)
				[6]: EnumScreens_upvr (copied, readonly)
				[7]: FFlagPartialModalConversationFix_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			Logger_upvr:info("Navigate To ConversationOverlay: {} from {screen}", var40_upvr)
			local var42
			if FFlagAppChatFixFriendConversationNavigation_upvr then
				var42 = arg1.props.navigation.getParam
				if var42 then
					var42 = arg1.props.navigation.getParam("conversationId", nil)
					-- KONSTANTWARNING: GOTO [28] #22
				end
			else
				var42 = var40_upvr
			end
			local tbl_11 = {
				conversationId = var42;
			}
			if FFlagPartialModalConversationFix_upvr then
			else
			end
			tbl_11.isOverlay = nil
			navigation_upvr.navigate(EnumScreens_upvr.ConversationOverlay, tbl_11)
		end
	end
	if FFlagAppChatFixFriendConversationNavigation_upvr then
		function arg1.navigateToChatDetails() -- Line 116
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: Logger_upvr (copied, readonly)
				[3]: navigation_upvr (readonly)
				[4]: EnumScreens_upvr (copied, readonly)
			]]
			local getParam = arg1.props.navigation.getParam
			if getParam then
				getParam = arg1.props.navigation.getParam("conversationId", nil)
			end
			Logger_upvr:info("Navigate To ChatDetails: {} from {screen}", getParam)
			navigation_upvr.navigate(EnumScreens_upvr.ChatDetails, {
				conversationId = getParam;
			})
		end
	else
	end
	local any_getScreenProps_result1 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
	ArgCheck_upvr.isNotNil(any_getScreenProps_result1, "setScreenTopBar in screenProps")
	local tbl_7 = {}
	if FFlagAppChatFixFriendConversationNavigation_upvr then
	else
	end
	function tbl_7.navigateToChatDetails() -- Line 123
		--[[ Upvalues[4]:
			[1]: Logger_upvr (copied, readonly)
			[2]: var40_upvr (readonly)
			[3]: navigation_upvr (readonly)
			[4]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To ChatDetails: {} from {screen}", var40_upvr)
		navigation_upvr.navigate(EnumScreens_upvr.ChatDetails, {
			conversationId = var40_upvr;
		})
	end
	tbl_7.conversationId = var40_upvr
	any_getScreenProps_result1(EnumScreens_upvr.ChatConversation, tbl_7)
	function arg1.queueNavigationToToast(arg1_3) -- Line 141
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.navigation.isFocused() then
			arg1.navigateToToast(arg1_3)
			arg1.toastProps = nil
		else
			arg1.toastProps = arg1_3
		end
	end
	function arg1.onDidFocus() -- Line 151
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.setInputBarCloseCallback(arg1.releaseFocus)
		if arg1.toastProps then
			arg1.navigateToToast(arg1.toastProps)
			arg1.toastProps = nil
		end
	end
	function arg1.releaseFocus() -- Line 160
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.inputBoxRef and arg1.inputBoxRef:getValue() then
			arg1.inputBoxRef:getValue():ReleaseFocus()
		end
	end
	function arg1.onWillBlur() -- Line 166
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.releaseFocus()
		arg1.setInputBarCloseCallback()
	end
	function arg1.navigateToToast(arg1_4) -- Line 172
		--[[ Upvalues[5]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
			[4]: FFlagPartialModalConversationFix_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Toast from {screen}")
		local var56 = EnumScreens_upvr
		if FFlagPartialModalConversationFix_upvr then
			var56 = Cryo_upvr.Dictionary.union
			var56 = var56(arg1_4, {
				isOverlay = true;
			})
		else
			var56 = arg1_4
		end
		arg1.props.navigation.navigate(var56.RoactChatToast, var56)
	end
	function arg1.openViewProfile(arg1_5) -- Line 183
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		local var59 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.ViewUserProfile]
		if var59 then
			Logger_upvr:info("Navigate To UserProfile from {screen}")
			var59(arg1_5, {})
		else
			Logger_upvr:warning("UserProfile page was not set in navigateToLuaAppPages screenProps")
		end
	end
	function arg1.openGameDetailsPage(arg1_6, arg2) -- Line 195
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		local var61 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.GameDetail]
		if var61 then
			Logger_upvr:info("Navigate To GameDetail from "..tostring(arg2))
			var61(arg1_6, arg2)
		else
			Logger_upvr:warning("GameDetail page was not set in navigateToLuaAppPages screenProps")
		end
	end
	function arg1.navigateToChatConversation(arg1_7) -- Line 208
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Conversation: {} from {screen}", arg1_7)
		local tbl_2 = {}
		tbl_2.conversationId = arg1_7
		arg1.props.navigation.navigate(EnumScreens_upvr.ChatConversation, tbl_2)
	end
	function arg1.navigateToScreen(arg1_8, arg2, arg3) -- Line 213
		--[[ Upvalues[4]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: FFlagPartialModalConversationFix_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Screen: {} from {screen}", arg1_8)
		local var71
		if var71 then
			var71 = arg1.props.navigation.getParam
			if var71 then
				var71 = arg1.props.navigation.getParam("conversationId", nil)
			end
		end
		if arg2 then
			local var72 = Cryo_upvr
			local tbl_5 = {
				conversationId = var71;
			}
			if FFlagPartialModalConversationFix_upvr then
				var72 = arg3
			else
				var72 = nil
			end
			tbl_5.isOverlay = var72
			arg1.props.navigation.navigate(arg1_8, var72.Dictionary.union(tbl_5, arg2))
		else
			arg1.props.navigation.navigate(arg1_8, {
				conversationId = var71;
			})
		end
	end
	function arg1.navigateBack() -- Line 233
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.navigation.isFocused() then
			arg1.props.navigation.goBack()
		end
	end
	function arg1.navigateToChatLanding() -- Line 239
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To ChatLanding from {screen}")
		if arg1.props.navigation.getScreenProps("wideMode", false) then
			arg1.props.navigation.navigate(EnumScreens_upvr.EmptyConversation)
		else
			arg1.props.navigation.navigate(EnumScreens_upvr.ChatLanding)
		end
	end
	if FFlagEnableCreatePartyInChatMoreMenu_upvr then
		function arg1.navigateToSquadLobby(arg1_9) -- Line 250
			--[[ Upvalues[3]:
				[1]: Logger_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: EnumScreens_upvr (copied, readonly)
			]]
			Logger_upvr:info("Navigate To SquadLobby from {screen}")
			local tbl_12 = {}
			tbl_12.conversationId = arg1_9
			arg1.props.navigation.navigate(EnumScreens_upvr.SquadLobby, tbl_12)
		end
	end
	function arg1.updateConversationTitle(arg1_10) -- Line 256
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1_4 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1_4, "setScreenTopBar in screenProps")
		local tbl_3 = {}
		if arg1_10 then
			local tbl_8 = {}
			tbl_8.raw = arg1_10
			tbl_8.shouldLocalize = false
		else
		end
		tbl_3.headerText = {
			raw = "CommonUI.Features.Label.Chat";
			shouldLocalize = true;
		}
		any_getScreenProps_result1_4(EnumScreens_upvr.ChatConversation, tbl_3)
	end
	function arg1.setInputBarCloseCallback(arg1_11) -- Line 273
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1_2 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1_2, "setScreenTopBar in screenProps")
		local tbl = {}
		tbl.closeInputBar = arg1_11
		any_getScreenProps_result1_2(EnumScreens_upvr.ChatLanding, tbl)
	end
	function arg1.getReadingMessagesIsEnabled() -- Line 280
		--[[ Upvalues[2]:
			[1]: readingMessagesIsEnabled_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return readingMessagesIsEnabled_upvr(arg1.props.navigation)
	end
	function arg1.updatePrivateConversationTopBar(arg1_12) -- Line 284
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1_3 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1_3, "setScreenTopBar in screenProps")
		local tbl_6 = {}
		tbl_6.isPrivateConversation = arg1_12
		any_getScreenProps_result1_3(EnumScreens_upvr.ChatConversation, tbl_6)
	end
end
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local ChatConversationContainer_upvr = require(script.Parent.ChatConversationContainer)
local FFlagRenderChatConversationOnlyWhenVisible_upvr = require(AppChat.Flags.FFlagRenderChatConversationOnlyWhenVisible)
function any_extend_result1.render(arg1) -- Line 292
	--[[ Upvalues[7]:
		[1]: ArgCheck_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactNavigation_upvr (readonly)
		[4]: ChatConversationContainer_upvr (readonly)
		[5]: FFlagEnableCreatePartyInChatMoreMenu_upvr (readonly)
		[6]: FFlagPartialModalConversationFix_upvr (readonly)
		[7]: FFlagRenderChatConversationOnlyWhenVisible_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local any_isNotNil_result1 = ArgCheck_upvr.isNotNil(arg1.props.navigation, "navigation in ChatConversationScreen")
	local tbl_13 = {
		onDidFocus = arg1.onDidFocus;
		onWillBlur = arg1.onWillBlur;
	}
	local any_getParam_result1 = any_isNotNil_result1.getParam("conversationId", nil)
	local var97
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var97 = tostring(any_getParam_result1)
		return var97
	end
	if not any_getParam_result1 or not INLINED() then
		var97 = nil
	end
	var97 = Roact_upvr.createElement
	local _ = {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}
	local tbl_4 = {
		topBarHeight = any_isNotNil_result1.getScreenProps("topBarHeight", 0);
		wideMode = any_isNotNil_result1.getScreenProps("wideMode", false);
		openGameDetailsPage = arg1.openGameDetailsPage;
		getReadingMessagesIsEnabled = arg1.getReadingMessagesIsEnabled;
		conversationId = var97;
		inputBoxRef = arg1.inputBoxRef;
		updateConversationTitle = arg1.updateConversationTitle;
		updatePrivateConversationTopBar = arg1.updatePrivateConversationTopBar;
		releaseInputBarFocus = arg1.releaseFocus;
		navigateBack = arg1.navigateBack;
		navigateToToast = arg1.queueNavigationToToast;
		openViewProfile = arg1.openViewProfile;
		navigateToChatConversation = arg1.navigateToChatConversation;
		navigateToChatLanding = arg1.navigateToChatLanding;
		navigateToScreen = arg1.navigateToScreen;
	}
	if FFlagEnableCreatePartyInChatMoreMenu_upvr then
	else
	end
	tbl_4.navigateToSquadLobby = nil
	tbl_4.navigateToConversationOverlay = arg1.navigateToConversationOverlay
	if FFlagPartialModalConversationFix_upvr then
		-- KONSTANTWARNING: GOTO [152] #101
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [142] 94. Error Block 27 start (CF ANALYSIS FAILED)
	if FFlagRenderChatConversationOnlyWhenVisible_upvr then
		-- KONSTANTWARNING: GOTO [152] #101
	end
	-- KONSTANTERROR: [142] 94. Error Block 27 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 336
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
end
return any_extend_result1