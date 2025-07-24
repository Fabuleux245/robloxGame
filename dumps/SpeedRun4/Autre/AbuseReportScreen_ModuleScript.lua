-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:25
-- Luau version 6, Types version 3
-- Time taken: 0.001491 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local React_upvr = require(Parent.React)
local FocusNavigationEventNameEnum_upvr = FocusNavigationUtils.FocusNavigationEventNameEnum
local InputHandlers_upvr = require(Parent.InputHandlers)
local Frame_upvr = require(AppChat.Components.Common.Frame)
local ChatAbuseReport_upvr = require(script.Parent.ChatAbuseReport)
local FFlagEnableAppChatFocusableFixes_upvr = require(Parent.SharedFlags).FFlagEnableAppChatFocusableFixes
local AppFocusRoot_upvr = FocusNavigationUtils.AppFocusRoot
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
return function(arg1) -- Line 18, Named "AbuseReportScreen"
	--[[ Upvalues[8]:
		[1]: React_upvr (readonly)
		[2]: FocusNavigationEventNameEnum_upvr (readonly)
		[3]: InputHandlers_upvr (readonly)
		[4]: Frame_upvr (readonly)
		[5]: ChatAbuseReport_upvr (readonly)
		[6]: FFlagEnableAppChatFocusableFixes_upvr (readonly)
		[7]: AppFocusRoot_upvr (readonly)
		[8]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
	]]
	local navigation_upvr = arg1.navigation
	local any_createElement_result1 = React_upvr.createElement(Frame_upvr, {
		horizontalAlignment = Enum.HorizontalAlignment.Center;
		verticalAlignment = Enum.VerticalAlignment.Center;
		Size = UDim2.new(1, 0, 1, 0);
	}, {
		constraint = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(800, 450);
		});
		padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 12);
			PaddingBottom = UDim.new(0, 12);
			PaddingLeft = UDim.new(0, 12);
			PaddingRight = UDim.new(0, 12);
		});
		abuseReportFlow = React_upvr.createElement(ChatAbuseReport_upvr, {
			conversationId = navigation_upvr.getParam("conversationId", nil);
			participantId = navigation_upvr.getParam("participantId", nil);
			onAbandon = navigation_upvr.pop;
			onComplete = navigation_upvr.pop;
		});
	})
	if FFlagEnableAppChatFocusableFixes_upvr then
		return React_upvr.createElement(AppFocusRoot_upvr, {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
			isIsolated = true;
			isAutoFocusRoot = true;
			isFocusable = true;
			customEventHandlers = React_upvr.useMemo(function() -- Line 23
				--[[ Upvalues[3]:
					[1]: FocusNavigationEventNameEnum_upvr (copied, readonly)
					[2]: InputHandlers_upvr (copied, readonly)
					[3]: navigation_upvr (readonly)
				]]
				return {
					[FocusNavigationEventNameEnum_upvr.NavigateBack] = {
						handler = InputHandlers_upvr.onRelease(function(arg1_2) -- Line 26
							--[[ Upvalues[1]:
								[1]: navigation_upvr (copied, readonly)
							]]
							navigation_upvr.pop()
							arg1_2:cancel()
						end);
					};
				}
			end, {navigation_upvr});
		}, {any_createElement_result1})
	end
	return any_createElement_result1
end