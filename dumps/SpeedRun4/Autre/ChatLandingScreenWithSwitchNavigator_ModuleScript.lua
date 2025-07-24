-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:36
-- Luau version 6, Types version 3
-- Time taken: 0.008457 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local ArgCheck_upvr = require(Parent.ArgCheck)
local React_upvr = require(Parent.React)
local Roact_upvr = require(Parent.Roact)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local conversationSwitchNavigator_upvr = require(AppChat.Navigators.Wide.conversationSwitchNavigator)
local Logger_upvr = require(script.Parent.Logger)
local useGetAndSetRef_upvr = require(AppChat.Hooks.useGetAndSetRef)
local ChatLandingTelemetryState_upvr = require(AppChat.Contexts.TelemetryState.ChatLandingTelemetryState)
local ChatLandingTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatLandingTelemetryLayer)
local function LeftContainerTelemetryProviders_upvr(arg1) -- Line 35, Named "LeftContainerTelemetryProviders"
	--[[ Upvalues[4]:
		[1]: useGetAndSetRef_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ChatLandingTelemetryState_upvr (readonly)
		[4]: ChatLandingTelemetryLayer_upvr (readonly)
	]]
	local useGetAndSetRef_upvr_result1_upvr, var9_result2 = useGetAndSetRef_upvr({})
	return React_upvr.createElement(ChatLandingTelemetryState_upvr.Provider, {
		value = {
			get = useGetAndSetRef_upvr_result1_upvr;
			set = var9_result2;
		};
	}, {React_upvr.createElement(ChatLandingTelemetryLayer_upvr.Provider, {
		value = React_upvr.useCallback(function() -- Line 38
			--[[ Upvalues[1]:
				[1]: useGetAndSetRef_upvr_result1_upvr (readonly)
			]]
			local var12_result1 = useGetAndSetRef_upvr_result1_upvr()
			return {
				chatLandingListCount = var12_result1.chatLandingListCount;
				pendingConversationCount = var12_result1.pendingConversationCount;
				unfilteredConversationCount = var12_result1.unfilteredConversationCount;
			}
		end, {useGetAndSetRef_upvr_result1_upvr});
	}, arg1.children)})
