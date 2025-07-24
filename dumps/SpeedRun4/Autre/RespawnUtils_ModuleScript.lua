-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:48
-- Luau version 6, Types version 3
-- Time taken: 0.001920 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local RobloxGui_upvr = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local var3_upvw = false
local any_new_result1_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Signal.new()
task.defer(function() -- Line 21
	--[[ Upvalues[3]:
		[1]: RobloxGui_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: any_new_result1_upvr (readonly)
	]]
	local SettingsHub_upvr_2 = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	SettingsHub_upvr_2.CurrentPageSignal:connect(function(arg1) -- Line 23
		--[[ Upvalues[3]:
			[1]: var3_upvw (copied, read and write)
			[2]: SettingsHub_upvr_2 (readonly)
			[3]: any_new_result1_upvr (copied, readonly)
		]]
		local var9
		if arg1 ~= SettingsHub_upvr_2.Instance.ResetCharacterPage.Page.Name then
			var9 = false
		else
			var9 = true
		end
		var3_upvw = var9
		var9 = any_new_result1_upvr:fire
		var9()
	end)
end)
local FFlagRespawnChromeShortcutTelemetry_upvr = require(Chrome.Flags.FFlagRespawnChromeShortcutTelemetry)
return {
	respawnPageOpenSignal = require(Chrome.ChromeShared.Service.ChromeUtils).MappedSignal.new(any_new_result1_upvr, function() -- Line 17
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		return var3_upvw
	end);
	respawnPage = function(arg1) -- Line 33, Named "respawnPage"
		--[[ Upvalues[3]:
			[1]: RobloxGui_upvr (readonly)
			[2]: var3_upvw (read and write)
			[3]: FFlagRespawnChromeShortcutTelemetry_upvr (readonly)
		]]
		local SettingsHub_upvr = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
		local ResetCharacterPage_upvr = SettingsHub_upvr.Instance.ResetCharacterPage
		local function _() -- Line 36, Named "switchToRespawnPage"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: SettingsHub_upvr (readonly)
				[3]: ResetCharacterPage_upvr (readonly)
			]]
			local tbl = {}
			local var14
			if arg1 then
				var14 = arg1.usedShortcut
			else
				var14 = nil
			end
			tbl.used_shortcut = var14
			var14 = SettingsHub_upvr.Instance:SwitchToPage
			var14(ResetCharacterPage_upvr, true, nil, nil, nil, tbl)
		end
		if SettingsHub_upvr:GetVisibility() then
			if var3_upvw then
				SettingsHub_upvr:SetVisibility(false)
			else
				local var15
				if FFlagRespawnChromeShortcutTelemetry_upvr then
					local tbl_2 = {}
					if arg1 then
						var15 = arg1.usedShortcut
					else
						var15 = nil
					end
					tbl_2.used_shortcut = var15
					var15 = SettingsHub_upvr.Instance:SwitchToPage
					var15(ResetCharacterPage_upvr, true, nil, nil, nil, tbl_2)
					return
				end
				SettingsHub_upvr.Instance:SwitchToPage(ResetCharacterPage_upvr, true)
			end
		end
		local var17
		if FFlagRespawnChromeShortcutTelemetry_upvr then
			SettingsHub_upvr:SetVisibility(true)
			local tbl_3 = {}
			if arg1 then
				var17 = arg1.usedShortcut
			else
				var17 = nil
			end
			tbl_3.used_shortcut = var17
			var17 = SettingsHub_upvr.Instance:SwitchToPage
			var17(ResetCharacterPage_upvr, true, nil, nil, nil, tbl_3)
		else
			SettingsHub_upvr:SetVisibility(true, false, ResetCharacterPage_upvr)
		end
	end;
}