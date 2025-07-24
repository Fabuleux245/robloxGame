-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:21
-- Luau version 6, Types version 3
-- Time taken: 0.000793 seconds

local fireEventStream_upvr = require(script.Parent.Parent.FireEvent.fireEventStream)
local EventStreamEventList_upvr = require(script.Parent.EventStreamEventList)
local fireDiagCounter_upvr = require(script.Parent.Parent.FireEvent.fireDiagCounter)
local DiagEventList_upvr = require(script.Parent.DiagEventList)
return function(arg1) -- Line 8
	--[[ Upvalues[4]:
		[1]: fireEventStream_upvr (readonly)
		[2]: EventStreamEventList_upvr (readonly)
		[3]: fireDiagCounter_upvr (readonly)
		[4]: DiagEventList_upvr (readonly)
	]]
	local fireEventStream_upvr_result1_upvr = fireEventStream_upvr({
		eventStreamImpl = arg1.analytics.EventStream;
		eventList = EventStreamEventList_upvr;
		loggerImpl = arg1.loggerImpl;
		infoForAllEvents = arg1.infoForAllEvents;
	})
	local fireDiagCounter_upvr_result1_upvr = fireDiagCounter_upvr({
		diagImpl = arg1.analytics.Diag;
		eventList = DiagEventList_upvr;
		loggerImpl = arg1.loggerImpl;
	})
	return function(arg1_2, arg2) -- Line 21
		--[[ Upvalues[4]:
			[1]: EventStreamEventList_upvr (copied, readonly)
			[2]: fireEventStream_upvr_result1_upvr (readonly)
			[3]: DiagEventList_upvr (copied, readonly)
			[4]: fireDiagCounter_upvr_result1_upvr (readonly)
		]]
		if EventStreamEventList_upvr[arg1_2] then
			fireEventStream_upvr_result1_upvr(arg1_2, arg2)
		end
		if DiagEventList_upvr[arg1_2] then
			fireDiagCounter_upvr_result1_upvr(arg1_2)
		end
		return DateTime.now()
	end
end