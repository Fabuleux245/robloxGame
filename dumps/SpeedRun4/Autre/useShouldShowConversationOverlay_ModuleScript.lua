-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:14
-- Luau version 6, Types version 3
-- Time taken: 0.000798 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local ConversationOverlay_upvr = require(Parent.AppChatNetworking).Constants.ConversationOverlay
local tbl_upvr = {
	[ConversationOverlay_upvr.TrustedConnectionCreated] = true;
}
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local Logger_upvr = require(AppChat.Logger)
return function(arg1) -- Line 16
	--[[ Upvalues[5]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue2_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: ConversationOverlay_upvr (readonly)
		[5]: Logger_upvr (readonly)
	]]
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 17
		--[[ Upvalues[2]:
			[1]: getDeepValue2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getDeepValue2_upvr(arg1_2, `ChatAppReducer.Modals.conversationOverlays.{arg1}.modal_variant`) or ""
	end)
	local var11 = tbl_upvr[useSelector_upvr_result1]
	if not var11 and useSelector_upvr_result1 ~= ConversationOverlay_upvr.None and useSelector_upvr_result1 ~= "" then
		Logger_upvr:warning(`Unsupported ConversationOverlay modal variant: {useSelector_upvr_result1} for conversationId: {arg1}`)
	end
	return not not var11
end