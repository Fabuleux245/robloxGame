-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:15
-- Luau version 6, Types version 3
-- Time taken: 0.002183 seconds

local Parent = script.Parent.Parent
local dependencies = require(Parent.dependencies)
local SharedFlags = require(Parent.Parent.SharedFlags)
local FFlagIncludeAuthEventLocalTimestamp_upvr = SharedFlags.FFlagIncludeAuthEventLocalTimestamp
local EventStreamConstants_upvr = require(Parent.Constants.EventStreamConstants)
local Logging_upvr = dependencies.Logging
local FFlagEnableAuthAnalyticsPrintDebuggingDev_upvr = SharedFlags.FFlagEnableAuthAnalyticsPrintDebuggingDev
local any_new_result1_upvr = dependencies.Analytics.AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"))
return function(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[5]:
		[1]: FFlagIncludeAuthEventLocalTimestamp_upvr (readonly)
		[2]: EventStreamConstants_upvr (readonly)
		[3]: Logging_upvr (readonly)
		[4]: FFlagEnableAuthAnalyticsPrintDebuggingDev_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
	]]
	local tbl = {}
	if FFlagIncludeAuthEventLocalTimestamp_upvr then
		arg3[EventStreamConstants_upvr.EventTimingKeys.OsClock] = tostring(os.clock())
		arg3[EventStreamConstants_upvr.EventTimingKeys.OsTime] = tostring(os.time())
	end
	local pairs_result1, pairs_result2_2, pairs_result3_2 = pairs(arg3)
	for i, v in pairs_result1, pairs_result2_2, pairs_result3_2 do
		if type(i) == "string" then
			tbl[i] = v
		else
			Logging_upvr.warn("Failure logging "..arg2..": Expected "..i.." to be a string key but got "..type(i))
			return
		end
	end
	pairs_result1 = FFlagEnableAuthAnalyticsPrintDebuggingDev_upvr
	local var22
	if var22 then
		var22 = ""
		local pairs_result1_2, pairs_result2, pairs_result3 = pairs(tbl)
		for i_2, v_2 in pairs_result1_2, pairs_result2, pairs_result3 do
			var22 = var22..i_2..": "..tostring(v_2)..", "
		end
		pairs_result3 = 1
		pairs_result3 = "Emitting EventIngest "
		print(pairs_result3..arg2..", context "..arg1.." with args: "..string.sub(var22, pairs_result3, -3))
	end
	any_new_result1_upvr:sendEventDeferred(arg1, arg2, tbl)
end