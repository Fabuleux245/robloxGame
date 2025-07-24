-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:13
-- Luau version 6, Types version 3
-- Time taken: 0.002636 seconds

local Parent = script.Parent.Parent.Parent
local llama_upvr = require(Parent.dependencies).llama
local isEnum_upvr = require(script.Parent.Parent.Parent.Utils.isEnum)
local function _(arg1) -- Line 15
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: isEnum_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	return llama_upvr.Dictionary.map(var5, function(arg1_2) -- Line 16
		--[[ Upvalues[1]:
			[1]: isEnum_upvr (copied, readonly)
		]]
		if isEnum_upvr(arg1_2) then
			return arg1_2.rawValue()
		end
		return arg1_2
	end)
end
local function var7_upvr(arg1, arg2) -- Line 27
	--[[ Upvalues[1]:
		[1]: llama_upvr (readonly)
	]]
	if not arg1 or not arg2 then
		return {}
	end
	return llama_upvr.Dictionary.map(arg1, function(arg1_3, arg2_2) -- Line 32
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: llama_upvr (copied, readonly)
		]]
		local var9 = arg2[arg2_2]
		if var9 then
			if type(var9) == "function" then
				return var9(arg1_3)
			end
			return arg1_3
		end
		return llama_upvr.None
	end)
end
local toStringAdditionalArgs_upvr = require(script.Parent.toStringAdditionalArgs)
local function var10_upvr(arg1) -- Line 42
	--[[ Upvalues[1]:
		[1]: toStringAdditionalArgs_upvr (readonly)
	]]
	return string.format("context: (%s), eventName: (%s), additionalInfo: (%s)", arg1.context, arg1.eventType, toStringAdditionalArgs_upvr(arg1.additionalInfo))
end
local function var12_upvr(arg1, arg2) -- Line 51
	return function(arg1_4) -- Line 52
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg2 then
			arg1:sendEventDeferred(arg1_4.context, arg1_4.eventType, arg1_4.additionalInfo)
			return arg1_4
		end
		arg1:setRBXEventStream(arg1_4.context, arg1_4.eventType, arg1_4.additionalInfo)
		return arg1_4
	end
end
local getEventInfo_upvr = require(script.Parent.getEventInfo)
local Dash_upvr = require(Parent.Parent.Dash)
local optionallyLog_upvr = require(script.Parent.optionallyLog)
return function(arg1) -- Line 63
	--[[ Upvalues[8]:
		[1]: getEventInfo_upvr (readonly)
		[2]: var12_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: optionallyLog_upvr (readonly)
		[5]: var10_upvr (readonly)
		[6]: llama_upvr (readonly)
		[7]: isEnum_upvr (readonly)
		[8]: var7_upvr (readonly)
	]]
	local getEventInfo_upvr_result1_upvr = getEventInfo_upvr(arg1.eventList)
	return function(arg1_5, arg2) -- Line 73
		--[[ Upvalues[9]:
			[1]: getEventInfo_upvr_result1_upvr (readonly)
			[2]: var12_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Dash_upvr (copied, readonly)
			[5]: optionallyLog_upvr (copied, readonly)
			[6]: var10_upvr (copied, readonly)
			[7]: llama_upvr (copied, readonly)
			[8]: isEnum_upvr (copied, readonly)
			[9]: var7_upvr (copied, readonly)
		]]
		local getEventInfo_upvr_result1_upvr_result1 = getEventInfo_upvr_result1_upvr(arg1_5)
		local var21
		if arg1.getInfoForAllEvents then
			var21 = arg1.getInfoForAllEvents()
		else
			var21 = arg1.infoForAllEvents
		end
		local shouldUseSendEventDeferred_upvr = arg1.shouldUseSendEventDeferred
		local eventStreamImpl_upvr = arg1.eventStreamImpl
		eventStreamImpl_upvr = optionallyLog_upvr
		shouldUseSendEventDeferred_upvr = arg1.loggerImpl
		eventStreamImpl_upvr = eventStreamImpl_upvr(shouldUseSendEventDeferred_upvr, var10_upvr)
		local tbl = {}
		eventStreamImpl_upvr = getEventInfo_upvr_result1_upvr_result1.context
		tbl.context = eventStreamImpl_upvr
		eventStreamImpl_upvr = getEventInfo_upvr_result1_upvr_result1.eventType
		tbl.eventType = eventStreamImpl_upvr
		shouldUseSendEventDeferred_upvr = llama_upvr.Dictionary
		eventStreamImpl_upvr = shouldUseSendEventDeferred_upvr.join
		shouldUseSendEventDeferred_upvr = var21
		local var26 = shouldUseSendEventDeferred_upvr
		if not var26 then
			var26 = {}
		end
		local additionalInfo = getEventInfo_upvr_result1_upvr_result1.additionalInfo
		if not additionalInfo then
			additionalInfo = {}
		end
		eventStreamImpl_upvr = eventStreamImpl_upvr(var26, llama_upvr.Dictionary.map(additionalInfo, function(arg1_7) -- Line 16
			--[[ Upvalues[1]:
				[1]: isEnum_upvr (copied, readonly)
			]]
			if isEnum_upvr(arg1_7) then
				return arg1_7.rawValue()
			end
			return arg1_7
		end), var7_upvr(arg2, getEventInfo_upvr_result1_upvr_result1.formatRulesForAdditionalInfo))
		tbl.additionalInfo = eventStreamImpl_upvr
		Dash_upvr.compose(function(arg1_6) -- Line 52
			--[[ Upvalues[2]:
				[1]: shouldUseSendEventDeferred_upvr (readonly)
				[2]: eventStreamImpl_upvr (readonly)
			]]
			if shouldUseSendEventDeferred_upvr then
				eventStreamImpl_upvr:sendEventDeferred(arg1_6.context, arg1_6.eventType, arg1_6.additionalInfo)
				return arg1_6
			end
			eventStreamImpl_upvr:setRBXEventStream(arg1_6.context, arg1_6.eventType, arg1_6.additionalInfo)
			return arg1_6
		end, eventStreamImpl_upvr)(tbl)
		return arg1_5, arg2
	end
end