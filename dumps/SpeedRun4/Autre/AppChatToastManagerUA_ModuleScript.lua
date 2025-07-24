-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:04
-- Luau version 6, Types version 3
-- Time taken: 0.001154 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local NavigateIntoChat_upvr = require(AppChat.Conversations.Thunks.NavigateIntoChat)
local EnteredChatFromEntryPoint_upvr = require(AppChat.Actions.EnteredChatFromEntryPoint)
local SocialCommon_upvr = require(Parent.SocialCommon)
local AppChatToastEventReceiver_upvr = require(AppChat.Components.EventReceivers.AppChatToastEventReceiver)
function AppChatToastManagerUA() -- Line 14
	--[[ Upvalues[6]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: NavigateIntoChat_upvr (readonly)
		[4]: EnteredChatFromEntryPoint_upvr (readonly)
		[5]: SocialCommon_upvr (readonly)
		[6]: AppChatToastEventReceiver_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return React_upvr.createElement(AppChatToastEventReceiver_upvr, {
		navigateToChat = React_upvr.useCallback(function(arg1) -- Line 17
			--[[ Upvalues[4]:
				[1]: useDispatch_upvr_result1_upvr (readonly)
				[2]: NavigateIntoChat_upvr (copied, readonly)
				[3]: EnteredChatFromEntryPoint_upvr (copied, readonly)
				[4]: SocialCommon_upvr (copied, readonly)
			]]
			local tbl = {}
			tbl.conversationId = arg1
			useDispatch_upvr_result1_upvr(NavigateIntoChat_upvr(tbl, true))
			useDispatch_upvr_result1_upvr(EnteredChatFromEntryPoint_upvr(SocialCommon_upvr.Enums.ChatEntryPointNames.ToastUniversalApp))
		end, {useDispatch_upvr_result1_upvr});
	})
end
return AppChatToastManagerUA