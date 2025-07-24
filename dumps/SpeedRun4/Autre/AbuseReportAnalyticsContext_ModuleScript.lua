-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:10
-- Luau version 6, Types version 3
-- Time taken: 0.000339 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
return require(GenericAbuseReporting.Parent.React).createContext({
	abuseVector = require(GenericAbuseReporting.Enums.AbuseVector).Invalid;
	isReportSubmitted = false;
	setIsReportSubmitted = function(arg1) -- Line 11, Named "setIsReportSubmitted"
	end;
})