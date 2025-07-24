-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:54
-- Luau version 6, Types version 3
-- Time taken: 0.006086 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
local function getActiveChildParams_upvr(arg1) -- Line 19, Named "getActiveChildParams"
	--[[ Upvalues[1]:
		[1]: getActiveChildParams_upvr (readonly)
	]]
	local routes_2 = arg1.routes
	if routes_2 then
		routes_2 = arg1.routes[arg1.index]
	end
	if routes_2 then
		return getActiveChildParams_upvr(routes_2)
	end
	return arg1.params
end
local function getActiveChildNavigationOptions_upvr(arg1) -- Line 29, Named "getActiveChildNavigationOptions"
	--[[ Upvalues[2]:
		[1]: getActiveChildNavigationOptions_upvr (readonly)
		[2]: RoactNavigation_upvr (readonly)
	]]
	local state_4 = arg1.state
	local var7
	if var7 then
		var7 = state_4.routes[state_4.index]
	end
	if var7 and var7.routes then
		return getActiveChildNavigationOptions_upvr(arg1.getChildNavigation(var7.key))
	end
	return RoactNavigation_upvr.getActiveChildNavigationOptions(arg1)
end
local function _(arg1) -- Line 42, Named "getActiveConversationId"
	if arg1 then
		if arg1.conversation then
			return arg1.conversation.id
		end
		return arg1.conversationId
	end
	return nil
end
local React_upvr = require(Parent.React)
local InputHandlers_upvr = require(Parent.InputHandlers)
local ReactFocusNavigation_upvr = require(Parent.ReactFocusNavigation)
local FocusNavigationEventNameEnum_upvr = require(Parent.FocusNavigationUtils).FocusNavigationEventNameEnum
local function RoactChatStackNavigatorWithFocusNavigation_upvr(arg1) -- Line 55, Named "RoactChatStackNavigatorWithFocusNavigation"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: InputHandlers_upvr (readonly)
		[3]: ReactFocusNavigation_upvr (readonly)
		[4]: FocusNavigationEventNameEnum_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		FocusNavigationContainer = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			ref = ReactFocusNavigation_upvr.useEventHandler(FocusNavigationEventNameEnum_upvr.NavigateBack, React_upvr.useCallback(InputHandlers_upvr.onRelease(function(arg1_2) -- Line 57
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.onNavigateBack() then
					arg1_2:cancel()
				end
			end), {arg1.onNavigateBack}));
		}, {
			navigator = Roact_upvr.createElement(arg1.navigator, {
				navigation = arg1.navigation;
			});
		});
	})
