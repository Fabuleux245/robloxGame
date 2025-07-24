-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:10
-- Luau version 6, Types version 3
-- Time taken: 0.000361 seconds

local ReportToDiagByCountryCode_upvr = require(script:FindFirstAncestor("AppChat").Parent.Analytics).ReportToDiagByCountryCode
local var3_upvr = tonumber(settings():GetFVariable("PercentReportingByCountryCode")) or 0
return function(arg1, arg2, arg3) -- Line 8
	--[[ Upvalues[2]:
		[1]: ReportToDiagByCountryCode_upvr (readonly)
		[2]: var3_upvr (readonly)
	]]
	ReportToDiagByCountryCode_upvr(arg1, arg2, arg3 * 1000, var3_upvr)
end