-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:49
-- Luau version 6, Types version 3
-- Time taken: 0.002881 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local React_upvr = require(Parent.React)
local Foundation_upvr = require(Parent.Foundation)
local Responsive_upvr = require(Parent.Responsive)
local configureTopBarWithNavigationOptions_upvr = require(AppChat.configureTopBarWithNavigationOptions)
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
local AppFocusRoot_upvr = FocusNavigationUtils.AppFocusRoot
local function _(arg1) -- Line 22, Named "wrapInOverlay"
	--[[ Upvalues[8]:
		[1]: Responsive_upvr (readonly)
		[2]: FocusNavigationEventNameEnum_upvr (readonly)
		[3]: InputHandlers_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: AppFocusRoot_upvr (readonly)
		[6]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[7]: Foundation_upvr (readonly)
		[8]: configureTopBarWithNavigationOptions_upvr (readonly)
	]]
	return function(arg1_2) -- Line 23
		--[[ Upvalues[9]:
			[1]: Responsive_upvr (copied, readonly)
			[2]: FocusNavigationEventNameEnum_upvr (copied, readonly)
			[3]: InputHandlers_upvr (copied, readonly)
			[4]: React_upvr (copied, readonly)
			[5]: AppFocusRoot_upvr (copied, readonly)
			[6]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
			[7]: Foundation_upvr (copied, readonly)
			[8]: configureTopBarWithNavigationOptions_upvr (copied, readonly)
			[9]: arg1 (readonly)
		]]
		local Small = Responsive_upvr.Keys.Small
		local var14
		if Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small) then
			Small = -24
		else
			Small = -360
		end
		if Responsive_upvr.useBreakpointYOrSmaller(Small) then
			var14 = -24
		else
			var14 = -72
		end
		return React_upvr.createElement(AppFocusRoot_upvr, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			shouldRestoreFocus = true;
			isAutoFocusRoot = true;
			isFocusable = true;
			customEventHandlers = {
				[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
					handler = InputHandlers_upvr.onRelease(function(arg1_3) -- Line 37
						--[[ Upvalues[1]:
							[1]: arg1_2 (readonly)
						]]
						arg1_2.navigation.goBack()
						arg1_3:cancel()
					end);
				};
			};
		}, {
			overlayImage = React_upvr.createElement(Foundation_upvr.View, {
				tag = "col position-center-center anchor-center-center bg-surface-300 radius-small padding-xxsmall clip";
				Size = UDim2.new(1, Small, 1, var14);
			}, {
				sizeConstraint = React_upvr.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(1000, 800);
					MinSize = Vector2.new(0, 0);
				});
				topBar = configureTopBarWithNavigationOptions_upvr(arg1_2.navigation);
				overlayContent = React_upvr.createElement(arg1, arg1_2);
			});
		})
	end
end
local RoactNavigation_upvr = require(Parent.RoactNavigation)
return function(arg1) -- Line 67
	--[[ Upvalues[9]:
		[1]: RoactNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: FocusNavigationEventNameEnum_upvr (readonly)
		[5]: InputHandlers_upvr (readonly)
		[6]: AppFocusRoot_upvr (readonly)
		[7]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[8]: Foundation_upvr (readonly)
		[9]: configureTopBarWithNavigationOptions_upvr (readonly)
	]]
	local any_createRobloxStackNavigator_result1_upvr = RoactNavigation_upvr.createRobloxStackNavigator(arg1)
	local any_extend_result1 = React_upvr.PureComponent:extend("OverlayNavigatorConnector")
	any_extend_result1.router = any_createRobloxStackNavigator_result1_upvr.router
	local function var27_upvr(arg1_4) -- Line 23
		--[[ Upvalues[9]:
			[1]: Responsive_upvr (copied, readonly)
			[2]: FocusNavigationEventNameEnum_upvr (copied, readonly)
			[3]: InputHandlers_upvr (copied, readonly)
			[4]: React_upvr (copied, readonly)
			[5]: AppFocusRoot_upvr (copied, readonly)
			[6]: FocusNavigableSurfaceIdentifierEnum_upvr (copied, readonly)
			[7]: Foundation_upvr (copied, readonly)
			[8]: configureTopBarWithNavigationOptions_upvr (copied, readonly)
			[9]: any_createRobloxStackNavigator_result1_upvr (readonly)
		]]
		local Small_2 = Responsive_upvr.Keys.Small
		local var29
		if Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small) then
			Small_2 = -24
		else
			Small_2 = -360
		end
		if Responsive_upvr.useBreakpointYOrSmaller(Small_2) then
			var29 = -24
		else
			var29 = -72
		end
		return React_upvr.createElement(AppFocusRoot_upvr, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			shouldRestoreFocus = true;
			isAutoFocusRoot = true;
			isFocusable = true;
			customEventHandlers = {
				[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
					handler = InputHandlers_upvr.onRelease(function(arg1_5) -- Line 37
						--[[ Upvalues[1]:
							[1]: arg1_4 (readonly)
						]]
						arg1_4.navigation.goBack()
						arg1_5:cancel()
					end);
				};
			};
		}, {
			overlayImage = React_upvr.createElement(Foundation_upvr.View, {
				tag = "col position-center-center anchor-center-center bg-surface-300 radius-small padding-xxsmall clip";
				Size = UDim2.new(1, Small_2, 1, var29);
			}, {
				sizeConstraint = React_upvr.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(1000, 800);
					MinSize = Vector2.new(0, 0);
				});
				topBar = configureTopBarWithNavigationOptions_upvr(arg1_4.navigation);
				overlayContent = React_upvr.createElement(any_createRobloxStackNavigator_result1_upvr, arg1_4);
			});
		})
	end
	function any_extend_result1.render(arg1_6) -- Line 74
		--[[ Upvalues[2]:
			[1]: React_upvr (copied, readonly)
			[2]: var27_upvr (readonly)
		]]
		return React_upvr.createElement(var27_upvr, arg1_6.props)
	end
	return any_extend_result1
end