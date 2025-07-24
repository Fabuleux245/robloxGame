-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:52
-- Luau version 6, Types version 3
-- Time taken: 0.000850 seconds

local CorePackages = game:GetService("CorePackages")
local SettingsService = require(CorePackages.Workspace.Packages.SettingsService)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local GameSettings_upvr = UserSettings().GameSettings
return {
	id = "perf-stats";
	field_type = SettingsService.FieldType.Toggle;
	alreadyLocalized = false;
	label = "CoreScripts.InGameMenu.GameSettings.ShowPerfStats";
	onChanged = (function() -- Line 23, Named "PerfStatsValue"
		--[[ Upvalues[2]:
			[1]: ValueChangedSignal_upvr (readonly)
			[2]: GameSettings_upvr (readonly)
		]]
		local any_new_result1_upvr = ValueChangedSignal_upvr.new(GameSettings_upvr.PerformanceStatsVisible)
		any_new_result1_upvr:connect(function(arg1) -- Line 26
			--[[ Upvalues[1]:
				[1]: GameSettings_upvr (copied, readonly)
			]]
			if GameSettings_upvr.PerformanceStatsVisible == arg1 then
			else
				GameSettings_upvr.PerformanceStatsVisible = arg1
			end
		end)
		GameSettings_upvr.PerformanceStatsVisibleChanged:Connect(function() -- Line 36
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (readonly)
				[2]: GameSettings_upvr (copied, readonly)
			]]
			any_new_result1_upvr:set(GameSettings_upvr.PerformanceStatsVisible)
		end)
		return any_new_result1_upvr
	end)();
	availability = SettingsService.AvailabilitySignal.new(not require(CorePackages.Workspace.Packages.CachedPolicyService):IsSubjectToChinaPolicies());
	layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.PerformanceStatsFrame;
}