end
local ChatConversationTelemetryState_upvr = require(AppChat.Contexts.TelemetryState.ChatConversationTelemetryState)
local ChatConversationTelemetryLayer_upvr = require(AppChat.Telemetry.Layers.ChatConversationTelemetryLayer)
local function RightContainerTelemetryProviders_upvr(arg1) -- Line 62, Named "RightContainerTelemetryProviders"
	--[[ Upvalues[4]:
		[1]: useGetAndSetRef_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ChatConversationTelemetryState_upvr (readonly)
		[4]: ChatConversationTelemetryLayer_upvr (readonly)
	]]
	local useGetAndSetRef_upvr_result1_upvr_2, var9_result2_2 = useGetAndSetRef_upvr({})
	return React_upvr.createElement(ChatConversationTelemetryState_upvr.Provider, {
		value = {
			get = useGetAndSetRef_upvr_result1_upvr_2;
			set = var9_result2_2;
		};
	}, {React_upvr.createElement(ChatConversationTelemetryLayer_upvr.Provider, {
		value = React_upvr.useCallback(function() -- Line 65
			--[[ Upvalues[1]:
				[1]: useGetAndSetRef_upvr_result1_upvr_2 (readonly)
			]]
			local var24_result1 = useGetAndSetRef_upvr_result1_upvr_2()
			return {
				conversationId = var24_result1.conversationId;
				moderationType = var24_result1.moderationType;
				userPendingStatus = var24_result1.userPendingStatus;
			}
		end, {useGetAndSetRef_upvr_result1_upvr_2});
	}, arg1.children)})
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatLandingScreenWithSwitchNavigator")
any_extend_result1.router = conversationSwitchNavigator_upvr.router
any_extend_result1.defaultProps = {
	navigation = nil;
}
local getCurrentRoute_upvr = require(script.Parent.Utils.getCurrentRoute)
local FFlagEnablePartyQuickStartButton_upvr = require(Parent.SharedFlags).FFlagEnablePartyQuickStartButton
local resetForSquadLobbyForWideMode_upvr = require(AppChat.Utils.resetForSquadLobbyForWideMode)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
function any_extend_result1.init(arg1) -- Line 97
	--[[ Upvalues[7]:
		[1]: Logger_upvr (readonly)
		[2]: EnumScreens_upvr (readonly)
		[3]: getCurrentRoute_upvr (readonly)
		[4]: FFlagEnablePartyQuickStartButton_upvr (readonly)
		[5]: resetForSquadLobbyForWideMode_upvr (readonly)
		[6]: RoactNavigation_upvr (readonly)
		[7]: ArgCheck_upvr (readonly)
	]]
	function arg1.navigateToConversation(arg1_2) -- Line 98
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Conversation: {} from {screen}", arg1_2)
		local tbl_10 = {}
		tbl_10.conversationId = arg1_2
		arg1.props.navigation.navigate(EnumScreens_upvr.ChatConversation, tbl_10)
	end
	function arg1.navigateToCreateChat() -- Line 103
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To CreateNewChat from {screen}")
		arg1.props.navigation.navigate(EnumScreens_upvr.CreateNewChat)
	end
	function arg1.navigateToToast(arg1_3) -- Line 108
		--[[ Upvalues[3]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To Toast from {screen}")
		arg1.props.navigation.navigate(EnumScreens_upvr.RoactChatToast, arg1_3)
	end
	function arg1.navigateToNotifications() -- Line 113
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		local var45 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.Notifications]
		if var45 then
			Logger_upvr:info("Navigate To Notifications from {screen}")
			var45()
		else
			Logger_upvr:warning("Notifications page was not set in navigateToLuaAppPages screenProps")
		end
	end
	function arg1.navigateToPrivacy() -- Line 124
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EnumScreens_upvr (copied, readonly)
			[3]: Logger_upvr (copied, readonly)
		]]
		local var47 = arg1.props.navigation.getScreenProps("navigateToLuaAppPages", {})[EnumScreens_upvr.PrivacySettings]
		if var47 then
			Logger_upvr:info("Navigate To PrivacySettings from {screen}")
			var47()
		else
			Logger_upvr:warning("PrivacySettings page was not set in navigateToLuaAppPages screenProps")
		end
	end
	function arg1.navigateToSquadLobby(arg1_4) -- Line 135
		--[[ Upvalues[7]:
			[1]: Logger_upvr (copied, readonly)
			[2]: getCurrentRoute_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: FFlagEnablePartyQuickStartButton_upvr (copied, readonly)
			[6]: resetForSquadLobbyForWideMode_upvr (copied, readonly)
			[7]: RoactNavigation_upvr (copied, readonly)
		]]
		Logger_upvr:info("Navigate To SquadLobby from {screen}")
		local var36_result1 = getCurrentRoute_upvr(arg1.props.navigation.state)
		if var36_result1 and var36_result1.params and var36_result1.params.conversationId == arg1_4 and var36_result1.routeName == EnumScreens_upvr.ChatConversation then
			local tbl_6 = {}
			tbl_6.conversationId = arg1_4
			arg1.props.navigation.navigate(EnumScreens_upvr.SquadLobby, tbl_6)
		else
			if FFlagEnablePartyQuickStartButton_upvr then
				resetForSquadLobbyForWideMode_upvr(arg1.props.navigation, arg1_4)
				return
			end
			local tbl_11 = {
				index = 2;
			}
			local tbl_9 = {}
			local tbl_5 = {
				routeName = EnumScreens_upvr.ChatConversation;
			}
			local tbl = {}
			tbl.conversationId = arg1_4
			tbl_5.params = tbl
			local tbl_7 = {
				routeName = EnumScreens_upvr.SquadLobby;
			}
			local tbl_8 = {}
			tbl_8.conversationId = arg1_4
			tbl_7.params = tbl_8
			tbl_9[1] = RoactNavigation_upvr.Actions.navigate(tbl_5)
			tbl_9[2] = RoactNavigation_upvr.Actions.navigate(tbl_7)
			tbl_11.actions = tbl_9
			arg1.props.navigation.navigate(EnumScreens_upvr.ChatLanding, nil, RoactNavigation_upvr.StackActions.reset(tbl_11))
		end
	end
	function arg1.setScreenTopBar(arg1_5) -- Line 172
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ArgCheck_upvr (copied, readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local any_getScreenProps_result1 = arg1.props.navigation.getScreenProps("setScreenTopBar", nil)
		ArgCheck_upvr.isNotNil(any_getScreenProps_result1, "setScreenTopBar in screenProps")
		any_getScreenProps_result1(EnumScreens_upvr.ChatLanding, arg1_5)
	end
end
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local TopBarContext_upvr = require(AppChat.TopBarContext)
local createChatTopBar_upvr = require(AppChat.createChatTopBar)
local Cryo_upvr = require(Parent.Cryo)
local ChatLandingScreen_upvr = require(script.Parent.ChatLandingScreen)
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local ChatSearchBox_upvr = require(script.Parent.ChatSearchBox)
local Provider_upvr = require(AppChat.Contexts.ChatPagePadding.Provider)
local ChatLandingContainer_upvr = require(script.Parent.ChatLandingContainer)
local function render(arg1) -- Line 180
	--[[ Upvalues[16]:
		[1]: Logger_upvr (readonly)
		[2]: ArgCheck_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: LeftContainerTelemetryProviders_upvr (readonly)
		[6]: TopBarContext_upvr (readonly)
		[7]: EnumScreens_upvr (readonly)
		[8]: createChatTopBar_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: ChatLandingScreen_upvr (readonly)
		[11]: default_upvr (readonly)
		[12]: ChatSearchBox_upvr (readonly)
		[13]: Provider_upvr (readonly)
		[14]: ChatLandingContainer_upvr (readonly)
		[15]: RightContainerTelemetryProviders_upvr (readonly)
		[16]: conversationSwitchNavigator_upvr (readonly)
	]]
	Logger_upvr:info("{screen} render")
	local any_isNotNil_result1_upvr = ArgCheck_upvr.isNotNil(arg1.props.navigation, "navigation in ChatLandingScreenWithSwitchNavigator")
	local var69_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var69_upvr = any_isNotNil_result1_upvr.getParam("key", "")
		return var69_upvr
	end
	if not any_isNotNil_result1_upvr or not INLINED() then
		var69_upvr = ""
	end
	local any_getScreenProps_result1_3_upvr = any_isNotNil_result1_upvr.getScreenProps("showSearchRow", true)
	local any_getScreenProps_result1_2_upvr = any_isNotNil_result1_upvr.getScreenProps("topBarHeight", 0)
	return withStyle_upvr(function(arg1_6) -- Line 187
		--[[ Upvalues[19]:
			[1]: Roact_upvr (copied, readonly)
			[2]: LeftContainerTelemetryProviders_upvr (copied, readonly)
			[3]: TopBarContext_upvr (copied, readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: ArgCheck_upvr (copied, readonly)
			[6]: createChatTopBar_upvr (copied, readonly)
			[7]: Cryo_upvr (copied, readonly)
			[8]: any_isNotNil_result1_upvr (readonly)
			[9]: ChatLandingScreen_upvr (copied, readonly)
			[10]: default_upvr (copied, readonly)
			[11]: any_getScreenProps_result1_3_upvr (readonly)
			[12]: ChatSearchBox_upvr (copied, readonly)
			[13]: any_getScreenProps_result1_2_upvr (readonly)
			[14]: Provider_upvr (copied, readonly)
			[15]: ChatLandingContainer_upvr (copied, readonly)
			[16]: arg1 (readonly)
			[17]: var69_upvr (readonly)
			[18]: RightContainerTelemetryProviders_upvr (copied, readonly)
			[19]: conversationSwitchNavigator_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundColor3 = arg1_6.Theme.BackgroundDefault.Color;
			BackgroundTransparency = arg1_6.Tokens.Global.Color.None.Transparency;
			BorderSizePixel = 0;
		}, {
			LeftContainerProviders = Roact_upvr.createElement(LeftContainerTelemetryProviders_upvr, {}, {
				LeftContainer = Roact_upvr.createElement(TopBarContext_upvr.Consumer, {
					render = function(arg1_7) -- Line 196, Named "render"
						--[[ Upvalues[16]:
							[1]: EnumScreens_upvr (copied, readonly)
							[2]: ArgCheck_upvr (copied, readonly)
							[3]: Roact_upvr (copied, readonly)
							[4]: createChatTopBar_upvr (copied, readonly)
							[5]: Cryo_upvr (copied, readonly)
							[6]: any_isNotNil_result1_upvr (copied, readonly)
							[7]: ChatLandingScreen_upvr (copied, readonly)
							[8]: default_upvr (copied, readonly)
							[9]: any_getScreenProps_result1_3_upvr (copied, readonly)
							[10]: ChatSearchBox_upvr (copied, readonly)
							[11]: any_getScreenProps_result1_2_upvr (copied, readonly)
							[12]: Provider_upvr (copied, readonly)
							[13]: arg1_6 (readonly)
							[14]: ChatLandingContainer_upvr (copied, readonly)
							[15]: arg1 (copied, readonly)
							[16]: var69_upvr (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
						local any_getScreenTopBar_result1 = arg1_7.getScreenTopBar(EnumScreens_upvr.ChatLanding)
						ArgCheck_upvr.isType(any_getScreenTopBar_result1, "table", "screenTopBar")
						local tbl_12 = {
							Size = UDim2.new(0.37, 0, 1, 0);
							Position = UDim2.new(0, 0, 0, 0);
							BackgroundTransparency = 1;
							BorderSizePixel = 0;
						}
						local tbl_3 = {
							layout = Roact_upvr.createElement("UIListLayout", {
								SortOrder = Enum.SortOrder.LayoutOrder;
							});
						}
						local var83
						if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
							var83 = {}
							var83.backButtonEnabled = false
							var83.shouldBoldHeader = true
						else
							var83 = {}
						end
						tbl_3.leftTopBar = createChatTopBar_upvr(Cryo_upvr.Dictionary.join(any_getScreenTopBar_result1, {
							navigation = any_isNotNil_result1_upvr;
						}, ChatLandingScreen_upvr.navigationOptions({
							screenProps = nil;
							navigationOptions = nil;
							navigation = any_isNotNil_result1_upvr;
						}), var83))
						if any_getScreenProps_result1_3_upvr then
							({
								height = any_getScreenProps_result1_2_upvr;
								initialText = any_getScreenTopBar_result1.filterText;
							}).onFilter = function(arg1_8) -- Line 233, Named "onFilter"
								--[[ Upvalues[2]:
									[1]: arg1_7 (readonly)
									[2]: EnumScreens_upvr (copied, readonly)
								]]
								local tbl_4 = {}
								tbl_4.filterText = arg1_8
								arg1_7.setScreenTopBar(EnumScreens_upvr.ChatLanding, tbl_4)
							end
							-- KONSTANTWARNING: GOTO [126] #95
						end
						-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [125] 94. Error Block 30 start (CF ANALYSIS FAILED)
						tbl_3.filterBox = nil
						local tbl_2 = {}
						var83 = any_isNotNil_result1_upvr
						var83 = "appChatOuterPadding"
						tbl_2.left = var83.getScreenProps(var83, 12)
						var83 = any_isNotNil_result1_upvr
						var83 = "appChatInnerPadding"
						tbl_2.right = var83.getScreenProps(var83, 12)
						;({}).value = tbl_2
						var83 = Roact_upvr
						var83 = "Frame"
						;({}).BorderSizePixel = 0
						if any_getScreenProps_result1_3_upvr then
							-- KONSTANTWARNING: GOTO [178] #136
						end
						-- KONSTANTERROR: [125] 94. Error Block 30 end (CF ANALYSIS FAILED)
					end;
				});
			});
			Border = Roact_upvr.createElement("Frame", {
				BackgroundColor3 = arg1_6.Theme.Divider.Color;
				BackgroundTransparency = arg1_6.Theme.Divider.Transparency;
				BorderSizePixel = 0;
				Position = UDim2.new(0.37, 0, 0, 0);
				Size = UDim2.new(0, 1, 1, 0);
			});
			RightContainerProviders = Roact_upvr.createElement(RightContainerTelemetryProviders_upvr, {}, {
				RightContainer = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(0.63, -1, 1, 0);
					Position = UDim2.new(0.37, 1, 0, 0);
					ClipsDescendants = true;
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
				}, {
					Content = Roact_upvr.createElement(Provider_upvr, {
						value = {
							left = any_isNotNil_result1_upvr.getScreenProps("appChatInnerPadding", 12);
							right = any_isNotNil_result1_upvr.getScreenProps("appChatOuterPadding", 12);
						};
					}, {
						ConversationSwitchNavigator = Roact_upvr.createElement(conversationSwitchNavigator_upvr, {
							navigation = any_isNotNil_result1_upvr;
						});
					});
				});
			});
		})
	end)
end
any_extend_result1.render = render
function any_extend_result1.didMount(arg1) -- Line 308
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