-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:35
-- Luau version 6, Types version 3
-- Time taken: 0.019838 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local EnumScreens_upvr = require(AppChat.EnumScreens)
local TopBarContext_upvr = require(AppChat.TopBarContext)
local ArgCheck_upvr = require(Parent.ArgCheck)
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local Logger_upvr = require(script.Parent.Logger)
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatLandingScreen")
any_extend_result1.defaultProps = {
	navigation = nil;
}
local withLocalization_upvr = require(Parent.Localization).withLocalization
local SearchTopBar_upvr = require(script.Parent.SearchTopBar)
local function var12_upvr() -- Line 52
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: TopBarContext_upvr (readonly)
		[3]: EnumScreens_upvr (readonly)
		[4]: ArgCheck_upvr (readonly)
		[5]: withLocalization_upvr (readonly)
		[6]: SearchTopBar_upvr (readonly)
	]]
	local module_7 = {}
	local function render(arg1) -- Line 54
		--[[ Upvalues[5]:
			[1]: EnumScreens_upvr (copied, readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: withLocalization_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: SearchTopBar_upvr (copied, readonly)
		]]
		local any_getScreenTopBar_result1_2_upvr = arg1.getScreenTopBar(EnumScreens_upvr.ChatLanding)
		ArgCheck_upvr.isType(any_getScreenTopBar_result1_2_upvr, "table", "screenTopBar")
		return withLocalization_upvr({
			searchPlaceholderText = "Feature.Chat.Label.SearchWord";
			cancelText = "Feature.Chat.Action.Cancel";
		})(function(arg1_2) -- Line 61
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: SearchTopBar_upvr (copied, readonly)
				[3]: any_getScreenTopBar_result1_2_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: EnumScreens_upvr (copied, readonly)
			]]
			local module_3 = {}
			local tbl_13 = {
				initialInputText = any_getScreenTopBar_result1_2_upvr.filterText;
				cancelText = arg1_2.cancelText;
				searchPlaceholderText = arg1_2.searchPlaceholderText;
				captureFocusOnMount = any_getScreenTopBar_result1_2_upvr.shouldAutoFocusCenter;
			}
			local closeInputBar = any_getScreenTopBar_result1_2_upvr.closeInputBar
			if not closeInputBar then
				function closeInputBar() -- Line 71
				end
			end
			tbl_13.onSelectCallback = closeInputBar
			function tbl_13.resetOnMount() -- Line 73
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: EnumScreens_upvr (copied, readonly)
				]]
				arg1.setScreenTopBar(EnumScreens_upvr.ChatLanding, {
					shouldAutoFocusCenter = false;
				})
			end
			function tbl_13.cancelCallback() -- Line 79
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: EnumScreens_upvr (copied, readonly)
				]]
				arg1.setScreenTopBar(EnumScreens_upvr.ChatLanding, {
					shouldRenderCenter = false;
					filterText = "";
				})
			end
			function tbl_13.textChangedCallback(arg1_3) -- Line 86
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: EnumScreens_upvr (copied, readonly)
				]]
				local tbl_4 = {}
				tbl_4.filterText = arg1_3
				arg1.setScreenTopBar(EnumScreens_upvr.ChatLanding, tbl_4)
			end
			module_3.filterBox = Roact_upvr.createElement(SearchTopBar_upvr, tbl_13)
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, module_3)
		end)
	end
	module_7.render = render
	return Roact_upvr.createElement(TopBarContext_upvr.Consumer, module_7)
