-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:49
-- Luau version 6, Types version 3
-- Time taken: 0.001441 seconds

local IXPServiceWrapper = require(game:GetService("CorePackages").Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local Players = game:GetService("Players")
local module = {
	enabled = true;
	inSortingExperiment = false;
	inEntryExperiment = false;
}
local var4
if game:DefineFastFlag("EnableReportAbuseMenuLayerOnV3", false) then
	var4 = "ReportAbuseMenuLayerOnV3Layer"
	local game_DefineFastString_result1 = game:DefineFastString(var4, "Social.VoiceAbuseReport.ReportAbuseMenu.V1")
	var4 = 0
	local var6
	while not Players.LocalPlayer do
		var6 = Players:GetPropertyChangedSignal("LocalPlayer"):Wait
		var6()
		local LocalPlayer = Players.LocalPlayer
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var6 = LocalPlayer.UserId
			return var6
		end
		if not LocalPlayer or not INLINED() then
			var6 = 0
		end
		var4 = var6
	end
	IXPServiceWrapper:InitializeAsync(var4, game_DefineFastString_result1)
	local any_GetLayerData_result1 = IXPServiceWrapper:GetLayerData(game_DefineFastString_result1)
	if any_GetLayerData_result1 then
		module.inSortingExperiment = any_GetLayerData_result1.VoiceAbuseReportProximitySort
		module.inEntryExperiment = any_GetLayerData_result1.VoiceAbuseReportSmartEntry
		module.enabled = not any_GetLayerData_result1.VoiceAbuseReportDisabled
		return module
	end
	module.enabled = false
end
return module