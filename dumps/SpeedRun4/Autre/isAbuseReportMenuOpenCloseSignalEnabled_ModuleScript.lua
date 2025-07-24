-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:31
-- Luau version 6, Types version 3
-- Time taken: 0.000316 seconds

game:DefineFastFlag("AbuseReportMenuOpenCloseSignal", false)
return function() -- Line 3
	if not game:GetEngineFeature("AbuseReportMenuOpenCloseSignal") then
		return false
	end
	return game:GetFastFlag("AbuseReportMenuOpenCloseSignal")
end