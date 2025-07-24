-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:12
-- Luau version 6, Types version 3
-- Time taken: 0.006705 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local useRecordModalSequenceResponseForConversation_upvr = require(AppChat.Hooks.useRecordModalSequenceResponseForConversation)
local FFlagAppChatFixModalRecordEvent_upvr = require(AppChat.Flags.FFlagAppChatFixModalRecordEvent)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local StatusCodes_upvr = require(Parent.Http).StatusCodes
local Logger_upvr = require(AppChat.Logger)
local setTimeout_upvr = LuauPolyfill.setTimeout
local clearTimeout_upvr = LuauPolyfill.clearTimeout
return function(arg1) -- Line 26, Named "useRecordModalSeenWithDelay"
	--[[ Upvalues[9]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useRecordModalSequenceResponseForConversation_upvr (readonly)
		[4]: FFlagAppChatFixModalRecordEvent_upvr (readonly)
		[5]: AppChatNetworking_upvr (readonly)
		[6]: StatusCodes_upvr (readonly)
		[7]: Logger_upvr (readonly)
		[8]: setTimeout_upvr (readonly)
		[9]: clearTimeout_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr_3 = useDispatch_upvr()
	local any_useState_result1_4, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local var6_result1_upvr_2 = useRecordModalSequenceResponseForConversation_upvr(arg1.conversationId)
	React_upvr.useEffect(function() -- Line 31
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_3 (readonly)
		]]
		any_useState_result2_upvr_3(false)
	end, {arg1.modalSequence, arg1.modalId, arg1.conversationId})
	local canRecordAction_upvr = arg1.canRecordAction
	if canRecordAction_upvr then
		canRecordAction_upvr = not any_useState_result1_4
		if canRecordAction_upvr then
			canRecordAction_upvr = arg1.actionToRecord
			if canRecordAction_upvr then
				canRecordAction_upvr = arg1.modalSequence
				if canRecordAction_upvr then
					canRecordAction_upvr = arg1.modalId
				end
			end
		end
	end
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 41
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: var6_result1_upvr_2 (readonly)
			[3]: FFlagAppChatFixModalRecordEvent_upvr (copied, readonly)
			[4]: useDispatch_upvr_result1_upvr_3 (readonly)
			[5]: AppChatNetworking_upvr (copied, readonly)
			[6]: StatusCodes_upvr (copied, readonly)
			[7]: any_useState_result2_upvr_3 (readonly)
			[8]: Logger_upvr (copied, readonly)
		]]
		local var78 = arg1
		if arg1.conversationId then
			var78 = var6_result1_upvr_2
			local var79 = arg1
			if FFlagAppChatFixModalRecordEvent_upvr then
				var79 = arg1.modalVariant
			else
				var79 = nil
			end
			var78 = var78(var78.actionToRecord, arg1.modalSequence, var79.modalId, var79)
		else
			var78 = useDispatch_upvr_result1_upvr_3
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var78 = var78(AppChatNetworking_upvr.rodux.RecordModalSequenceResponse.API(var78.actionToRecord, arg1.modalSequence, arg1.modalId))
		end
		var78:andThen(function(arg1_8) -- Line 59
			--[[ Upvalues[2]:
				[1]: StatusCodes_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_3 (copied, readonly)
			]]
			if arg1_8 and arg1_8.responseCode == StatusCodes_upvr.OK then
				any_useState_result2_upvr_3(true)
			end
		end):catch(function(arg1_9) -- Line 64
			--[[ Upvalues[2]:
				[1]: Logger_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			Logger_upvr:warning(`Error in {arg1.modalSequence} {arg1.modalId} -> RecordModalSequenceResponse seen: {tostring(arg1_9)}`)
		end)
	end, {useDispatch_upvr_result1_upvr_3, arg1.actionToRecord, arg1.modalId, arg1.modalSequence, arg1.conversationId, var6_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 82
		--[[ Upvalues[5]:
			[1]: canRecordAction_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: setTimeout_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr_4 (readonly)
			[5]: clearTimeout_upvr (copied, readonly)
		]]
		local var85_upvw
		if canRecordAction_upvr then
			if arg1.delayMs and 0 < arg1.delayMs then
				var85_upvw = setTimeout_upvr(any_useCallback_result1_upvr_4, arg1.delayMs)
			else
				any_useCallback_result1_upvr_4()
			end
		end
		return function() -- Line 91
			--[[ Upvalues[2]:
				[1]: var85_upvw (read and write)
				[2]: clearTimeout_upvr (copied, readonly)
			]]
			if var85_upvw then
				clearTimeout_upvr(var85_upvw)
			end
		end
	end, {arg1.delayMs, any_useCallback_result1_upvr_4, canRecordAction_upvr})
end