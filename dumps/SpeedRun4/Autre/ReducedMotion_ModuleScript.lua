-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:52
-- Luau version 6, Types version 3
-- Time taken: 0.000849 seconds

local GameSettings_upvr = UserSettings().GameSettings
local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
local function _() -- Line 21, Named "ReducedMotionValue"
	--[[ Upvalues[2]:
		[1]: GameSettings_upvr (readonly)
		[2]: ValueChangedSignal_upvr (readonly)
	]]
	local any_new_result1 = ValueChangedSignal_upvr.new(GameSettings_upvr.ReducedMotion)
	any_new_result1:connect(function(arg1) -- Line 25
		--[[ Upvalues[1]:
			[1]: GameSettings_upvr (copied, readonly)
		]]
		if GameSettings_upvr.ReducedMotion == arg1 then
		else
			GameSettings_upvr.ReducedMotion = arg1
		end
	end)
	return any_new_result1
end
local module = {
	id = "reduced-motion";
	field_type = SettingsService.FieldType.Toggle;
	label = "CoreScripts.InGameMenu.GameSettings.ReduceMotionLabel";
	description = "CoreScripts.InGameMenu.GameSettings.ReduceMotionDescription";
	alreadyLocalized = false;
}
local any_new_result1_2 = ValueChangedSignal_upvr.new(GameSettings_upvr.ReducedMotion)
any_new_result1_2:connect(function(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: GameSettings_upvr (readonly)
	]]
	if GameSettings_upvr.ReducedMotion == arg1 then
	else
		GameSettings_upvr.ReducedMotion = arg1
	end
end)
module.onChanged = any_new_result1_2
module.layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.ReducedMotionFrame
return module