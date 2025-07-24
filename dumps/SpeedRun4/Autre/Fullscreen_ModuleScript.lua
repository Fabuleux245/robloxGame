-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:51
-- Luau version 6, Types version 3
-- Time taken: 0.001391 seconds

local Settings = script:FindFirstAncestor("Settings")
local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local Utils_upvr = require(Settings.Integrations.Utils)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local GameSettings_upvr = UserSettings().GameSettings
local GuiService_upvr = game:GetService("GuiService")
local function _() -- Line 45, Named "initAvailability"
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	local var10 = true
	if Utils_upvr.getDeviceType() ~= Utils_upvr.DeviceTypes.Desktop then
		if Utils_upvr.getDeviceType() ~= Utils_upvr.DeviceTypes.Unknown then
			var10 = false
		else
			var10 = true
		end
	end
	return var10
end
local var11 = true
if Utils_upvr.getDeviceType() ~= Utils_upvr.DeviceTypes.Desktop then
	if Utils_upvr.getDeviceType() ~= Utils_upvr.DeviceTypes.Unknown then
		var11 = false
	else
		var11 = true
	end
end
return {
	id = "fullscreen";
	field_type = SettingsService.FieldType.Toggle;
	label = "CoreScripts.InGameMenu.GameSettings.FullScreen";
	layoutOrder = require(Settings.Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.FullScreenFrame;
	onChanged = (function() -- Line 24, Named "FullScreenValue"
		--[[ Upvalues[3]:
			[1]: ValueChangedSignal_upvr (readonly)
			[2]: GameSettings_upvr (readonly)
			[3]: GuiService_upvr (readonly)
		]]
		local any_new_result1_upvr = ValueChangedSignal_upvr.new(GameSettings_upvr:InFullScreen())
		any_new_result1_upvr:connect(function(arg1) -- Line 27
			--[[ Upvalues[2]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			if arg1 == GameSettings_upvr:InFullScreen() then
			else
				GuiService_upvr:ToggleFullscreen()
			end
		end, true)
		GameSettings_upvr.FullscreenChanged:Connect(function(arg1) -- Line 35
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:set(arg1)
		end)
		return any_new_result1_upvr
	end)();
	alreadyLocalized = false;
	availability = SettingsService.AvailabilitySignal.new(var11);
}