end
local EnumScreens_upvr = require(AppChat.EnumScreens)
local FFlagEnableAppChatFocusableFixes_upvr = require(Parent.SharedFlags).FFlagEnableAppChatFocusableFixes
return function(arg1, arg2, arg3, arg4) -- Line 81
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: getActiveChildNavigationOptions_upvr (readonly)
		[3]: RoactNavigation_upvr (readonly)
		[4]: EnumScreens_upvr (readonly)
		[5]: getActiveChildParams_upvr (readonly)
		[6]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[7]: RoactChatStackNavigatorWithFocusNavigation_upvr (readonly)
	]]
	local any_extend_result1 = Roact_upvr.PureComponent:extend("RoactChatStackNavigator")
	any_extend_result1.defaultProps = {
		navigation = nil;
		parameters = nil;
		setActiveConversationId = function() -- Line 92, Named "setActiveConversationId"
		end;
		setBackButtonEnabled = function() -- Line 93, Named "setBackButtonEnabled"
		end;
		setTabBarVisible = function() -- Line 94, Named "setTabBarVisible"
		end;
		notificationCount = 0;
	}
	function any_extend_result1.init(arg1_3) -- Line 98
		--[[ Upvalues[5]:
			[1]: getActiveChildNavigationOptions_upvr (copied, readonly)
			[2]: RoactNavigation_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: EnumScreens_upvr (copied, readonly)
			[5]: arg4 (readonly)
		]]
		arg1_3.backButtonConnection = nil
		function arg1_3.onBackButtonPressed() -- Line 102
			--[[ Upvalues[6]:
				[1]: arg1_3 (readonly)
				[2]: getActiveChildNavigationOptions_upvr (copied, readonly)
				[3]: RoactNavigation_upvr (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: EnumScreens_upvr (copied, readonly)
				[6]: arg4 (copied, readonly)
			]]
			local navigation_3 = arg1_3.props.navigation
			local state = navigation_3.state
			local var26
			if var26 then
				var26 = state.routes[state.index]
				local var27
			end
			if var26 and var26.routes then
				var27 = getActiveChildNavigationOptions_upvr(navigation_3.getChildNavigation(var26.key))
			else
				var27 = RoactNavigation_upvr.getActiveChildNavigationOptions(navigation_3)
			end
			if arg2 and var27.isRoot then
				var26 = arg1_3
				var26.props.navigation.navigate(EnumScreens_upvr.EmptyConversation)
				arg2()
				if arg4 and arg1_3.props.chatIsVisible then
					arg4.showExitDialog()
				end
				return false
			end
			var26 = arg1_3
			var26.props.navigation.pop()
			return true
		end
	end
	function any_extend_result1.willUpdate(arg1_4, arg2_2) -- Line 120
		--[[ Upvalues[3]:
			[1]: getActiveChildParams_upvr (copied, readonly)
			[2]: getActiveChildNavigationOptions_upvr (copied, readonly)
			[3]: RoactNavigation_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 71 start (CF ANALYSIS FAILED)
		local state_5 = arg1_4.props.navigation.state
		local routes = state_5.routes
		if routes then
			routes = state_5.routes[state_5.index]
		end
		if routes then
			local getActiveChildParams_upvr_result1 = getActiveChildParams_upvr(routes)
		else
		end
		local state_2 = arg2_2.navigation.state
		if state_2.routes then
		end
		if state_2.routes[state_2.index] then
		else
		end
		if state_5.params then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if state_5.params.conversation then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
			-- KONSTANTWARNING: GOTO [57] #41
		end
		-- KONSTANTERROR: [0] 1. Error Block 71 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [56] 40. Error Block 72 start (CF ANALYSIS FAILED)
		if state_2.params then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if state_2.params.conversation then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local _ = state_2.params.conversation.id
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		else
		end
		if nil ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1_4.props.setActiveConversationId(nil)
		end
		if not arg2_2.chatIsVisible then
		else
			local navigation = arg2_2.navigation
			local state_3 = navigation.state
			if state_3.routes then
				local var36 = state_3.routes[state_3.index]
			end
			if var36 and var36.routes then
				local _ = getActiveChildNavigationOptions_upvr(navigation.getChildNavigation(var36.key))
			else
			end
			if RoactNavigation_upvr.getActiveChildNavigationOptions(navigation) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if RoactNavigation_upvr.getActiveChildNavigationOptions(navigation).backButtonEnabled ~= nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					arg1_4.props.setBackButtonEnabled(RoactNavigation_upvr.getActiveChildNavigationOptions(navigation).backButtonEnabled)
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if RoactNavigation_upvr.getActiveChildNavigationOptions(navigation).tabBarVisible ~= nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					arg1_4.props.setTabBarVisible(RoactNavigation_upvr.getActiveChildNavigationOptions(navigation).tabBarVisible)
				end
			end
			-- KONSTANTERROR: [56] 40. Error Block 72 end (CF ANALYSIS FAILED)
		end
	end
	function any_extend_result1.didMount(arg1_5) -- Line 148
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: arg2 (readonly)
			[3]: EnumScreens_upvr (copied, readonly)
		]]
		local var38
		if arg3 and arg2 then
			arg1_5.backButtonConnection = arg3:connect(arg1_5.onBackButtonPressed)
		end
		var38 = arg1_5.props
		local parameters = var38.parameters
		var38 = parameters
		if var38 then
			var38 = parameters.conversationId
		end
		if var38 then
			arg1_5.props.navigation.navigate(EnumScreens_upvr.ChatConversation, {
				conversationId = var38;
			})
		end
	end
	function any_extend_result1.willUnmount(arg1_6) -- Line 161
		arg1_6.props.setActiveConversationId(nil)
		if arg1_6.backButtonConnection then
			arg1_6.backButtonConnection:disconnect()
		end
	end
	function any_extend_result1.render(arg1_7) -- Line 168
		--[[ Upvalues[4]:
			[1]: FFlagEnableAppChatFocusableFixes_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RoactChatStackNavigatorWithFocusNavigation_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local navigation_2 = arg1_7.props.navigation
		if FFlagEnableAppChatFocusableFixes_upvr then
			local module = {
				navigation = navigation_2;
			}
			module.navigator = arg1
			module.onNavigateBack = arg1_7.onBackButtonPressed
			return Roact_upvr.createElement(RoactChatStackNavigatorWithFocusNavigation_upvr, module)
		end
		return Roact_upvr.createElement(arg1, {
			navigation = navigation_2;
		})
	end
	any_extend_result1.router = arg1.router
	return any_extend_result1
end