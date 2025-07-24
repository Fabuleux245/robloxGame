-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:51
-- Luau version 6, Types version 3
-- Time taken: 0.003464 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_upvr = {
	topBarHeight = 0;
	networkErrorText = "PLACEHOLDER There was a network error, please try again later";
	onConversationUnmount = function(arg1) -- Line 47, Named "onConversationUnmount"
	end;
	navigateToToast = function(arg1) -- Line 48, Named "navigateToToast"
	end;
	navigateBack = function() -- Line 49, Named "navigateBack"
	end;
	shouldShowPhoneVerificationUpsell = false;
	shouldShowIneligibleModal = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useState_upvr = React_upvr.useState
local useCallback_upvr = React_upvr.useCallback
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useRef_upvr = React_upvr.useRef
local ConversationExitType_upvr = require(AppChat.Analytics.Enums.ConversationExitType)
local useEffect_upvr = React_upvr.useEffect
local PendingStateIndicator_upvr = require(script.Parent.PendingStateIndicator)
local PendingStateModalContainer_upvr = require(script.Parent.PendingStateModalContainer)
return React_upvr.memo(function(arg1) -- Line 57, Named "PendingStateConversationPage"
	--[[ Upvalues[12]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useState_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: useRef_upvr (readonly)
		[8]: ConversationExitType_upvr (readonly)
		[9]: useEffect_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: PendingStateIndicator_upvr (readonly)
		[12]: PendingStateModalContainer_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var16 = any_join_result1_upvr.style or useStyle_upvr()
	local var7_result1, var7_result2_upvr = useState_upvr(0)
	local var10_result1_upvr = useRef_upvr(ConversationExitType_upvr.Default)
	useEffect_upvr(function() -- Line 86
		--[[ Upvalues[3]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var10_result1_upvr (readonly)
			[3]: ConversationExitType_upvr (copied, readonly)
		]]
		return function() -- Line 87
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (copied, readonly)
				[2]: var10_result1_upvr (copied, readonly)
				[3]: ConversationExitType_upvr (copied, readonly)
			]]
			any_join_result1_upvr.onConversationUnmount(var10_result1_upvr.current)
			var10_result1_upvr.current = ConversationExitType_upvr.Default
		end
	end, {})
	return React_upvr.createElement("TextButton", {
		BackgroundColor3 = var16.Theme.BackgroundDefault.Color;
		BorderSizePixel = 0;
		Size = UDim2.new(1, 0, 1, 0);
		Transparency = var16.Tokens.Global.Color.None.Transparency;
		Text = "";
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		[React_upvr.Event.TouchSwipe] = useCallback_upvr(function(arg1_3, arg2, arg3) -- Line 79
			--[[ Upvalues[3]:
				[1]: any_join_result1_upvr (readonly)
				[2]: var10_result1_upvr (readonly)
				[3]: ConversationExitType_upvr (copied, readonly)
			]]
			if not any_join_result1_upvr.wideMode and arg2 == Enum.SwipeDirection.Right and arg3 == 1 then
				var10_result1_upvr.current = ConversationExitType_upvr.SwipedRight
				any_join_result1_upvr.navigateBack()
			end
		end, {any_join_result1_upvr.wideMode, any_join_result1_upvr.navigateBack});
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		PendingStateIndicator = React_upvr.createElement(PendingStateIndicator_upvr, {
			layoutOrder = 1;
			size = UDim2.new(1, 0, 1, -var7_result1);
		});
		ConversationBottomModal = React_upvr.createElement(PendingStateModalContainer_upvr, {
			conversationId = any_join_result1_upvr.conversationId;
			showNetworkErrorToast = useCallback_upvr(function() -- Line 67
				--[[ Upvalues[1]:
					[1]: any_join_result1_upvr (readonly)
				]]
				any_join_result1_upvr.navigateToToast({
					toastProps = {
						toastContent = {
							toastTitle = any_join_result1_upvr.networkErrorText;
						};
					};
				})
			end, dependencyArray_upvr(any_join_result1_upvr.navigateToToast, any_join_result1_upvr.networkErrorText));
			layoutOrder = 2;
			onHeightChanged = useCallback_upvr(function(arg1_2) -- Line 63
				--[[ Upvalues[1]:
					[1]: var7_result2_upvr (readonly)
				]]
				var7_result2_upvr(arg1_2)
			end, dependencyArray_upvr(var7_result2_upvr));
		});
	})
end)