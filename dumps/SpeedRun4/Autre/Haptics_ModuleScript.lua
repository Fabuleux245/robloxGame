-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:51
-- Luau version 6, Types version 3
-- Time taken: 0.002085 seconds

local SettingsService = require(game:GetService("CorePackages").Workspace.Packages.SettingsService)
local tbl_upvr_2 = {
	ON = true;
	OFF = false;
}
local tbl_upvr = {
	MAX = 1;
	MIN = 0;
}
local GameSettings_upvr = UserSettings().GameSettings
local ValueChangedSignal_upvr = SettingsService.ValueChangedSignal
return {
	id = "haptics";
	field_type = SettingsService.FieldType.Toggle;
	label = "CoreScripts.InGameMenu.GameSettings.Haptics";
	layoutOrder = require(script:FindFirstAncestor("Settings").Integrations.Constants).GAMESETTINGS.LAYOUT_ORDER.HapticsFrame;
	onChanged = (function() -- Line 29, Named "HapticValue"
		--[[ Upvalues[4]:
			[1]: GameSettings_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: ValueChangedSignal_upvr (readonly)
		]]
		local function _() -- Line 30
			--[[ Upvalues[3]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: tbl_upvr_2 (copied, readonly)
			]]
			if GameSettings_upvr.HapticStrength == tbl_upvr.MIN then
				return tbl_upvr_2.OFF
			end
			return tbl_upvr_2.ON
		end
		local var7 = ValueChangedSignal_upvr
		if GameSettings_upvr.HapticStrength == tbl_upvr.MIN then
			var7 = tbl_upvr_2.OFF
		else
			var7 = tbl_upvr_2.ON
		end
		local any_new_result1 = var7.new(var7)
		any_new_result1:connect(function(arg1) -- Line 35
			--[[ Upvalues[3]:
				[1]: GameSettings_upvr (copied, readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: tbl_upvr_2 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var10
			if GameSettings_upvr.HapticStrength == tbl_upvr.MIN then
				var10 = tbl_upvr_2.OFF
			else
				var10 = tbl_upvr_2.ON
			end
			if var10 == arg1 then
			else
				if arg1 == tbl_upvr_2.ON then
				else
				end
				GameSettings_upvr.HapticStrength = tbl_upvr.MIN
			end
		end)
		return any_new_result1
	end)();
	alreadyLocalized = false;
}