end
local Constants_upvr = require(AppChat.Constants)
local GetFFlagEnableAppChatInExperience_upvr = require(Parent.SharedFlags).GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = require(AppChat.App.InExperienceAppChatExperimentation)
local GetFFlagAppChatRebrandStringUpdates_upvr = require(Parent.SharedFlags).GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local getFFlagAppChatEnablePaddingConsistency_upvr = require(Parent.SharedFlags).getFFlagAppChatEnablePaddingConsistency
local withTelemetry_upvr = require(AppChat.Telemetry.withTelemetry)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local ChatLandingTelemetryEvents_upvr = require(script.Parent.ChatLandingTelemetryEvents)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("LuaAppNewStreamNotificationsEnabledForChat", false)
local StreamNotificationsBellIcon_upvr = require(Parent.StreamNotifications).StreamNotificationsBellIcon
local Badge_upvr = UIBlox.App.Indicator.Badge
local BadgeVariant_upvr = UIBlox.App.Indicator.Enum.BadgeVariant
local SnoozeToastNotificationsButton_upvr = require(AppChat.Components.ChatLanding.SnoozeToastNotificationsButton)
function any_extend_result1.navigationOptions(arg1) -- Line 98
	--[[ Upvalues[23]:
		[1]: Constants_upvr (readonly)
		[2]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[3]: InExperienceAppChatExperimentation_upvr (readonly)
		[4]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[5]: SquadExperimentation_upvr (readonly)
		[6]: getFFlagAppChatEnablePaddingConsistency_upvr (readonly)
		[7]: var12_upvr (readonly)
		[8]: default_upvr (readonly)
		[9]: withTelemetry_upvr (readonly)
		[10]: ChatLandingTelemetryLayer_upvr (readonly)
		[11]: Roact_upvr (readonly)
		[12]: TopBarContext_upvr (readonly)
		[13]: EnumScreens_upvr (readonly)
		[14]: ArgCheck_upvr (readonly)
		[15]: IconButton_upvr (readonly)
		[16]: Images_upvr (readonly)
		[17]: ChatLandingTelemetryEvents_upvr (readonly)
		[18]: game_DefineFastFlag_result1_upvr (readonly)
		[19]: StreamNotificationsBellIcon_upvr (readonly)
		[20]: Logger_upvr (readonly)
		[21]: Badge_upvr (readonly)
		[22]: BadgeVariant_upvr (readonly)
		[23]: SnoozeToastNotificationsButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local navigation_upvr = arg1.navigation
	local any_getScreenProps_result1_3 = navigation_upvr.getScreenProps("navigateToRootStack", nil)
	local any_getScreenProps_result1_9_upvr = navigation_upvr.getScreenProps("wideMode", false)
	local var72
	if any_getScreenProps_result1_3 then
		local _ = true
	else
	end
	var72 = GetFFlagEnableAppChatInExperience_upvr()
	if var72 then
		var72 = navigation_upvr.getScreenProps("isInExperience", false)
		if var72 then
			var72 = InExperienceAppChatExperimentation_upvr.getShowPlatformChatInChrome()
		end
	end
	if navigation_upvr.getScreenProps("wideMode", false) then
		local _ = navigation_upvr.getScreenProps("appChatInnerPadding", 12)
	else
	end
	local module_9 = {}
	local renderRight
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		renderRight = {}
		renderRight.raw = "Feature.Squads.Label.Party"
		renderRight.shouldLocalize = true
		-- KONSTANTWARNING: GOTO [90] #74
	end
	if navigation_upvr.getScreenProps("topBarUseConnectHeader", false) then
		renderRight = {}
		renderRight.raw = "Feature.Chat.Label.Connect"
		renderRight.shouldLocalize = true
	else
		renderRight = {}
		renderRight.raw = "CommonUI.Features.Label.Chat"
		renderRight.shouldLocalize = true
	end
	module_9.headerText = renderRight
	if var72 then
		renderRight = false
	else
		renderRight = false
	end
	module_9.backButtonEnabled = renderRight
	renderRight = var72 and false
	module_9.closeButtonEnabled = renderRight
	if not any_getScreenProps_result1_3 then
		renderRight = true
		-- KONSTANTWARNING: GOTO [105] #86
	end
	renderRight = nil
	module_9.tabBarVisible = renderRight
	renderRight = true
	module_9.isRoot = renderRight
	renderRight = true
	module_9.isTitleLeftAligned = renderRight
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		renderRight = navigation_upvr.getScreenProps("appChatOuterPadding", 12)
		-- KONSTANTWARNING: GOTO [123] #100
	end
	renderRight = nil
	module_9.leftPaddingOverride = renderRight
	if getFFlagAppChatEnablePaddingConsistency_upvr() then
		renderRight = navigation_upvr.getScreenProps("appChatOuterPadding", 12)
		-- KONSTANTWARNING: GOTO [131] #107
	end
	renderRight = nil
	module_9.rightPaddingOverride = renderRight
	renderRight = var12_upvr
	module_9.renderCenter = renderRight
	if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
		renderRight = true
	else
		renderRight = nil
	end
	module_9.shouldBoldHeader = renderRight
	local any_GetIconButtonWidth_result1_upvr = Constants_upvr:GetIconButtonWidth(any_getScreenProps_result1_9_upvr)
	function renderRight() -- Line 150
		--[[ Upvalues[20]:
			[1]: withTelemetry_upvr (copied, readonly)
			[2]: ChatLandingTelemetryLayer_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: TopBarContext_upvr (copied, readonly)
			[5]: EnumScreens_upvr (copied, readonly)
			[6]: ArgCheck_upvr (copied, readonly)
			[7]: navigation_upvr (readonly)
			[8]: IconButton_upvr (copied, readonly)
			[9]: any_GetIconButtonWidth_result1_upvr (readonly)
			[10]: Images_upvr (copied, readonly)
			[11]: ChatLandingTelemetryEvents_upvr (copied, readonly)
			[12]: GetFFlagAppChatRebrandStringUpdates_upvr (copied, readonly)
			[13]: SquadExperimentation_upvr (copied, readonly)
			[14]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[15]: StreamNotificationsBellIcon_upvr (copied, readonly)
			[16]: any_getScreenProps_result1_9_upvr (readonly)
			[17]: Logger_upvr (copied, readonly)
			[18]: Badge_upvr (copied, readonly)
			[19]: BadgeVariant_upvr (copied, readonly)
			[20]: SnoozeToastNotificationsButton_upvr (copied, readonly)
		]]
		return withTelemetry_upvr(ChatLandingTelemetryLayer_upvr.Context)(function(arg1_6) -- Line 151
			--[[ Upvalues[18]:
				[1]: Roact_upvr (copied, readonly)
				[2]: TopBarContext_upvr (copied, readonly)
				[3]: EnumScreens_upvr (copied, readonly)
				[4]: ArgCheck_upvr (copied, readonly)
				[5]: navigation_upvr (copied, readonly)
				[6]: IconButton_upvr (copied, readonly)
				[7]: any_GetIconButtonWidth_result1_upvr (copied, readonly)
				[8]: Images_upvr (copied, readonly)
				[9]: ChatLandingTelemetryEvents_upvr (copied, readonly)
				[10]: GetFFlagAppChatRebrandStringUpdates_upvr (copied, readonly)
				[11]: SquadExperimentation_upvr (copied, readonly)
				[12]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[13]: StreamNotificationsBellIcon_upvr (copied, readonly)
				[14]: any_getScreenProps_result1_9_upvr (copied, readonly)
				[15]: Logger_upvr (copied, readonly)
				[16]: Badge_upvr (copied, readonly)
				[17]: BadgeVariant_upvr (copied, readonly)
				[18]: SnoozeToastNotificationsButton_upvr (copied, readonly)
			]]
			local module_5 = {}
			local function render(arg1_7) -- Line 153
				--[[ Upvalues[18]:
					[1]: EnumScreens_upvr (copied, readonly)
					[2]: ArgCheck_upvr (copied, readonly)
					[3]: navigation_upvr (copied, readonly)
					[4]: Roact_upvr (copied, readonly)
					[5]: IconButton_upvr (copied, readonly)
					[6]: any_GetIconButtonWidth_result1_upvr (copied, readonly)
					[7]: Images_upvr (copied, readonly)
					[8]: arg1_6 (readonly)
					[9]: ChatLandingTelemetryEvents_upvr (copied, readonly)
					[10]: GetFFlagAppChatRebrandStringUpdates_upvr (copied, readonly)
					[11]: SquadExperimentation_upvr (copied, readonly)
					[12]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[13]: StreamNotificationsBellIcon_upvr (copied, readonly)
					[14]: any_getScreenProps_result1_9_upvr (copied, readonly)
					[15]: Logger_upvr (copied, readonly)
					[16]: Badge_upvr (copied, readonly)
					[17]: BadgeVariant_upvr (copied, readonly)
					[18]: SnoozeToastNotificationsButton_upvr (copied, readonly)
				]]
				local any_getScreenTopBar_result1_3 = arg1_7.getScreenTopBar(EnumScreens_upvr.ChatLanding)
				ArgCheck_upvr.isType(any_getScreenTopBar_result1_3, "table", "screenTopBar")
				local any_getScreenProps_result1_10 = navigation_upvr.getScreenProps("notificationCount", 0)
				local var82
				if any_getScreenTopBar_result1_3.shouldRenderCenter then
					return nil
				end
				local module_8 = {}
				var82 = navigation_upvr.getScreenProps("topBarShowSearch", false)
				if var82 then
					var82 = Roact_upvr.createElement
					local tbl_6 = {
						size = UDim2.new(0, any_GetIconButtonWidth_result1_upvr, 1, 0);
						icon = Images_upvr["icons/common/search"];
						layoutOrder = 1;
					}
					local function onActivated() -- Line 174
						--[[ Upvalues[4]:
							[1]: arg1_7 (readonly)
							[2]: EnumScreens_upvr (copied, readonly)
							[3]: arg1_6 (copied, readonly)
							[4]: ChatLandingTelemetryEvents_upvr (copied, readonly)
						]]
						arg1_7.setScreenTopBar(EnumScreens_upvr.ChatLanding, {
							shouldRenderCenter = true;
							shouldAutoFocusCenter = true;
						})
						arg1_6.emit(ChatLandingTelemetryEvents_upvr.ChatLandingSearchBtnClicked, {})
					end
					tbl_6.onActivated = onActivated
					var82 = var82(IconButton_upvr, tbl_6)
				end
				module_8.filter = var82
				if navigation_upvr.getScreenProps("topBarShowCreateChatGroup", false) then
					local tbl_8 = {
						size = UDim2.new(0, any_GetIconButtonWidth_result1_upvr, 1, 0);
					}
					local onActivated
					if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
						onActivated = Images_upvr["icons/common/plus"]
					else
						onActivated = Images_upvr["icons/actions/compose"]
					end
					tbl_8.icon = onActivated
					onActivated = 2
					tbl_8.layoutOrder = onActivated
					function onActivated() -- Line 191
						--[[ Upvalues[4]:
							[1]: navigation_upvr (copied, readonly)
							[2]: EnumScreens_upvr (copied, readonly)
							[3]: arg1_6 (copied, readonly)
							[4]: ChatLandingTelemetryEvents_upvr (copied, readonly)
						]]
						navigation_upvr.navigate(EnumScreens_upvr.CreateNewChat)
						arg1_6.emit(ChatLandingTelemetryEvents_upvr.ChatLandingComposeBtnClicked, {})
					end
					tbl_8.onActivated = onActivated
				end
				module_8.createNewChat = Roact_upvr.createElement(IconButton_upvr, tbl_8)
				if navigation_upvr.getScreenProps("topBarShowNotifications", false) then
					if game_DefineFastFlag_result1_upvr then
						local tbl_21 = {
							notificationCount = any_getScreenProps_result1_10;
						}
						onActivated = not any_getScreenProps_result1_9_upvr
						tbl_21.compactWidth = onActivated
						onActivated = 3
						tbl_21.layoutOrder = onActivated
					else
						local tbl_12 = {}
						onActivated = UDim2.new(0, any_GetIconButtonWidth_result1_upvr, 1, 0)
						tbl_12.size = onActivated
						onActivated = Images_upvr["icons/common/notificationOn"]
						tbl_12.icon = onActivated
						onActivated = 3
						tbl_12.layoutOrder = onActivated
						function onActivated() -- Line 209
							--[[ Upvalues[5]:
								[1]: navigation_upvr (copied, readonly)
								[2]: EnumScreens_upvr (copied, readonly)
								[3]: Logger_upvr (copied, readonly)
								[4]: arg1_6 (copied, readonly)
								[5]: ChatLandingTelemetryEvents_upvr (copied, readonly)
							]]
							local var90 = navigation_upvr.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.Notifications]
							if var90 then
								Logger_upvr:info("Navigate To Notifications from {screen}")
								var90()
							else
								Logger_upvr:warning("Notifications page was not set in navigateToLuaAppPages screenProps")
							end
							arg1_6.emit(ChatLandingTelemetryEvents_upvr.ChatLandingNotifBtnClicked, {})
						end
						tbl_12.onActivated = onActivated
						onActivated = {}
						local var91 = false
						if 0 < any_getScreenProps_result1_10 then
							var91 = Roact_upvr.createElement
							var91 = var91(Badge_upvr, {
								position = UDim2.new(0.5, 0, 0.5, 0);
								anchorPoint = Vector2.new(0, 1);
								value = any_getScreenProps_result1_10;
								badgeVariant = BadgeVariant_upvr.Alert;
							})
						end
						onActivated.notificationBadge = var91
					end
				end
				module_8.notifications = Roact_upvr.createElement(IconButton_upvr, tbl_12, onActivated)
				if navigation_upvr.getScreenProps("topBarShowSnoozeNotifications", false) then
					local _ = {
						layoutOrder = 4;
						size = UDim2.new(0, any_GetIconButtonWidth_result1_upvr, 1, 0);
					}
				else
				end
				module_8.snoozeChatNotifications = nil
				return Roact_upvr.createFragment(module_8)
			end
			module_5.render = render
			return Roact_upvr.createElement(TopBarContext_upvr.Consumer, module_5)
		end)
	end
	module_9.renderRight = renderRight
	return module_9
end
local getCurrentRoute_upvr = require(script.Parent.Utils.getCurrentRoute)
local FFlagEnablePartyQuickStartButton_upvr = require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton
local resetForSquadLobbyForCompactMode_upvr = require(AppChat.Utils.resetForSquadLobbyForCompactMode)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
function any_extend_result1.init(arg1) -- Line 246
	--[[ Upvalues[7]:
		[1]: Logger_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: getCurrentRoute_upvr (readonly)
		[4]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[5]: resetForSquadLobbyForCompactMode_upvr (readonly)
		[6]: RoactNavigation_upvr (readonly)
		[7]: ArgCheck_upvr (readonly)
	]]
	function arg1.navigateToConversation(arg1_8) -- Line 247
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Conversation: {} from {screen}", arg1_8)
		local tbl_11 = {}
		tbl_11.conversationId = arg1_8
		arg1.props.navigation.navigate(EnumScreens_upvr.ChatConversation, tbl_11)
		arg1.resetScreenTopBar()
	end
	function arg1.navigateToCreateChat() -- Line 253
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To CreateNewChat from {screen}")
		arg1.props.navigation.push(EnumScreens_upvr.CreateNewChat)
	end
	function arg1.navigateToToast(arg1_9) -- Line 258
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Toast from {screen}")
		arg1.props.navigation.navigate(EnumScreens_upvr.RoactChatToast, arg1_9)
	end
	function arg1.navigateToPrivacy() -- Line 263
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		local var103 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.PrivacySettings]
		if var103 then
			Logger_upvr:info("Navigate To PrivacySettings from {screen}")
			var103()
		else
			Logger_upvr:warning("PrivacySettings page was not set in navigateToLuaAppPages screenProps")
		end
	end
	function arg1.navigateToSquadLobby(arg1_10) -- Line 274
		--[[ Upvalues[7]:
			[1]: Logger_upvr (copied, readonly)
			[2]: getCurrentRoute_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: FFlagEnablePartyQuickStartButton_upvr (copied, readonly)
			[6]: resetForSquadLobbyForCompactMode_upvr (copied, readonly)
			[7]: RoactNavigation_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To SquadLobby from {screen}")
		local getCurrentRoute_upvr_result1 = getCurrentRoute_upvr(arg1.props.navigation.state)
		if getCurrentRoute_upvr_result1 and getCurrentRoute_upvr_result1.params and getCurrentRoute_upvr_result1.params.conversationId == arg1_10 and getCurrentRoute_upvr_result1.routeName == EnumScreens_upvr.ChatConversation then
			local tbl_16 = {}
			tbl_16.conversationId = arg1_10
			arg1.props.navigation.navigate(EnumScreens_upvr.SquadLobby, tbl_16)
		else
			if FFlagEnablePartyQuickStartButton_upvr then
				resetForSquadLobbyForCompactMode_upvr(arg1.props.navigation, arg1_10)
				return
			end
			local tbl_9 = {}
			local tbl_18 = {
				routeName = EnumScreens_upvr.ChatConversation;
			}
			local tbl_7 = {}
			tbl_7.conversationId = arg1_10
			tbl_18.params = tbl_7
			local tbl_22 = {
				routeName = EnumScreens_upvr.SquadLobby;
			}
			local tbl_17 = {}
			tbl_17.conversationId = arg1_10
			tbl_22.params = tbl_17
			tbl_9[1] = RoactNavigation_upvr.Actions.navigate({
				routeName = EnumScreens_upvr.ChatLanding;
			})
			tbl_9[2] = RoactNavigation_upvr.Actions.navigate(tbl_18)
			tbl_9[3] = RoactNavigation_upvr.Actions.navigate(tbl_22)
			arg1.props.navigation.reset(tbl_9, 3)
		end
	end
	function arg1.setScreenTopBar(arg1_11) -- Line 306
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1_7 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1_7, "setScreenTopBar in screenProps")
		any_getScreenProps_result1_7(EnumScreens_upvr.ChatLanding, arg1_11)
	end
	function arg1.resetScreenTopBar() -- Line 312
		--[[ Upvalues[3]:
			[1]: ArgCheck_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local var116 = ArgCheck_upvr.isNotNil(arg1.props.navigation.getScreenProps("getScreenTopBar", nil), "getScreenTopBar in screenProps")(EnumScreens_upvr.ChatLanding)
		if var116.filterText == "" and var116.shouldRenderCenter then
			arg1.setScreenTopBar({
				shouldRenderCenter = false;
			})
		end
	end
end
local ChatLandingContainer_upvr = require(script.Parent.ChatLandingContainer)
local ChatSearchBox_upvr = require(script.Parent.ChatSearchBox)
local GetFFlagEnablePushNotificationsUpsellModalChat_upvr = require(Parent.SharedFlags).GetFFlagEnablePushNotificationsUpsellModalChat
local CheckAndOpenChatPushUpsell_upvr = require(script.Parent.CheckAndOpenChatPushUpsell)
local function render(arg1) -- Line 326
	--[[ Upvalues[10]:
		[1]: Logger_upvr (readonly)
		[2]: ArgCheck_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: TopBarContext_upvr (readonly)
		[5]: EnumScreens_upvr (readonly)
		[6]: ChatLandingContainer_upvr (readonly)
		[7]: default_upvr (readonly)
		[8]: ChatSearchBox_upvr (readonly)
		[9]: GetFFlagEnablePushNotificationsUpsellModalChat_upvr (readonly)
		[10]: CheckAndOpenChatPushUpsell_upvr (readonly)
	]]
	Logger_upvr:info("{screen} render")
	local any_isNotNil_result1_upvr = ArgCheck_upvr.isNotNil(arg1.props.navigation, "navigation in ChatLandingScreen")
	local var123_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var123_upvr = any_isNotNil_result1_upvr.getParam("key", "")
		return var123_upvr
	end
	if not any_isNotNil_result1_upvr or not INLINED() then
		var123_upvr = ""
	end
	local module_2 = {}
	local any_getScreenProps_result1_6_upvr = any_isNotNil_result1_upvr.getScreenProps("showSearchRow", true)
	local any_getScreenProps_result1_8_upvr = any_isNotNil_result1_upvr.getScreenProps("topBarHeight", 0)
	function module_2.render(arg1_12) -- Line 334
		--[[ Upvalues[13]:
			[1]: EnumScreens_upvr (copied, readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ChatLandingContainer_upvr (copied, readonly)
			[5]: any_isNotNil_result1_upvr (readonly)
			[6]: default_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: var123_upvr (readonly)
			[9]: any_getScreenProps_result1_6_upvr (readonly)
			[10]: ChatSearchBox_upvr (copied, readonly)
			[11]: any_getScreenProps_result1_8_upvr (readonly)
			[12]: GetFFlagEnablePushNotificationsUpsellModalChat_upvr (copied, readonly)
			[13]: CheckAndOpenChatPushUpsell_upvr (copied, readonly)
		]]
		local any_getScreenTopBar_result1 = arg1_12.getScreenTopBar(EnumScreens_upvr.ChatLanding)
		ArgCheck_upvr.isType(any_getScreenTopBar_result1, "table", "screenTopBar")
		local tbl_15 = {
			isShowingFilterBox = any_getScreenTopBar_result1.shouldRenderCenter;
			filterText = any_getScreenTopBar_result1.filterText;
		}
		local any_getScreenProps_result1 = any_isNotNil_result1_upvr.getScreenProps("topBarHeight", 0)
		tbl_15.topBarHeight = any_getScreenProps_result1
		if default_upvr.isEnabled() then
			any_getScreenProps_result1 = arg1.props.navigation.getScreenProps("navigateToAddFriends", {})
		else
			any_getScreenProps_result1 = nil
		end
		tbl_15.navigateToAddFriends = any_getScreenProps_result1
		tbl_15.navigateToConversation = arg1.navigateToConversation
		tbl_15.navigateToCreateChat = arg1.navigateToCreateChat
		tbl_15.navigateToPrivacy = arg1.navigateToPrivacy
		tbl_15.navigateToSquadLobby = arg1.navigateToSquadLobby
		tbl_15.navigateToToast = arg1.navigateToToast
		tbl_15.key = "ChatLanding"..var123_upvr
		local any_createElement_result1 = Roact_upvr.createElement(ChatLandingContainer_upvr, tbl_15)
		if any_getScreenProps_result1_6_upvr then
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, {
				UIListLayout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
					VerticalAlignment = Enum.VerticalAlignment.Top;
					VerticalFlex = Enum.UIFlexAlignment.Fill;
					Padding = UDim.new(0, 0);
				});
				ChatSearchBox = Roact_upvr.createElement(ChatSearchBox_upvr, {
					height = any_getScreenProps_result1_8_upvr;
					initialText = any_getScreenTopBar_result1.filterText;
					onFilter = function(arg1_13) -- Line 367, Named "onFilter"
						--[[ Upvalues[2]:
							[1]: arg1_12 (readonly)
							[2]: EnumScreens_upvr (copied, readonly)
						]]
						local tbl_14 = {}
						tbl_14.filterText = arg1_13
						arg1_12.setScreenTopBar(EnumScreens_upvr.ChatLanding, tbl_14)
					end;
				});
				
				any_createElement_result1
			})
		end
		if GetFFlagEnablePushNotificationsUpsellModalChat_upvr() then
			return Roact_upvr.createFragment({
				CheckAndOpenChatPushUpsell = Roact_upvr.createElement(CheckAndOpenChatPushUpsell_upvr);
				any_createElement_result1
			})
		end
		return any_createElement_result1
	end
	return Roact_upvr.createElement(TopBarContext_upvr.Consumer, module_2)
end
any_extend_result1.render = render
function any_extend_result1.didMount(arg1) -- Line 388
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	Logger_upvr:info("{screen} mounted")
	arg1.setScreenTopBar({
		shouldRenderCenter = false;
		filterText = "";
	})
end
return any_extend_result1