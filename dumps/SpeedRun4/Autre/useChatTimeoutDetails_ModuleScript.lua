-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:52:57
-- Luau version 6, Types version 3
-- Time taken: 0.002597 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local React_upvr = require(Parent.React)
local setTimeout_upvr = LuauPolyfill.setTimeout
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local clearTimeout_upvr = LuauPolyfill.clearTimeout
return function(arg1) -- Line 18, Named "useChatTimeoutDetails"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: setTimeout_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: getDeepValue2_upvr (readonly)
		[5]: ConversationChannels_upvr (readonly)
		[6]: clearTimeout_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(setTimeout_upvr(function() -- Line 20
	end, 1))
	local conversationId_upvr = arg1.conversationId
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 21
		--[[ Upvalues[2]:
			[1]: getDeepValue2_upvr (copied, readonly)
			[2]: conversationId_upvr (readonly)
		]]
		return {
			userTimeout = getDeepValue2_upvr(arg1_2, "ChatAppReducer.ChatTimeouts.userTimeout");
			conversationTimeout = getDeepValue2_upvr(arg1_2, `ChatAppReducer.ChatTimeouts.byConversationId.{conversationId_upvr}`);
		}
	end)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 27
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: ConversationChannels_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
		local var17
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var17 = arg1_3.userTimeout.endTimestamp
			return var17
		end
		if not arg1_3.userTimeout or not INLINED() then
			var17 = 0
		end
		if not arg1_3.conversationTimeout or not arg1_3.conversationTimeout.endTimestamp then
			local const_number = 0
		end
		local maximum = math.max(var17, const_number)
		if DateTime.now().UnixTimestamp < maximum then
			if arg1.conversationModerationType == ConversationChannels_upvr.ModerationType.TrustedComms then
			else
			end
		end
		if var17 < const_number then
			if arg1_3.conversationTimeout then
				-- KONSTANTWARNING: GOTO [62] #41
			end
		elseif arg1_3.userTimeout then
		end
		if var17 < const_number then
			if arg1_3.conversationTimeout then
				local duration = arg1_3.conversationTimeout.duration
				-- KONSTANTWARNING: GOTO [79] #51
			end
		elseif arg1_3.userTimeout then
		end
		-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [79] 51. Error Block 25 start (CF ANALYSIS FAILED)
		do
			return true, maximum, arg1_3.userTimeout.decisionEventId, arg1_3.userTimeout.duration
		end
		-- KONSTANTERROR: [79] 51. Error Block 25 end (CF ANALYSIS FAILED)
	end, {arg1.conversationModerationType})
	local any_useCallback_result1_upvr_result1, any_useCallback_result1_upvr_result2, any_useCallback_result1_upvr_result3, any_useCallback_result1_upvr_result4 = any_useCallback_result1_upvr(useSelector_upvr_result1_upvr)
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(any_useCallback_result1_upvr_result1)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(any_useCallback_result1_upvr_result2)
	React_upvr.useEffect(function() -- Line 49
		--[[ Upvalues[7]:
			[1]: clearTimeout_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: useSelector_upvr_result1_upvr (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
			[6]: setTimeout_upvr (copied, readonly)
			[7]: any_useState_result2_upvr (readonly)
		]]
		clearTimeout_upvr(any_useRef_result1_upvr.current)
		local any_useCallback_result1_upvr_result1_2, var22_result2 = any_useCallback_result1_upvr(useSelector_upvr_result1_upvr)
		if any_useCallback_result1_upvr_result1_2 then
			any_useState_result2_upvr_2(true)
			any_useRef_result1_upvr.current = setTimeout_upvr(function() -- Line 55
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_2 (copied, readonly)
				]]
				any_useState_result2_upvr_2(false)
			end, (var22_result2 - DateTime.now().UnixTimestamp + 1) * 1000)
		else
			any_useState_result2_upvr_2(false)
		end
		any_useState_result2_upvr(var22_result2)
	end, {any_useCallback_result1_upvr, useSelector_upvr_result1_upvr, any_useRef_result1_upvr})
	return {
		isTimedOut = any_useState_result1_2;
		timeoutEndTimestamp = any_useState_result1;
		decisionEventId = any_useCallback_result1_upvr_result3;
		duration = any_useCallback_result1_upvr_result4;
	}
end