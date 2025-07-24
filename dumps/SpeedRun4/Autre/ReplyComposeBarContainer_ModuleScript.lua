-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:58
-- Luau version 6, Types version 3
-- Time taken: 0.006712 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local tbl_2_upvr = {
	LayoutOrder = 3;
	message = nil;
	close = function() -- Line 43, Named "close"
	end;
	inputBoxRef = nil;
	setReplyComposeBarHeight = function(arg1) -- Line 46, Named "setReplyComposeBarHeight"
	end;
	unknownUserKey = "Feature.Chat.Label.UnknownUser";
	replyingToYourselfKey = "Feature.Chat.Label.ReplyingToYourself";
	replyingToOthersKey = "Feature.Chat.Label.ReplyingToOthers";
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useAnalytics_upvr = require(AppChat.Analytics.useAnalytics)
local ReplyComposeBarConstants_upvr = require(script.Parent.ReplyComposeBarConstants)
local EventNames_upvr = require(AppChat.Analytics.EventNames)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local populateUserWithState_upvr = require(AppChat.Users.populateUserWithState)
local UserProfiles_upvr = require(Parent.UserProfiles)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ReplyComposeBar_upvr = require(script.Parent.ReplyComposeBar)
function ReplyComposeBarContainer(arg1) -- Line 53
	--[[ Upvalues[13]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useLocalUserId_upvr (readonly)
		[5]: useAnalytics_upvr (readonly)
		[6]: ReplyComposeBarConstants_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: EventNames_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: populateUserWithState_upvr (readonly)
		[11]: UserProfiles_upvr (readonly)
		[12]: useLocalization_upvr (readonly)
		[13]: ReplyComposeBar_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_2_upvr, arg1)
	local var8_result1_upvr = useAnalytics_upvr()
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_4) -- Line 65
		--[[ Upvalues[2]:
			[1]: var8_result1_upvr (readonly)
			[2]: any_union_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var36
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 36 start (CF ANALYSIS FAILED)
		if any_union_result1_upvr.message then
			var36 = any_union_result1_upvr.message.conversationId
		else
			var36 = nil
		end
		;({}).conversationId = var36
		if any_union_result1_upvr.message then
			var36 = any_union_result1_upvr.message.senderTargetId
			-- KONSTANTWARNING: GOTO [31] #24
		end
		-- KONSTANTERROR: [2] 3. Error Block 36 end (CF ANALYSIS FAILED)
	end, {any_union_result1_upvr.message})
	local var40_upvr = useStyle_upvr().Tokens.Global.Size_700 + ReplyComposeBarConstants_upvr.VERTICAL_PADDING * 2 + ReplyComposeBarConstants_upvr.BORDER_HEIGHT
	React_upvr.useEffect(function() -- Line 82
		--[[ Upvalues[4]:
			[1]: any_useCallback_result1_upvr_2 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: any_union_result1_upvr (readonly)
			[4]: var40_upvr (readonly)
		]]
		any_useCallback_result1_upvr_2(EventNames_upvr.ChatInputBarReplyComposeRendered)
		any_union_result1_upvr.setReplyComposeBarHeight(var40_upvr)
		return function() -- Line 86
			--[[ Upvalues[1]:
				[1]: any_union_result1_upvr (copied, readonly)
			]]
			any_union_result1_upvr.setReplyComposeBarHeight(0)
		end
	end, {})
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_5) -- Line 92
		--[[ Upvalues[2]:
			[1]: any_union_result1_upvr (readonly)
			[2]: populateUserWithState_upvr (copied, readonly)
		]]
		if arg1_5 and arg1_5.Users and any_union_result1_upvr.message.senderTargetId then
			local _ = arg1_5.Users[any_union_result1_upvr.message.senderTargetId]
		else
		end
		if nil then
			local module_2 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_2.targetUser = populateUserWithState_upvr(arg1_5, nil)
			return module_2
		end
		return {}
	end)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 63. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [86] 63. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 69. Error Block 41 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [96] 69. Error Block 41 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(ReplyComposeBarContainer)