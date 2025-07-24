-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:45
-- Luau version 6, Types version 3
-- Time taken: 0.001993 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local AppChatNetworking = require(Parent.AppChatNetworking)
local React_upvr = require(Parent.React)
local tbl_2_upvr = {
	[AppChatNetworking.Constants.ConversationOverlay.TrustedConnectionCreated] = require(script.Parent.TrustedContactsUpsellContainer);
}
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local ModalConfiguration_upvr = require(AppChat.Models.ModalConfiguration)
local useShouldShowConversationOverlay_upvr = require(AppChat.Hooks.useShouldShowConversationOverlay)
local useRecordModalSeenWithDelay_upvr = require(AppChat.Hooks.useRecordModalSeenWithDelay)
local ModalSequence_upvr = AppChatNetworking.Constants.ModalSequence
local FFlagAppChatFixModalRecordEvent_upvr = require(AppChat.Flags.FFlagAppChatFixModalRecordEvent)
local FIntAppChatModalSeenImpressionDelayMs_upvr = require(AppChat.Flags.FIntAppChatModalSeenImpressionDelayMs)
return React_upvr.memo(function(arg1) -- Line 35
	--[[ Upvalues[10]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue2_upvr (readonly)
		[3]: ModalConfiguration_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: useShouldShowConversationOverlay_upvr (readonly)
		[6]: useRecordModalSeenWithDelay_upvr (readonly)
		[7]: ModalSequence_upvr (readonly)
		[8]: FFlagAppChatFixModalRecordEvent_upvr (readonly)
		[9]: FIntAppChatModalSeenImpressionDelayMs_upvr (readonly)
		[10]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 37
		--[[ Upvalues[3]:
			[1]: getDeepValue2_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ModalConfiguration_upvr (copied, readonly)
		]]
		local getDeepValue2_upvr_result1 = getDeepValue2_upvr(arg1_2, `ChatAppReducer.Modals.conversationOverlays.{arg1.conversationId}`)
		if not getDeepValue2_upvr_result1 then
			getDeepValue2_upvr_result1 = ModalConfiguration_upvr.default
		end
		return getDeepValue2_upvr_result1
	end)
	local modal_layout = useSelector_upvr_result1.modal_layout
	local var19 = tbl_2_upvr[useSelector_upvr_result1.modal_variant]
	local var20
	if useShouldShowConversationOverlay_upvr(arg1.conversationId) then
		if var19 == nil then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
	end
	local tbl = {}
	var20 = ModalSequence_upvr.ConversationOverlay
	tbl.modalSequence = var20
	var20 = modal_layout.id
	tbl.modalId = var20
	if FFlagAppChatFixModalRecordEvent_upvr then
		var20 = useSelector_upvr_result1.modal_variant
	else
		var20 = nil
	end
	tbl.modalVariant = var20
	var20 = modal_layout.seen_record_action
	tbl.actionToRecord = var20
	var20 = FIntAppChatModalSeenImpressionDelayMs_upvr
	tbl.delayMs = var20
	tbl.canRecordAction = true
	var20 = arg1.conversationId
	tbl.conversationId = var20
	useRecordModalSeenWithDelay_upvr(tbl)
	local var24_upvr = true
	var20 = {}
	var20[1] = var24_upvr
	React_upvr.useEffect(function() -- Line 56
		--[[ Upvalues[2]:
			[1]: var24_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if not var24_upvr then
			arg1.dismissModal()
		end
	end, var20)
	if var24_upvr then
		var20 = {}
		var20.conversationId = arg1.conversationId
		var20.modalConfiguration = useSelector_upvr_result1
		var20.dismissModal = arg1.dismissModal
		return React_upvr.createElement(var19, var20)
	end
	return nil
end)