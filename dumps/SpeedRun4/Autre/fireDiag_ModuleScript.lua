-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:12
-- Luau version 6, Types version 3
-- Time taken: 0.000730 seconds

local function var1_upvr(arg1) -- Line 13
	return `Fired Diag {arg1.type}: {arg1.name}, {arg1.value}`
end
local Dash_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.Dash)
local getEventInfo_upvr = require(script.Parent.getEventInfo)
local getFormattedDiagEventInfo_upvr = require(script.Parent.getFormattedDiagEventInfo)
local reportDiagEvent_upvr = require(script.Parent.reportDiagEvent)
local optionallyLog_upvr = require(script.Parent.optionallyLog)
return function(arg1) -- Line 17
	--[[ Upvalues[6]:
		[1]: Dash_upvr (readonly)
		[2]: getEventInfo_upvr (readonly)
		[3]: getFormattedDiagEventInfo_upvr (readonly)
		[4]: reportDiagEvent_upvr (readonly)
		[5]: optionallyLog_upvr (readonly)
		[6]: var1_upvr (readonly)
	]]
	return function(arg1_2, arg2) -- Line 18
		--[[ Upvalues[7]:
			[1]: Dash_upvr (copied, readonly)
			[2]: getEventInfo_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: getFormattedDiagEventInfo_upvr (copied, readonly)
			[5]: reportDiagEvent_upvr (copied, readonly)
			[6]: optionallyLog_upvr (copied, readonly)
			[7]: var1_upvr (copied, readonly)
		]]
		return Dash_upvr.compose(getEventInfo_upvr(arg1.eventList), getFormattedDiagEventInfo_upvr(), reportDiagEvent_upvr(arg1.diagImpl), optionallyLog_upvr(arg1.loggerImpl, var1_upvr))(arg1_2, arg2)
	end
end