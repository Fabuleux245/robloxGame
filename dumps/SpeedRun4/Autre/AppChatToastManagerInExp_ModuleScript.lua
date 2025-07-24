-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:03
-- Luau version 6, Types version 3
-- Time taken: 0.001781 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_upvr = {
	hideAllChatToasts = false;
	isAppChatVisible = false;
}
local Cryo_upvr = require(Parent.Cryo)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local EnteredChatFromEntryPoint_upvr = require(AppChat.Actions.EnteredChatFromEntryPoint)
local SocialCommon_upvr = require(Parent.SocialCommon)
local AppChatToastEventReceiver_upvr = require(AppChat.Components.EventReceivers.AppChatToastEventReceiver)
local GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr = require(Parent.SharedFlags).GetFFlagAppChatInExpToastSnoozeMenuDismissFix
function AppChatToastManagerInExp(arg1) -- Line 28
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: EnteredChatFromEntryPoint_upvr (readonly)
		[6]: SocialCommon_upvr (readonly)
		[7]: AppChatToastEventReceiver_upvr (readonly)
		[8]: GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local tbl = {}
	local navigateToChat = any_join_result1_upvr.navigateToChat
	tbl[1] = useDispatch_upvr_result1_upvr
	tbl[2] = navigateToChat
	local module = {
		navigateToChat = React_upvr.useCallback(function(arg1_2) -- Line 33
			--[[ Upvalues[4]:
				[1]: any_join_result1_upvr (readonly)
				[2]: useDispatch_upvr_result1_upvr (readonly)
				[3]: EnteredChatFromEntryPoint_upvr (copied, readonly)
				[4]: SocialCommon_upvr (copied, readonly)
			]]
			any_join_result1_upvr.navigateToChat(arg1_2)
			useDispatch_upvr_result1_upvr(EnteredChatFromEntryPoint_upvr(SocialCommon_upvr.Enums.ChatEntryPointNames.ToastInExp))
		end, tbl);
	}
	if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
		navigateToChat = nil
	else
		navigateToChat = any_join_result1_upvr.hideAllChatToasts
	end
	module.hideAllChatToasts = navigateToChat
	if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
		navigateToChat = any_join_result1_upvr.isAppChatVisible
	else
		navigateToChat = nil
	end
	module.isAppChatVisible = navigateToChat
	navigateToChat = true
	module.isInExperience = navigateToChat
	return React_upvr.createElement(AppChatToastEventReceiver_upvr, module)
end
return AppChatToastManagerInExp