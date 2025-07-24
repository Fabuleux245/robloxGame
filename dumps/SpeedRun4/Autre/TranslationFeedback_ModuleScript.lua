-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:54
-- Luau version 6, Types version 3
-- Time taken: 0.002766 seconds

local RunService_upvr = game:GetService("RunService")
local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
local SafetyService_upvr = game:GetService("SafetyService")
local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local AvailabilitySignal_upvr = SettingsService.AvailabilitySignal
local any_IsEnabled_result1_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TenFootInterface):IsEnabled()
local function _() -- Line 24, Named "TranslationFeedbackValue"
	--[[ Upvalues[3]:
		[1]: ValueChangedSignal_upvr (readonly)
		[2]: ExperienceStateCaptureService_upvr (readonly)
		[3]: SafetyService_upvr (readonly)
	]]
	local any_new_result1_2 = ValueChangedSignal_upvr.new()
	any_new_result1_2:connect(function() -- Line 27
		--[[ Upvalues[2]:
			[1]: ExperienceStateCaptureService_upvr (copied, readonly)
			[2]: SafetyService_upvr (copied, readonly)
		]]
		if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") and not ExperienceStateCaptureService_upvr:CanEnterCaptureMode() then
		else
			local SettingsHub = require(script.Parent.Parent.Parent.SettingsHub)
			if SettingsHub then
				SettingsHub:SetVisibility(false)
			end
			if game:GetEngineFeature("SafetyServiceCaptureModeReportProp") then
				SafetyService_upvr.IsCaptureModeForReport = false
			end
			if game:GetEngineFeature("CaptureModeEnabled") then
				ExperienceStateCaptureService_upvr:ToggleCaptureMode()
			end
		end
	end)
	return any_new_result1_2
end
local function _() -- Line 53, Named "TranslationFeedbackAvailability"
	--[[ Upvalues[3]:
		[1]: AvailabilitySignal_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: any_IsEnabled_result1_upvr (readonly)
	]]
	local any_new_result1 = AvailabilitySignal_upvr.new(true)
	if RunService_upvr:IsStudio() or game:GetEngineFeature("CaptureModeEnabled") == false or any_IsEnabled_result1_upvr then
		any_new_result1:set(false)
	end
	return any_new_result1
end
local any_new_result1_4 = ValueChangedSignal_upvr.new()
any_new_result1_4:connect(function() -- Line 27
	--[[ Upvalues[2]:
		[1]: ExperienceStateCaptureService_upvr (readonly)
		[2]: SafetyService_upvr (readonly)
	]]
	if game:GetEngineFeature("ExperienceStateCaptureMinMemEnabled") and not ExperienceStateCaptureService_upvr:CanEnterCaptureMode() then
	else
		local SettingsHub_2 = require(script.Parent.Parent.Parent.SettingsHub)
		if SettingsHub_2 then
			SettingsHub_2:SetVisibility(false)
		end
		if game:GetEngineFeature("SafetyServiceCaptureModeReportProp") then
			SafetyService_upvr.IsCaptureModeForReport = false
		end
		if game:GetEngineFeature("CaptureModeEnabled") then
			ExperienceStateCaptureService_upvr:ToggleCaptureMode()
		end
	end
end)
local any_new_result1_3 = AvailabilitySignal_upvr.new(true)
if RunService_upvr:IsStudio() or game:GetEngineFeature("CaptureModeEnabled") == false or any_IsEnabled_result1_upvr then
	any_new_result1_3:set(false)
end
return {
	field_type = SettingsService.FieldType.TextButton;
	id = "translation-feedback";
	onActivated = any_new_result1_4;
	label = "CoreScripts.InGameMenu.GameSettings.GiveTranslationFeedback";
	text = "CoreScripts.InGameMenu.GameSettings.GiveFeedback";
	layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.FeedbackModeButton;
	alreadyLocalized = false;
	availability = any_new_result1_3;
}