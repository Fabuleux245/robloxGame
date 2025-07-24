-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:54
-- Luau version 6, Types version 3
-- Time taken: 0.001239 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local GameSettings_upvr = UserSettings().GameSettings
local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local AvailabilitySignal_upvr = SettingsService.AvailabilitySignal
local function _() -- Line 23, Named "UINavValue"
	--[[ Upvalues[2]:
		[1]: ValueChangedSignal_upvr (readonly)
		[2]: GameSettings_upvr (readonly)
	]]
	local any_new_result1_3 = ValueChangedSignal_upvr.new(GameSettings_upvr.UiNavigationKeyBindEnabled)
	any_new_result1_3:connect(function(arg1) -- Line 26
		--[[ Upvalues[1]:
			[1]: GameSettings_upvr (copied, readonly)
		]]
		if GameSettings_upvr.UiNavigationKeyBindEnabled == arg1 then
		else
			GameSettings_upvr.UiNavigationKeyBindEnabled = arg1
		end
	end)
	return any_new_result1_3
end
local function _() -- Line 39, Named "UINavAvailability"
	--[[ Upvalues[2]:
		[1]: AvailabilitySignal_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local any_new_result1_2_upvr = AvailabilitySignal_upvr.new(UserInputService_upvr.KeyboardEnabled)
	UserInputService_upvr:GetPropertyChangedSignal("KeyboardEnabled"):Connect(function() -- Line 42
		--[[ Upvalues[2]:
			[1]: any_new_result1_2_upvr (readonly)
			[2]: UserInputService_upvr (copied, readonly)
		]]
		any_new_result1_2_upvr:set(UserInputService_upvr.KeyboardEnabled)
	end)
	return any_new_result1_2_upvr
end
local module = {
	id = "ui-nav-toggle";
	field_type = SettingsService.FieldType.Toggle;
	label = "CoreScripts.InGameMenu.GameSettings.UINavToggle";
	description = "CoreScripts.InGameMenu.GameSettings.UINavToggleDescription";
	alreadyLocalized = false;
}
local any_new_result1 = ValueChangedSignal_upvr.new(GameSettings_upvr.UiNavigationKeyBindEnabled)
any_new_result1:connect(function(arg1) -- Line 26
	--[[ Upvalues[1]:
		[1]: GameSettings_upvr (readonly)
	]]
	if GameSettings_upvr.UiNavigationKeyBindEnabled == arg1 then
	else
		GameSettings_upvr.UiNavigationKeyBindEnabled = arg1
	end
end)
module.onChanged = any_new_result1
local any_new_result1_4_upvr = AvailabilitySignal_upvr.new(UserInputService_upvr.KeyboardEnabled)
UserInputService_upvr:GetPropertyChangedSignal("KeyboardEnabled"):Connect(function() -- Line 42
	--[[ Upvalues[2]:
		[1]: any_new_result1_4_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	any_new_result1_4_upvr:set(UserInputService_upvr.KeyboardEnabled)
end)
module.availability = any_new_result1_4_upvr
module.layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.UiNavigationKeyBindEnabledFrame
return module