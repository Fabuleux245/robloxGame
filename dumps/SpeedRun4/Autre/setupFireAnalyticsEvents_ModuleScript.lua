-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:26:38
-- Luau version 6, Types version 3
-- Time taken: 0.001025 seconds

local SocialLuaAnalytics = require(script.Parent.Parent.dependencies).SocialLuaAnalytics
local fireEventStream_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireEventStream
local AnalyticsEvents_upvr = require(script.Parent.AnalyticsEvents)
local fireDiagCounter_upvr = SocialLuaAnalytics.Analytics.FireEvent.fireDiagCounter
local DiagEvents_upvr = require(script.Parent.DiagEvents)
return function(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: fireEventStream_upvr (readonly)
		[2]: AnalyticsEvents_upvr (readonly)
		[3]: fireDiagCounter_upvr (readonly)
		[4]: DiagEvents_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {}
	local var9
	if arg1.analytics then
		var9 = arg1.analytics.EventStream
	else
		var9 = arg1.eventStreamImpl
	end
	tbl.eventStreamImpl = var9
	var9 = AnalyticsEvents_upvr
	tbl.eventList = var9
	var9 = arg1.defaultAnalyticsInfo
	tbl.infoForAllEvents = var9
	var9 = {}
	if arg1.analytics then
	else
	end
	var9.diagImpl = arg1.diag
	var9.eventList = DiagEvents_upvr
	local fireDiagCounter_upvr_result1_upvr = fireDiagCounter_upvr(var9)
	local var3_result1_upvr = fireEventStream_upvr(tbl)
	function var9(arg1_2, arg2) -- Line 28
		--[[ Upvalues[2]:
			[1]: fireDiagCounter_upvr_result1_upvr (readonly)
			[2]: var3_result1_upvr (readonly)
		]]
		fireDiagCounter_upvr_result1_upvr(arg1_2)
		var3_result1_upvr(arg1_2, arg2)
	end
	return var9
end