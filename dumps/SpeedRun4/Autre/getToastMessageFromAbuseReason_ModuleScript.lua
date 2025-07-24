-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:37
-- Luau version 6, Types version 3
-- Time taken: 0.001101 seconds

local Constants_upvr = require(script:FindFirstAncestor("AbuseReportMenu").Components.Constants)
local ReportSuccessToast_upvr = Constants_upvr.ReportSuccessToast
local PlayerAbuseTypes_upvr = Constants_upvr.PlayerAbuseTypes
return function(arg1, arg2) -- Line 6, Named "getToastMessageFromAbuseReason"
	--[[ Upvalues[3]:
		[1]: ReportSuccessToast_upvr (readonly)
		[2]: PlayerAbuseTypes_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local var4
	if arg1 == PlayerAbuseTypes_upvr.Cheating then
		var4 = ReportSuccessToast_upvr.Cheating
		-- KONSTANTWARNING: GOTO [34] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 22 start (CF ANALYSIS FAILED)
	if arg1 == PlayerAbuseTypes_upvr.Username then
		var4 = ReportSuccessToast_upvr.BadUserName
	elseif arg1 == PlayerAbuseTypes_upvr.Links or arg1 == Constants_upvr.InappropriateContentAbuseReason then
		var4 = ReportSuccessToast_upvr.Place
	end
	if arg2 then
		var4 = ReportSuccessToast_upvr.ReportAnythingGeneric
	end
	do
		return var4
	end
	-- KONSTANTERROR: [12] 9. Error Block 22 end (CF ANALYSIS FAILED)
end