-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:19
-- Luau version 6, Types version 3
-- Time taken: 0.000906 seconds

local AbuseVector_upvr = require(script:FindFirstAncestor("GenericAbuseReporting").Enums.AbuseVector)
return function(arg1) -- Line 18
	--[[ Upvalues[1]:
		[1]: AbuseVector_upvr (readonly)
	]]
	local module = {}
	if arg1.abuseVector == AbuseVector_upvr.Looks then
		local targetId = arg1.targetId
		module.REPORT_TARGET_LOOK_ID = targetId.lookId
		module.REPORT_TARGET_LOOK_INCLUDED_ASSET_IDS = targetId.lookAssetsIds
	elseif arg1.abuseVector == AbuseVector_upvr.UgcBundle then
		module.UGC_BUNDLE_ID = arg1.targetId
	elseif arg1.abuseVector == AbuseVector_upvr.ContentPostScreenshot then
		module.CONTENT_POST_ID = arg1.targetId
	elseif arg1.abuseVector == AbuseVector_upvr.UserProfile then
		module.REPORT_TARGET_USER_ID = arg1.targetId
	elseif arg1.abuseVector == AbuseVector_upvr.Accessory then
		module.REPORT_TARGET_ASSET_ID = arg1.targetId
	elseif arg1.abuseVector == AbuseVector_upvr.Place then
		module.REPORT_TARGET_ASSET_ID = arg1.targetId
	elseif arg1.abuseVector == AbuseVector_upvr.Group then
		module.REPORT_TARGET_GROUP_ID = arg1.targetId
	end
	module.ENTRY_POINT = "in-app"
	module.SUBMITTER_USER_ID = arg1.submitterId
	module.REPORTED_ABUSE_CATEGORY = arg1.abuseCategory
	module.REPORTER_COMMENT = arg1.comment or ""
	module.REPORTED_ABUSE_VECTOR = arg1.abuseVector
	return module
end