-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:58
-- Luau version 6, Types version 3
-- Time taken: 0.001412 seconds

local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local var2_upvw = false
local isInSelectInSceneReportMenuOverrideList_upvr = require(AbuseReportMenu.Utility.isInSelectInSceneReportMenuOverrideList)
task.defer(function() -- Line 8
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: isInSelectInSceneReportMenuOverrideList_upvr (readonly)
	]]
	var2_upvw = isInSelectInSceneReportMenuOverrideList_upvr()
end)
local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
return function(arg1) -- Line 12
	--[[ Upvalues[3]:
		[1]: ExperienceStateCaptureService_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: var2_upvw (read and write)
	]]
	if not game:GetEngineFeature("SafetyServiceCaptureModeReportProp") then
		return false
	end
	if not game:GetEngineFeature("CaptureModeEnabled") then
		return false
	end
	if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") then
		if not ExperienceStateCaptureService_upvr:CanEnterCaptureMode() then
			arg1({
				type = Constants_upvr.AnalyticsActions.SetMemoryRequirementMet;
				memoryRequirementMet = 0;
			})
			return false
		end
		arg1({
			type = Constants_upvr.AnalyticsActions.SetMemoryRequirementMet;
			memoryRequirementMet = 1;
		})
	end
	if not game:GetEngineFeature("ExperienceStateCaptureHiddenSelection") then
		return false
	end
	if var2_upvw then
		return true
	end
	return true
end