-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:47
-- Luau version 6, Types version 3
-- Time taken: 0.001813 seconds

local DsaIllegalContentReporting = script:FindFirstAncestor("DsaIllegalContentReporting")
local GetFFlagDSAIllegalContentReporting_upvr = require(DsaIllegalContentReporting.Parent.SharedFlags).GetFFlagDSAIllegalContentReporting
local var3_upvw = false
if GetFFlagDSAIllegalContentReporting_upvr() then
	local Players_upvr = game:GetService("Players")
	local LocalizationService_upvr = game:GetService("LocalizationService")
	local Constants_upvr = require(DsaIllegalContentReporting.Utility.Constants)
	task.spawn(function() -- Line 18
		--[[ Upvalues[4]:
			[1]: Players_upvr (readonly)
			[2]: LocalizationService_upvr (readonly)
			[3]: Constants_upvr (readonly)
			[4]: var3_upvw (read and write)
		]]
		local var12
		while not var12 do
			Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
			var12 = Players_upvr.LocalPlayer
		end
		local pcall_result1, pcall_result2 = pcall(LocalizationService_upvr.GetCountryRegionForPlayerAsync, LocalizationService_upvr, var12)
		if not pcall_result1 then
		else
			for _, v in ipairs(Constants_upvr.ELIGIBLE_COUNTRY_REGION_CODES) do
				if pcall_result2 == v then
					var3_upvw = true
					return
				end
			end
		end
	end)
end
local isInDSAFeaturesOverrideList_upvr = require(DsaIllegalContentReporting.Utility.isInDSAFeaturesOverrideList)
function isShowEUDSAIllegalContentReportingLink() -- Line 41
	--[[ Upvalues[3]:
		[1]: isInDSAFeaturesOverrideList_upvr (readonly)
		[2]: GetFFlagDSAIllegalContentReporting_upvr (readonly)
		[3]: var3_upvw (read and write)
	]]
	if isInDSAFeaturesOverrideList_upvr() then
		return true
	end
	local GetFFlagDSAIllegalContentReporting_upvr_result1 = GetFFlagDSAIllegalContentReporting_upvr()
	if GetFFlagDSAIllegalContentReporting_upvr_result1 then
		GetFFlagDSAIllegalContentReporting_upvr_result1 = var3_upvw
	end
	return GetFFlagDSAIllegalContentReporting_upvr_result1
end
return isShowEUDSAIllegalContentReportingLink