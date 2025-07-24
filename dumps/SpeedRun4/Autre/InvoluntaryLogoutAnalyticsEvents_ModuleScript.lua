-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:06
-- Luau version 6, Types version 3
-- Time taken: 0.000665 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local module = {}
local FFlagRecordLandingPageDuration_upvr = require(Parent.SharedFlags).FFlagRecordLandingPageDuration
local EventStreamConstants_upvr = require(Parent.AuthAnalytics).EventStreamConstants
local any_new_result1_upvr = require(AuthCommon.dependencies).Analytics.AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"))
function module.sendImmediatelyPageLoadEvent(arg1, arg2) -- Line 12
	--[[ Upvalues[3]:
		[1]: FFlagRecordLandingPageDuration_upvr (readonly)
		[2]: EventStreamConstants_upvr (readonly)
		[3]: any_new_result1_upvr (readonly)
	]]
	local tbl = {}
	tbl.origin = arg1
	tbl.state = arg2 or ""
	if FFlagRecordLandingPageDuration_upvr then
		tbl[EventStreamConstants_upvr.EventTimingKeys.OsClock] = tostring(os.clock())
		tbl[EventStreamConstants_upvr.EventTimingKeys.OsTime] = tostring(os.time())
	end
	any_new_result1_upvr:sendEventImmediately(EventStreamConstants_upvr.Context.InvoluntaryLogout, EventStreamConstants_upvr.AuthEventName.AuthPageLoad, tbl)
end
return module