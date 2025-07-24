-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:45
-- Luau version 6, Types version 3
-- Time taken: 0.001219 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local ConversationOverlayContainer_upvr = require(script.Parent.ConversationOverlayContainer)
return function(arg1) -- Line 12
	--[[ Upvalues[4]:
		[1]: useNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: EnumScreens_upvr (readonly)
		[4]: ConversationOverlayContainer_upvr (readonly)
	]]
	local var4_result1_upvr = useNavigation_upvr()
	local var9 = var4_result1_upvr
	if var9 then
		var9 = var4_result1_upvr.getParam("conversationId", nil)
	end
	return React_upvr.createElement(ConversationOverlayContainer_upvr, {
		conversationId = var9;
		dismissModal = React_upvr.useCallback(function() -- Line 15
			--[[ Upvalues[2]:
				[1]: var4_result1_upvr (readonly)
				[2]: EnumScreens_upvr (copied, readonly)
			]]
			if var4_result1_upvr and var4_result1_upvr.state.routeName == EnumScreens_upvr.ConversationOverlay then
				var4_result1_upvr.goBack(var4_result1_upvr.state.key)
			end
		end, {var4_result1_upvr});
	})
end